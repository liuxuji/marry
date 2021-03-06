package com.per.transformer.perphoto;

import com.google.common.base.Function;
import com.per.dao.ro.perphoto.PerPhotoRo;
import com.per.transformer.base.BaseTrans;
import com.per.vo.perphoto.PerPhotoVo;

import java.util.UUID;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  16:32
 */
public class PerPhotoVo2PerPhotoRo extends BaseTrans implements Function<PerPhotoVo,PerPhotoRo>  {
    @Override
    public PerPhotoRo apply(PerPhotoVo perPhotoVo) {
        PerPhotoRo photo = new PerPhotoRo();
        photo.setMusicPath(perPhotoVo.getMusicPath());
        photo.setInvotationNo(perPhotoVo.getInvotationNo() == null ? UUID.randomUUID().toString() : perPhotoVo.getInvotationNo());
        photo.setModelNo(perPhotoVo.getModelNo());
        photo.setType(perPhotoVo.getType());
        photo.setUserId(perPhotoVo.getUserId());
        photo.setCanComeNum(perPhotoVo.getCanComeNum());
        photo.setTitle(perPhotoVo.getTitle());
        photo.setContent(perPhotoVo.getContent());
        photo.setMainPhotoPath(perPhotoVo.getMainPhotoPath());
        photo.setTextArea(perPhotoVo.getTextArea());
        photo.setBeginTime(perPhotoVo.getBeginTime());
        photo.setEndTime(perPhotoVo.getEndTime());
        photo.setMarryTime(perPhotoVo.getMarryTime());
        photo.setMaleName(perPhotoVo.getMaleName());
        photo.setFemaleName(perPhotoVo.getFemaleName());
        photo.setMarryAddress(perPhotoVo.getMarryAddress());
//        photo.setPhotoPicPath(transListObjContainsIdToString(perPhotoVo.getPhotoInfos()));
        return photo;
    }
}
