package com.per.service.perphoto;

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
    /** 删除数据*/
    void delete(PhotoDataReqVo vo);
    /** */
    void findAll(PhotoDataReqVo vo);
    /** */
    void findById(PhotoDataReqVo vo);
}
