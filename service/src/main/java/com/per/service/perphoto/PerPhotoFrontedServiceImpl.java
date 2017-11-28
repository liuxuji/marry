package com.per.service.perphoto;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.google.common.collect.Lists;
import com.per.dao.respository.po.perphoto.BasePhotoInfoRepository;
import com.per.dao.respository.po.perphoto.PerCommentRepository;
import com.per.dao.respository.po.perphoto.PerPhotoRepository;
import com.per.dao.respository.redis.perphoto.BasePhotoInfoRoRedisDao;
import com.per.dao.respository.redis.perphoto.PerCommendRoRedisDao;
import com.per.dao.respository.redis.perphoto.PerPhotoRoRedisDao;
import com.per.dao.ro.perphoto.BasePhotoInfoRo;
import com.per.dao.ro.perphoto.PerPhotoRo;
import com.per.service.AbstractBaseService;
import com.per.vo.perphoto.BasePhotoInfoVo;
import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-28  14:12
 */
@Service
public class PerPhotoFrontedServiceImpl extends AbstractBaseService implements PerPhotoFrontedService{

    @Autowired
    private BasePhotoInfoRepository basePhotoInfoRepository;
    @Autowired
    private BasePhotoInfoRoRedisDao basePhotoInfoRoRedisDao;
    @Autowired
    private PerCommentRepository perCommentRepository;
    @Autowired
    private PerCommendRoRedisDao perCommendRoRedisDao;
    @Autowired
    private PerPhotoRepository perPhotoRepository;
    @Autowired
    private PerPhotoRoRedisDao perPhotoRoRedisDao;

    @Override
    public List<PerPhotoVo> getAllPhoto(PhotoDataReqVo vo) {



        return null;
    }

    @Override
    public PerPhotoVo findPerPhotoById(PhotoDataReqVo vo) {
        if(vo == null || vo.getId() == null){
            return null;
        }
        PerPhotoRo ro = perPhotoRoRedisDao.findOne(vo.getId());
        if(ro == null){
            return null;
        }
        PerPhotoVo perPhotoVo = new PerPhotoVo(ro);
        String picPath = ro.getPhotoPicPath();
        if(StringUtils.isNotEmpty(picPath)){
            List<Long> longs = transStringToListLong(picPath);
            List<BasePhotoInfoRo> ros = basePhotoInfoRoRedisDao.findByIds(longs);
            if(CollectionUtils.isNotEmpty(ros)){
                List<BasePhotoInfoVo> list = Lists.newArrayList();
                for(BasePhotoInfoRo r : ros){
                    list.add(new BasePhotoInfoVo(r));
                }
                perPhotoVo.setPhotoInfos(list);
            }
        }
        return perPhotoVo;
    }
}
