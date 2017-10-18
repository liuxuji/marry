package com.per.utils;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.per.annotation.ExcelColumn;
import com.per.annotation.ExcelFieldName;
import com.per.annotation.ExcelSheetName;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.poi.hssf.usermodel.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created this file:
 *  导出excel文件的工具类
 *  导出的 类 类型，需要加上相应的注解，通过反射实现
 * @Author xiaobo.xiong
 * @Date 2017-10-12  10:05
 */
public class ExcelExportUtils {

    private static final String FORMAT = "yyyy-MM-dd HH:mm:ss";

    /**
     *
     * @param list      要导出的数据集合
     * @param request
     * @param response
     */
    public void excelExport(List<?> list, HttpServletRequest request, HttpServletResponse response){
        try{
            if(CollectionUtils.isNotEmpty(list)){
                Class<?> classVo = list.get(0).getClass();
                ExcelFieldName excelFieldName = classVo.getAnnotation(ExcelFieldName.class);
                HSSFWorkbook workbook = buildHssfWorkBook(list,classVo);
                String fieldName = String.format(excelFieldName.name()+"_%s", DateFormatUtils.format(new Date(),FORMAT));
                Map<String,Object> map = Maps.newHashMap();
                map.put("filename",fieldName);
                new ExcelView().buildExcelDocument(map,workbook,request,response);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    private HSSFWorkbook buildHssfWorkBook(List<?> list, Class<?> c){
        //创建excel文档对象
        HSSFWorkbook workbook = new HSSFWorkbook();
        ExcelSheetName sheetName = c.getAnnotation(ExcelSheetName.class);
        //创建新的excel表单
        HSSFSheet sheet = workbook.createSheet(sheetName.name());
        sheet.setDefaultColumnWidth(18);
        HSSFDataFormat dataFormat = workbook.createDataFormat();
        short format = dataFormat.getFormat(FORMAT);
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        cellStyle.setDataFormat(format);
        //在sheet里创建第一行
        HSSFRow row = sheet.createRow(0);
        //设置第一行的内容(标题),定义在vo上的 注解中，并返回注解的field
        List<Field> fieldList = buildField(row,c);
        List<HSSFCellStyle> cellStyleList = getCellStyle(fieldList,workbook);
        buildSheet(fieldList,cellStyleList,sheet,list,c);
        return workbook;
    }

    /**
     * 设置标题，通过反射获取field
     * @param row 行
     * @param c   导出的类
     * @return
     */
    private List<Field> buildField(HSSFRow row,Class<?> c){
        List<Field> fieldList = Lists.newArrayList();
        Field[] fields = c.getDeclaredFields();
        int cellCount = 0;
        if(fields != null && fields.length > 0){
            for(int num = 0; num < fields.length; num ++){
                ExcelColumn column = fields[num].getAnnotation(ExcelColumn.class);
                if(column != null){
                    fieldList.add(fields[num]);
                    row.createCell(cellCount).setCellValue(column.name());
                    cellCount ++;
                }
            }
        }
        return fieldList;
    }

    /**
     * 设置单元格数据类型,目前只对 java.sql.TimeStamp进行了特殊处理
     * @param list
     * @param workbook
     * @return
     */
    private List<HSSFCellStyle> getCellStyle(List<Field> list,HSSFWorkbook workbook){
        List<HSSFCellStyle> styles = Lists.newArrayList();
        if(CollectionUtils.isNotEmpty(list)){
            for(Field field : list){
                HSSFCellStyle cellStyle = workbook.createCellStyle();
                if(field.getType() == Timestamp.class){
                    HSSFDataFormat dataFormat = workbook.createDataFormat();
                    short ss = dataFormat.getFormat(FORMAT);
                    cellStyle.setDataFormat(ss);
                }
                styles.add(cellStyle);
            }
        }
        return styles;
    }

    private HSSFSheet buildSheet(List<Field> list,List<HSSFCellStyle> styles,
                                 HSSFSheet sheet,List<?> exportLists,Class<?> exportClass){
        try{
            if(CollectionUtils.isNotEmpty(list)){
                for(int i = 0; i < exportLists.size(); i ++){
                    HSSFRow rowAnother = sheet.createRow(i + 1);
                    for (int dataCellNum = 0; dataCellNum < list.size(); dataCellNum++) {
                        Field annotationField = list.get(dataCellNum);
                        String fieldName = annotationField.getName();
                        String methodName = fieldName.substring(0, 1).toUpperCase()+ fieldName.substring(1);
                        Method method = exportClass.getMethod("get" + methodName);
                        rowAnother.setRowStyle(styles.get(dataCellNum));
                        Object object = method.invoke(exportLists.get(i));
                        rowAnother.createCell(dataCellNum).setCellValue(object != null ? object.toString() : null);
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return sheet;
    }

}
