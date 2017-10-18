package com.per.excel.utils;

import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-11  16:25
 */
public class ExcelReadUtils {

    private int totalRows;          //行数
    private static int totalCells;  //每行单元格数

    /**
     *
     * @param readHead  是否读取excel第一行数据
     * @param file      上传的文件
     * @return
     */
    public List<ArrayList<String>> readExcel(boolean readHead,MultipartFile file){
        List<ArrayList<String>> lists = Lists.newArrayList();
        if(file == null || ExcelUtils.EMPTY.equals(file.getOriginalFilename())){
            return lists;
        }
        String excelPostFix = ExcelUtils.getPostfix(file.getOriginalFilename());
        if(StringUtils.isNotEmpty(excelPostFix)){
            switch (excelPostFix){
                case ExcelUtils.OFFICE_EXCEL_2003_POSTFIX:
                    lists = readExcel2003(readHead,file);
                    break;
                case ExcelUtils.OFFICE_EXCEL_2010_POSTFIX:
                    lists = readExcel2010(readHead, file);
                    break;
                default:break;
            }
        }
        return lists;
    }

    /**
     * 读取2003版本excel
     * @param readHead
     * @param file
     * @return
     */
    private List<ArrayList<String>> readExcel2010(boolean readHead , MultipartFile file){
        List<ArrayList<String>> lists = Lists.newArrayList();
        InputStream inputStream = null;
        XSSFWorkbook workbook;
        ArrayList<String> rowLists = null;
        try{
            inputStream = file.getInputStream();
            //创建文档
            workbook = new XSSFWorkbook(inputStream);
            //读取sheet页
            for(int sheetNum = 0; sheetNum < workbook.getNumberOfSheets(); sheetNum ++){
                XSSFSheet sheet = workbook.getSheetAt(sheetNum);
                if(sheet == null){
                    continue;
                }
                totalRows = sheet.getLastRowNum();
                //读取行,默认从第二行开始读取
                int rowNum = 1;
                if(readHead){
                    rowNum = 0;
                    totalCells = sheet.getRow(0).getLastCellNum();
                }
                for(; rowNum < totalRows ; rowNum ++){
                    XSSFRow row = sheet.getRow(rowNum);
                    if(row != null){
                        rowLists = new ArrayList<>();
                        if(!readHead){
                            totalCells = row.getLastCellNum();
                        }
                    }
                    //读取列,从第一列开始
                    for(int cellNum = 0; cellNum < totalCells; cellNum ++){
                        XSSFCell cell = row.getCell(cellNum);
                        if(cell == null){
                            rowLists.add(ExcelUtils.EMPTY);
                            continue;
                        }
                        rowLists.add(ExcelUtils.readExcel2010Cell(cell));
                    }
                    lists.add(rowLists);
                }
            }
            return lists;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            closeInputStream(inputStream);
        }
        return null;
    }

    private List<ArrayList<String>> readExcel2003(boolean readHead , MultipartFile file){
        InputStream inputStream = null;
        HSSFWorkbook workbook;
        List<ArrayList<String>> lists = Lists.newArrayList();
        ArrayList<String> rowLists = null;
        try{
            inputStream = file.getInputStream();
            workbook = new HSSFWorkbook(inputStream);
            for(int sheetNum = 0; sheetNum < workbook.getNumberOfSheets(); sheetNum ++){
                HSSFSheet sheet = workbook.getSheetAt(sheetNum);
                if(sheet == null){
                    continue;
                }
                totalRows = sheet.getLastRowNum();
                int rowNum = 1;
                if(readHead){
                    rowNum = 0;
                    totalCells = sheet.getRow(0).getLastCellNum();
                }
                for(;rowNum < totalRows ; rowNum ++){
                    HSSFRow row = sheet.getRow(rowNum);
                    if(row != null){
                        rowLists = new ArrayList<>();
                        if(!readHead){
                            totalCells = row.getLastCellNum();
                        }
                    }
                    //读取列,从第一列开始
                    for(int cellNum = 0; cellNum < totalCells; cellNum ++){
                        HSSFCell cell = row.getCell(cellNum);
                        if(cell == null){
                            rowLists.add(ExcelUtils.EMPTY);
                            continue;
                        }
                        rowLists.add(ExcelUtils.readExcel2003Cell(cell));
                    }
                    lists.add(rowLists);
                }
            }
            return lists;
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            closeInputStream(inputStream);
        }
        return null;
    }


    /**
     * 关闭流 所有流 都需要进行手动关闭
     * @param stream
     */
    private void closeInputStream(InputStream stream){
        try{
            if(stream != null){
                stream.close();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
