package com.per.dao.respository.admin;

import com.per.dao.po.admin.MenuItem;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:20
 */
@Repository
public interface MenuItemRepository extends CommonJpaRepository<MenuItem,Long>{
    @Query(value="from MenuItem i where i.mainMenu.id=?1")
    List<MenuItem> findBymainMenuIdOrderByCodeAsc(Long mainMenuId);
}
