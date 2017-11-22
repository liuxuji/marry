package com.per.service.perphoto;

import com.per.table.BootstrapTablePageResult;
import com.per.vo.page.PageVo;
import com.per.vo.perphoto.BasePhotoInfoVo;
import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:00
 */
public interface PerPhotoService {
    /** 保存请柬信息方法*/
    void save(PerPhotoVo vo);
    /** 删除请柬数据*/
    void delPhotoData(PhotoDataReqVo vo);
    /** 查找所有请柬列表*/
    BootstrapTablePageResult findAllPhoto(PageVo vo);
    /** 通过id查找请柬元素*/
    PerPhotoVo findPhotoDataById(PhotoDataReqVo vo);


    /** 保存图片数据*/
    void save(BasePhotoInfoVo vo);
    /** 删除图片数据*/
    void delPhoto(PhotoDataReqVo vo);


}
