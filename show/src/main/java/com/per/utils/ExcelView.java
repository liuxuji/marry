package com.per.utils;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-12  13:44
 */
public class ExcelView extends AbstractExcelView {

    private static final String USER_AGENT = "USER-AGENT";
    private static final String MSIE = "MSIE";
    public static final String UTF_8 = "UTF-8";
    public static final String GB2312 = "GB2312";
    public static final String IOS_8859_1 = "ISO-8859-1";
    private static final String jia_hao = "+";
    private static final String blank = " ";
    private static final String percent_20 = "%20";

    @Override
    protected void buildExcelDocument(Map<String, Object> map, HSSFWorkbook hssfWorkbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        String fileName = encodingFileName((map.get("filename").toString() + System.currentTimeMillis()).concat(".xls"),httpServletRequest);
        httpServletResponse.setContentType("application/vnd.ms-excel");
        httpServletResponse.setHeader("Content-disposition", "attachment;filename=" + fileName);
        OutputStream stream = httpServletResponse.getOutputStream();
        hssfWorkbook.write(stream);
        stream.flush();
        stream.close();
    }


    /**
     * 获取客户端浏览器和操作系统信息
     * 在IE浏览器中得到的是：User-Agent=Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Maxthon; Alexa Toolbar)
     * 在Firefox中得到的是：User-Agent=Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.7.10) Gecko/20050717 Firefox/1.0.6
     */
    private String encodingFileName(String fileName,HttpServletRequest request){
        String agent = request.getHeader(USER_AGENT);
        try{
            if(agent != null && -1 != agent.indexOf(MSIE)){
                String newFileName = URLEncoder.encode(fileName,UTF_8);
                newFileName = StringUtils.replace(newFileName,jia_hao,percent_20);
                if(newFileName.length() > 150){
                    newFileName = new String(fileName.getBytes(GB2312),IOS_8859_1);
                    newFileName = StringUtils.replace(newFileName,blank,percent_20);
                }
                return newFileName;
            }
            return fileName;
        }catch (Exception e){
            e.printStackTrace();
            return fileName;
        }
    }

}
