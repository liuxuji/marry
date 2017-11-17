package com.per.dao.respository.po.perphoto;

import com.per.dao.po.perphoto.PerPhoto;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  14:20
 */
@Repository
public interface PerPhotoRepository extends CommonJpaRepository<PerPhoto,Integer>{
}
