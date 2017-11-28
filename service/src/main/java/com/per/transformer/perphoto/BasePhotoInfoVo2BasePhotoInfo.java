package com.per.transformer.perphoto;

import com.google.common.base.Function;
import com.per.dao.po.perphoto.BasePhotoInfo;
import com.per.dao.ro.perphoto.BasePhotoInfoRo;
import com.per.vo.perphoto.BasePhotoInfoVo;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  16:46
 */
public class BasePhotoInfoVo2BasePhotoInfo implements Function<BasePhotoInfoVo,BasePhotoInfoRo>{
    @Override
    public BasePhotoInfoRo apply(BasePhotoInfoVo vo) {
        BasePhotoInfoRo info = new BasePhotoInfoRo();
        info.setBadNums(vo.getBadNums());
        info.setPhotoPath(vo.getPhotoPath());
        info.setDesc(vo.getDescs());
        info.setSize(vo.getSize());
        info.setCategroy(vo.getCategroy());
        info.setCommendNums(vo.getCommendNums());
        return info;
    }
}
