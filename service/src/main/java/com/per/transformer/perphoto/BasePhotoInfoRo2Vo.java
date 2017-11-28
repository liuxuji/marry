package com.per.transformer.perphoto;

import com.google.common.base.Function;
import com.per.dao.ro.perphoto.BasePhotoInfoRo;
import com.per.vo.perphoto.BasePhotoInfoVo;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-27  11:35
 */
public class BasePhotoInfoRo2Vo implements Function<BasePhotoInfoRo,BasePhotoInfoVo> {

    @Override
    public BasePhotoInfoVo apply(BasePhotoInfoRo ro) {
        if(ro == null){
            return null;
        }
        BasePhotoInfoVo vo = new BasePhotoInfoVo();
        vo.setId(ro.getId());
        vo.setBadNums(ro.getBadNums());
        vo.setCategroy(ro.getCategroy());
        vo.setCommendNums(ro.getCommendNums());
        vo.setCreateTimestamp(ro.getCreateTimestamp());
        vo.setDescs(ro.getDesc());
        vo.setPhotoId(ro.getPerPhotoRoId());
        vo.setPhotoPath(ro.getPhotoPath());
        vo.setSize(ro.getSize());
        return vo;
    }
}
