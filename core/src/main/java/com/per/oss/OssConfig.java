package com.per.oss;

/**
 * Created this file:
 * oss参数定义类
 * @author xiaobo.xiong
 * @Date 2017-11-15  16:55
 */
public class OssConfig {
    /** bucket名称，阿里云后台配的*/
    private String bucketName;
    /** bucket key对应的密码*/
    private String accessSecret;
    /** bucket的 key*/
    private String accessKeyId;

    private String localEndpoint;

    private String remoteEndpoint;

    public OssConfig() {
    }

    public String getBucketName() {
        return bucketName;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public String getAccessSecret() {
        return accessSecret;
    }

    public void setAccessSecret(String accessSecret) {
        this.accessSecret = accessSecret;
    }

    public String getAccessKeyId() {
        return accessKeyId;
    }

    public void setAccessKeyId(String accessKeyId) {
        this.accessKeyId = accessKeyId;
    }

    public String getLocalEndpoint() {
        return localEndpoint;
    }

    public void setLocalEndpoint(String localEndpoint) {
        this.localEndpoint = localEndpoint;
    }

    public String getRemoteEndpoint() {
        return remoteEndpoint;
    }

    public void setRemoteEndpoint(String remoteEndpoint) {
        this.remoteEndpoint = remoteEndpoint;
    }
}
