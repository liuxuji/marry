package com.per.transformer.perphoto;

import com.google.common.base.Function;
import com.per.dao.po.perphoto.PerPhoto;
import com.per.vo.perphoto.PerPhotoVo;

import java.util.UUID;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  16:32
 */
public class PerPhotoVo2PerPhoto implements Function<PerPhotoVo,PerPhoto> {
    @Override
    public PerPhoto apply(PerPhotoVo perPhotoVo) {
        PerPhoto photo = new PerPhoto();
        photo.setMusicPath(perPhotoVo.getMusicPath());
        photo.setInvotationNo(perPhotoVo.getInvotationNo() == null ? UUID.randomUUID().toString() : perPhotoVo.getInvotationNo());
        photo.setModelNo(perPhotoVo.getModelNo());
        photo.setType(perPhotoVo.getType());
        photo.setUserId(perPhotoVo.getUserId());
        photo.setCanComeNum(perPhotoVo.getCanComeNum());
        return photo;
    }
}
