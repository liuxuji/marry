package com.per.transformer.perphoto;

import com.google.common.base.Function;
import com.per.dao.po.perphoto.BasePhotoInfo;
import com.per.vo.perphoto.BasePhotoInfoVo;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  16:46
 */
public class BasePhotoInfoVo2BasePhotoInfo implements Function<BasePhotoInfoVo,BasePhotoInfo>{
    @Override
    public BasePhotoInfo apply(BasePhotoInfoVo vo) {
        BasePhotoInfo basePhotoInfo = new BasePhotoInfo();
        BasePhotoInfo info = new BasePhotoInfo();
        info.setBadNums(vo.getBadNums());


        return null;
    }
}
