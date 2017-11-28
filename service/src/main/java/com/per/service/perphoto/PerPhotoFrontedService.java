package com.per.service.perphoto;

import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-27  15:39
 */
public interface PerPhotoFrontedService {

    /** 根据用户id查找数据*/
    List<PerPhotoVo> getAllPhoto(PhotoDataReqVo vo);
    /** 根据id查找数据*/
    PerPhotoVo findPerPhotoById(PhotoDataReqVo vo);


}
