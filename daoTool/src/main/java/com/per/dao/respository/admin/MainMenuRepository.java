package com.per.dao.respository.admin;

import com.per.dao.po.admin.MainMenu;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:18
 */
@Repository
public interface MainMenuRepository extends CommonJpaRepository<MainMenu,Long>{
    List<MainMenu> findByOrderByCodeAsc();

    @Modifying
    @Query(value = "update adm_menuitem set main_menu_id=:main_menu_id where id=:id", nativeQuery = true)
    void updateItemParentId(@Param("main_menu_id") Long main_menu_id, @Param("id") Long id);
}
