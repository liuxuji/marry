package com.per.controller.upload;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.PutObjectRequest;
import com.per.controller.BaseController;
import com.per.oss.OssConfig;
import com.per.oss.OssUtil;
import com.per.result.JSONResult;
import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-15  16:49
 */
@Controller
@RequestMapping("fileupload")
public class FileUploadController extends BaseController{

    @Autowired(required = false)
    private OssConfig ossConfig;
    @Autowired(required = false)
    @Qualifier("remoteOssClient")
    private OSSClient ossClient;

    /** 上传图片方法 */
    @RequestMapping("/upload")
    private JSONResult upload(MultipartFile file, HttpServletRequest request){
        if(file == null){
            return JSONResult.errorResult("文件不能为null");
        }
        if(file.getSize() > 10 * 1024 * 1024){
            return JSONResult.errorResult("文件不能大于10M");
        }
        String key = UUID.randomUUID().toString();
        PutObjectRequest putObjectRequest = null;
        try{
            putObjectRequest = new PutObjectRequest(ossConfig.getBucketName(),key,file.getInputStream());
        }catch (Exception e){
            e.printStackTrace();
            return JSONResult.errorResult("流转换失败");
        }
        try{
            OssUtil.putObject(ossClient,putObjectRequest);
            String url = OssUtil.getOssResourceUri(ossConfig.getBucketName(),ossConfig.getRemoteEndpoint(),key);
            return new JSONResult(url);
        }catch (Exception e){
            e.printStackTrace();
            return JSONResult.errorResult("上传失败");
        }
    }

}
