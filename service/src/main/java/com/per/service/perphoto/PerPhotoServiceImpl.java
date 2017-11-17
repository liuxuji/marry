package com.per.service.perphoto;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.per.dao.po.perphoto.PerPhoto;
import com.per.service.AbstractBaseService;
import com.per.transformer.perphoto.PerPhotoVo2PerPhoto;
import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.per.dao.respository.po.perphoto.*;
import com.per.dao.respository.redis.perphoto.*;
/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:01
 */
@Service
public class PerPhotoServiceImpl extends AbstractBaseService implements PerPhotoService {
    @Autowired
    private BasePhotoInfoRepository basePhotoInfoRepository;
    @Autowired
    private PerCommentRepository perCommentRepository;
    @Autowired
    private PerPhotoRepository perPhotoRepository;
    @Autowired
    private BasePhotoInfoRoRedisDao basePhotoInfoRoRedisDao;
    @Autowired
    private PerPhotoRoRedisDao perPhotoRoRedisDao;
    @Autowired
    private PerCommendRoRedisDao perCommendRoRedisDao;

    @Override
    public void save(PerPhotoVo vo) {
        if(vo == null){
            return;
        }
        PerPhoto photo = new PerPhotoVo2PerPhoto().apply(vo);
        if(CollectionUtils.isNotEmpty(vo.getPhotoInfos())){

        }


    }

    @Override
    public void delete(PhotoDataReqVo vo) {

    }

    @Override
    public void findAll(PhotoDataReqVo vo) {

    }

    @Override
    public void findById(PhotoDataReqVo vo) {

    }
}
