package com.per.service.admin;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.per.dao.po.admin.*;
import com.per.dao.respository.admin.*;
import com.per.exception.BusinessException;
import com.per.exceptions.ApiExceptions;
import com.per.service.AbstractBaseService;
import com.per.transformer.admin.AdminVo2Admin;
import com.per.transformer.admin.MenuItemVo2MenuItem;
import com.per.vo.admin.AdminVo;
import com.per.vo.admin.MenuItemVo;
import com.per.vo.admin.ResourceVo;
import com.per.vo.admin.RoleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserCache;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:36
 */
@Service
public class AdminServiceImpl extends AbstractBaseService implements AdminService,UserDetailsService {

    @Autowired
    private MainMenuRepository mainMenuRepository;

    @Autowired
    private MenuItemRepository menuItemRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private ResourceRepository resourceRepository;

    private UserCache userCache;

    public AdminServiceImpl() {
    }

    @Override
    public void createAdmin(AdminVo adminVo, Admin creator) {
        if(adminVo == null){
            throw new BusinessException(ApiExceptions.AdminEnums.PARAMS_NULL);
        }
        String rolesIndex = adminVo.getRoles();
        String[] roles = null;
        if(StringUtils.isNotEmpty(rolesIndex)){
            roles = rolesIndex.split(",");
        }
        List<Role> roleList = Lists.newArrayList();
        if(roles != null){
            for (String str : roles) {
                Role role = new Role();
                role.setId(Long.valueOf(str));
                roleList.add(role);
            }
        }
        Admin admin = new AdminVo2Admin().apply(adminVo);
        admin.setRoles(roleList);
        if (creator != null){
            admin.setCreateBy(creator.getUsername());
        }
        adminRepository.save(admin);
    }

    @Override
    public boolean checkLogin(String userName, String password) {
        Admin admin = adminRepository.findOne(userName);
        if (admin != null) {
            return StringUtils.isEquals(admin.getPassword(),password);
        }
        return false;
    }

    @Override
    public Admin getAdmin(String id) {
        return adminRepository.findOne(id);
    }

    @Override
    public List<Admin> listEnableAdmins() {
        return adminRepository.findByEnabled(true);
    }

    @Override
    public List<Admin> listDisableAdmins() {
        return adminRepository.findByEnabled(false);
    }

    @Override
    public void deleteAdmin(String id) {
        adminRepository.delete(id);
    }

    @Override
    public void deleteAdmin(Admin admin) {
        adminRepository.delete(admin);
    }

    @Override
    public void updateAdmin(Admin admin) {
        adminRepository.save(admin);
    }
    @Override
    public boolean checkAdminExists(String id) {
        return adminRepository.exists(id);
    }
    @Override
    public List<Role> listAllRoles() {
        return roleRepository.findAll();
    }
    @Override
    public Role getRole(Long id) {
        return roleRepository.findOne(id);
    }
    @Override
    public void createRole(RoleVo roleVo) {
        if(roleVo == null){
            throw new BusinessException(ApiExceptions.AdminEnums.PARAMS_NULL);
        }
        String menuItemIndex = roleVo.getMenuItems();
        String resourceIndex = roleVo.getResources();
        String[] menuItems = null;
        if(StringUtils.isNotEmpty(menuItemIndex) && menuItemIndex.contains(",")){
            menuItems = menuItemIndex.split(",");
        }
        String[] resources = null;
        if(StringUtils.isNotEmpty(resourceIndex) && menuItemIndex.contains(",")){
            resources = resourceIndex.split(",");
        }
        List<MenuItem> menuItemList = Lists.newArrayList();
        List<Resource> resourceList = Lists.newArrayList();
        if(menuItems != null){
            for (String items : menuItems) {
                MenuItem menuItem = new MenuItem();
                menuItem.setId(Long.valueOf(items));
                menuItemList.add(menuItem);
            }
        }
        if(resources != null){
            for (String res : resources) {
                Resource resource = new Resource();
                resource.setId(Long.valueOf(res));
                resourceList.add(resource);
            }
        }
        Role role = new Role();
        role.setDescription(roleVo.getDescription());
        role.setName(roleVo.getName());
        role.setMenuItems(menuItemList);
        role.setResources(resourceList);
        roleRepository.save(role);
    }

    @Override
    public void updateRole(RoleVo roleVo) {
        String menuItemIndex = roleVo.getMenuItems();
        String resourceIndex = roleVo.getResources();
        String[] menuItems = menuItemIndex.split(",");
        String[] resources = resourceIndex.split(",");
        List<MenuItem> menuItemList = new ArrayList<MenuItem>();
        List<Resource> resourceList = new ArrayList<Resource>();
        for (String items : menuItems) {
            MenuItem menuItem = new MenuItem();
            menuItem.setId(Long.valueOf(items));
            menuItemList.add(menuItem);
        }
        for (String res : resources) {
            Resource resource = new Resource();
            resource.setId(Long.valueOf(res));
            resourceList.add(resource);
        }
        Role role = new Role();
        role.setDescription(roleVo.getDescription());
        role.setName(roleVo.getName());
        role.setMenuItems(menuItemList);
        role.setResources(resourceList);
        role.setId(roleVo.getId());
        roleRepository.save(role);
    }

    @Override
    public void deleteRole(Long id) {
        roleRepository.delete(id);
    }
    @Override
    public void deleteRole(Role role) {
        roleRepository.delete(role);
    }
    @Override
    public List<MainMenu> listAllMainMenu() {
        return mainMenuRepository.findByOrderByCodeAsc();
    }
    @Override
    public MainMenu getMainMenu(Long id) {
        return mainMenuRepository.findOne(id);
    }
    @Override
    public void createMainMenu(MainMenu mainMenu) {
        mainMenu.setLinkType(mainMenu.getLinkType());
        mainMenu.setIcon(mainMenu.getIcon());
        mainMenuRepository.save(mainMenu);
    }
    @Override
    public void deleteMainMenu(Long id) {
        mainMenuRepository.delete(id);
    }
    @Override
    public void updateMainMenu(MainMenu mainMenu) {
        mainMenu.setIcon(mainMenu.getIcon());
        mainMenu.setLinkType(mainMenu.getLinkType());
        mainMenuRepository.save(mainMenu);
    }
    @Override
    public void deleteMainMenu(MainMenu mainMenu) {
        mainMenuRepository.delete(mainMenu);
    }
    @Override
    public List<MenuItem> listMenuItemByMainMenuId(Long mainMenuId) {
        return menuItemRepository.findBymainMenuIdOrderByCodeAsc(mainMenuId);
    }
    @Override
    public MenuItem getMenuItem(Long id) {
        return menuItemRepository.findOne(id);
    }
    @Override
    public void createMenuItem(MenuItemVo menuItemVo) {
        if(menuItemVo == null){
            throw new BusinessException(ApiExceptions.AdminEnums.PARAMS_NULL);
        }
        MainMenu mainMenu = mainMenuRepository.findOne(menuItemVo.getMainMenuId());
        MenuItem menuItem = new MenuItemVo2MenuItem().apply(menuItemVo);
        menuItem.setMainMenu(mainMenu);
        menuItemRepository.save(menuItem);
    }
    @Override
    public void deleteMenuItem(Long id) {
        menuItemRepository.delete(id);
    }
    @Override
    public void deleteMenuItem(MenuItem menuItem) {
        menuItemRepository.delete(menuItem);
    }
    @Override
    public void updateMenuItem(MenuItem menuItem) {
        menuItem.setLinkType(menuItem.getLinkType());
        menuItem.setIcon(menuItem.getIcon());
        menuItemRepository.save(menuItem);
    }
    @Override
    public Resource getResource(Long id) {
        return resourceRepository.findOne(id);
    }
    @Override
    public void createResource(ResourceVo resourceVo) {
        MenuItem menuItem = menuItemRepository.findOne(resourceVo.getMenuItemId());
        Resource resource = new Resource();
        resource.setName(resourceVo.getName());
        resource.setSymbol(resourceVo.getSymbol());
        resource.setDescription(resourceVo.getDescription());
        resource.setMenuItem(menuItem);
        resourceRepository.save(resource);
    }
    @Override
    public void deleteResource(Long id) {
        resourceRepository.delete(id);
    }
    @Override
    public void deleteResource(Resource resource) {
        resourceRepository.delete(resource);
    }
    @Override
    public void updateResource(Resource resource) {
        resourceRepository.save(resource);
    }

    /**
     * 初始化获取菜单 (non-Javadoc)
     *
     *
     * */
    @Override
    public List<Menu> initAdminMenu(Admin admin) {
        if(admin == null){
            return Lists.newArrayList();
        }
        List<Menu> result = Lists.newArrayList();
        List<Role> roles = admin.getRoles();
        Map<Long, MenuItem> maps = Maps.newHashMap();
        if(CollectionUtils.isNotEmpty(roles)){
            int i = 0;
            for (; i < roles.size(); i++) {
                Role r = roles.get(i);
                List<MenuItem> menuItems = r.getMenuItems();
                if (CollectionUtils.isNotEmpty(menuItems)) {
                    for (MenuItem item : menuItems) {
                        maps.put(item.getId(), item);
                    }
                }
            }
        }


        Iterator<MainMenu> mainMenus = this.listAllMainMenu().iterator();
        while (mainMenus.hasNext()) {
            MainMenu mainMenu = mainMenus.next();
            Menu menu ;
            if (StringUtils.isNotEmpty(mainMenu.getUrl())) {
                menu = new Menu(mainMenu.getText(), mainMenu.getIcon(), mainMenu.getUrl(), mainMenu.getLinkType());
            } else {
                menu = new Menu(mainMenu.getText(), mainMenu.getIcon());
            }
            if (CollectionUtils.isNotEmpty(mainMenu.getMenuItems())) {
                for (MenuItem menuItem : mainMenu.getMenuItems()) {
                    if (maps.get(menuItem.getId()) != null) {
                        Menu item ;
                        if (StringUtils.isNotEmpty(menuItem.getUrl())) {
                            item = new Menu(menuItem.getText(), menuItem.getIcon(), menuItem.getUrl(), menuItem.getLinkType());
                        } else {
                            item = new Menu(menuItem.getText(), menuItem.getIcon());
                        }
                        menu.addSubmenu(item);
                    }
                }
            }
            result.add(menu);
        }
        return result;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {
        Admin admin = adminRepository.findOne(username);
        if (admin != null) {
            admin.setMenus(this.initAdminMenu(admin));
        } else {
            throw new UsernameNotFoundException("username:" + username + " is not exists");
        }
        return admin;
    }


    public void setUserCache(UserCache userCache) {
        this.userCache = userCache;
    }

    public UserCache getUserCache() {
        return this.userCache;
    }

    @Transactional
    @Override
    public void updateItemParentId(Long parentId, Long itemId) {
        mainMenuRepository.updateItemParentId(parentId, itemId);
    }
}
