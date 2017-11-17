package com.per.oss;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.PutObjectRequest;
import com.aliyun.oss.model.PutObjectResult;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  10:38
 */
public class OssUtil {

    /**
     * put上传object
     *
     * @param client
     *            OSS客户端
     * @param putObjectRequest
     *            put上传请求对象
     * @throws Exception
     *             异常
     */
    public static void putObject(OSSClient client, PutObjectRequest putObjectRequest)
            throws Exception {
        try {
            PutObjectResult putObjectResult = client.putObject(putObjectRequest);
            /** 如果设置了回调函数 */
            if (putObjectRequest.getCallback() != null) {
                /** 读取上传回调返回的消息内容*/
                byte[] buffer = new byte[1024];
                putObjectResult.getCallbackResponseBody().read(buffer);
                /** 一定要close，否则会造成连接资源泄漏*/
                putObjectResult.getCallbackResponseBody().close();
            }
        } catch (Exception e){
            e.printStackTrace();
            throw e;
        }
    }

    /**
     * 获取资源路径
     *
     * @param bucketName
     *            bucket名称
     * @param endPoint
     *            资源终端地址
     * @param key
     *            资源名称
     */
    public static String getOssResourceUri(String bucketName, String endPoint, String key) {
        return String.format("https://%s.%s/%s", bucketName, endPoint, key);
    }

    public static String getOssImgUrl(String bucketName, String endPoint, String key) {
        if (StringUtils.isNotEmpty(key)) {
            return String.format("https://%s.%s/%s", bucketName, endPoint, key);
        }
        return null;
    }

    /**
     * 获取资源路径前缀
     *
     * 例如https://www.1919.cn.images/
     *
     * @param bucketName
     *            bucket名称
     * @param endPoint
     *            资源终端地址
     * @return 返回资料路径前缀URL
     */
    public static String getPrefixOssResourceUri(String bucketName, String endPoint) {
        return String.format("https://%s.%s/", bucketName, endPoint);
    }

}
