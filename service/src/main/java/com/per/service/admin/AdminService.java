package com.per.service.admin;

import com.per.dao.po.admin.*;
import com.per.vo.admin.AdminVo;
import com.per.vo.admin.MenuItemVo;
import com.per.vo.admin.ResourceVo;
import com.per.vo.admin.RoleVo;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:28
 */
public interface AdminService {

    void createAdmin(AdminVo adminVo, Admin creator);

    boolean checkLogin(String userName, String password);

    Admin getAdmin(String id);

    List<Admin> listEnableAdmins();

    List<Admin> listDisableAdmins();

    void deleteAdmin(String id);

    void deleteAdmin(Admin admin);

    void updateAdmin(Admin admin);

    boolean checkAdminExists(String id);

    List<Role> listAllRoles();

    Role getRole(Long id);

    void createRole(RoleVo roleVo);

    void updateRole(RoleVo roleVo);

    void deleteRole(Long id);

    void deleteRole(Role role);

    List<MainMenu> listAllMainMenu();

    MainMenu getMainMenu(Long id);

    void createMainMenu(MainMenu mainMenu);

    void deleteMainMenu(Long id);

    void deleteMainMenu(MainMenu mainMenu);

    void updateMainMenu(MainMenu mainMenu);

    List<MenuItem> listMenuItemByMainMenuId(Long mainMenuId);

    MenuItem getMenuItem(Long id);

    void createMenuItem(MenuItemVo menuItemVo);

    void deleteMenuItem(Long id);

    void deleteMenuItem(MenuItem menuItem);

    void updateMenuItem(MenuItem menuItem);

    List<Menu> initAdminMenu(Admin admin);

    Resource getResource(Long id);

    void createResource(ResourceVo resourceVo);

    void deleteResource(Long id);

    void deleteResource(Resource resource);

    void updateResource(Resource resource);

    void updateItemParentId(Long parentId, Long itemId);

}
