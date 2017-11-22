package com.per.service.perphoto;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.per.dao.po.perphoto.BasePhotoInfo;
import com.per.dao.po.perphoto.PerPhoto;
import com.per.dao.ro.perphoto.BasePhotoInfoRo;
import com.per.dao.ro.perphoto.PerPhotoRo;
import com.per.service.AbstractBaseService;
import com.per.table.BootstrapTablePageResult;
import com.per.transformer.perphoto.BasePhotoInfoVo2BasePhotoInfo;
import com.per.transformer.perphoto.PerPhotoVo2PerPhotoRo;
import com.per.vo.page.PageVo;
import com.per.vo.perphoto.BasePhotoInfoVo;
import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.per.dao.respository.po.perphoto.*;
import com.per.dao.respository.redis.perphoto.*;

import java.util.List;

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
        PerPhotoRo oldRo = null;
        if(vo.getId() != null){
            oldRo = perPhotoRoRedisDao.findOne(vo.getId());
        }
        //请柬ro
        PerPhotoRo ro = new PerPhotoVo2PerPhotoRo().apply(vo);
        if(oldRo != null){
            ro.setCreateTimestamp(oldRo.getCreateTimestamp());
            ro.setId(oldRo.getId());
        }else{
            ro.setId(super.idService.nextId());
        }
        //处理图片数据
        List<BasePhotoInfoVo> list = vo.getPhotoInfos();
        List<BasePhotoInfoRo> needSaveRos = Lists.newArrayList();
        if(CollectionUtils.isNotEmpty(list)){
            StringBuffer stringBuffer = new StringBuffer();
            for(BasePhotoInfoVo infoVo : list){
                BasePhotoInfoRo oldInfoRo = null;
                if(infoVo.getId() != null){
                    oldInfoRo = basePhotoInfoRoRedisDao.findOne(infoVo.getId());
                }
                BasePhotoInfoRo infoRo = new BasePhotoInfoVo2BasePhotoInfo().apply(infoVo);
                if(oldInfoRo != null){
                    infoRo.setCreateTimestamp(oldInfoRo.getCreateTimestamp());
                    infoRo.setId(oldInfoRo.getId());
                    infoRo.setPerPhotoRoId(oldInfoRo.getPerPhotoRoId());
                }else{
                    infoRo.setId(idService.nextId());
                    infoRo.setPerPhotoRoId(ro.getId());
                }
                //需要保存的图片集合
                needSaveRos.add(infoRo);
                stringBuffer.append(infoRo.getId()).append(",");
            }
            String path = stringBuffer.toString();
            ro.setPhotoPicPath(path.substring(0,path.length()-1));
        }

        //请柬ro-po
        PerPhoto photo = new PerPhoto(ro);
        //图片ro-po
        List<BasePhotoInfo> needSavePos = Lists.newArrayList();
        if(CollectionUtils.isNotEmpty(needSaveRos)){
            for(BasePhotoInfoRo infoRo : needSaveRos){
                needSavePos.add(new BasePhotoInfo(infoRo,photo));
            }
        }
        //设置关系
        photo.setPhotoInfos(needSavePos);

        //保存
        perPhotoRepository.save(photo);
        perPhotoRoRedisDao.save(ro);

        basePhotoInfoRepository.save(needSavePos);
        basePhotoInfoRoRedisDao.save(needSaveRos);

    }

    @Override
    public void delPhotoData(PhotoDataReqVo vo) {
        perPhotoRepository.delete(vo.getId());
        PerPhotoRo ro = perPhotoRoRedisDao.findOne(vo.getId());
        if(ro != null){
            String picPath = ro.getPhotoPicPath();
            if(StringUtils.isNotEmpty(picPath)){
                Long l = perPhotoRoRedisDao.delete(picPath.split(","));
            }
        }
        perPhotoRoRedisDao.delete(ro.getId());

    }

    @Override
    public BootstrapTablePageResult findAllPhoto(PageVo vo) {
        BootstrapTablePageResult result = new BootstrapTablePageResult();
        List<PerPhotoRo> list = perPhotoRoRedisDao.findAll();
        if(CollectionUtils.isEmpty(list)){
            result.setTotal(0);
        }else{
            result.setTotal(list.size());
            result.setRows(list);
        }
        return result;
    }

    @Override
    public PerPhotoVo findPhotoDataById(PhotoDataReqVo vo) {
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

    @Override
    public void save(BasePhotoInfoVo vo) {

    }

    @Override
    public void delPhoto(PhotoDataReqVo vo) {
        if(vo == null){
            return;
        }
        basePhotoInfoRoRedisDao.delete(vo.getId());
        basePhotoInfoRepository.delete(vo.getId());
    }

}
