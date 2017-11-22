package com.per.dao.respository.po.perphoto;

import com.per.dao.po.perphoto.PerComment;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  14:17
 */
@Repository
public interface PerCommentRepository extends CommonJpaRepository<PerComment,Long>{
}
