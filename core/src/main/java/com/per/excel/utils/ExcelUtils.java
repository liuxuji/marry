package com.per.excel.utils;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/**
 * Created this file:
 * excel文件相关工具类
 * @Author xiaobo.xiong
 * @Date 2017-10-11  16:26
 */
public class ExcelUtils {

    public static final String OFFICE_EXCEL_2003_POSTFIX = "xls";
    public static final String OFFICE_EXCEL_2010_POSTFIX = "xlsx";
    public static final String EMPTY = "";
    public static final String POINT = ".";
    public static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
    public static DecimalFormat df = new DecimalFormat("#.##");
    private static final String TWO_ZERO = "00";

    /**
     * 获取给定文件路径 的 后缀名
     * @param path
     * @return
     */
    public static String getPostfix(String path){
        if(StringUtils.isEmpty(path)){
            return EMPTY;
        }
        if(path.contains(POINT)){
            return path.substring(path.lastIndexOf(POINT) + 1,path.length());
        }
        return EMPTY;
    }

    /**
     * 读取2010Excel版本单元格内内容
     * 上层调用时判空
     * @param cell
     * @return
     */
    public static String readExcel2010Cell(XSSFCell cell){
        int type = cell.getCellType();
        String result;
        switch (type){
            case Cell.CELL_TYPE_BOOLEAN:
                result = String.valueOf(cell.getBooleanCellValue());
                break;
            case Cell.CELL_TYPE_NUMERIC:
                result = df.format(cell.getNumericCellValue());
                String strArr = result.substring(result.lastIndexOf(POINT) + 1,result.length());
                if(TWO_ZERO.equals(strArr)){
                    result = result.substring(0,result.lastIndexOf(POINT));
                }
                break;
            default:
                result = String.valueOf(cell.getStringCellValue());
                break;
        }
        return result;
    }

    /**
     * 读取2003Excel版本单元格内容
     * @param cell
     * @return
     */
    public static String readExcel2003Cell(HSSFCell cell){
        int type = cell.getCellType();
        String result;
        switch (type){
            case Cell.CELL_TYPE_BOOLEAN:
                result = String.valueOf(cell.getBooleanCellValue());
                break;
            case Cell.CELL_TYPE_NUMERIC:
                if(HSSFDateUtil.isCellDateFormatted(cell)){
                    result = sdf.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
                }else{
                    result = df.format(cell.getNumericCellValue());
                    String strArr = result.substring(result.lastIndexOf(POINT) + 1,result.length());
                    if(TWO_ZERO.equals(strArr)){
                        result = result.substring(0,result.lastIndexOf(POINT));
                    }
                }
                break;
            default:
                result = String.valueOf(cell.getStringCellValue());
                break;
        }
        return result;
    }


}
