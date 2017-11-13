package com.per.controller.admin.menu;

import com.per.controller.BaseController;
import com.per.dao.enums.MenuLinkType;
import com.per.dao.po.admin.MenuItem;
import com.per.service.admin.AdminService;
import com.per.vo.admin.MenuItemVo;
import com.per.vo.admin.UpdateItemMenuParentMenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:34
 */
@Controller
@RequestMapping("/manage/menuitem")
@Secured("ROLE_MENUITEM")
public class MenuItemController extends BaseController{
    @Autowired
    private AdminService adminsService;

    @RequestMapping("/add")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_ADD')")
    public ModelAndView add(@RequestParam("mainMenuId") Long id) {
        MenuItem menuItem = new MenuItem();
        menuItem.setMainMenu(adminsService.getMainMenu(id));
        ModelAndView view = new ModelAndView("console/menu/menuitem/add", "menuitem", menuItem);
        view.addObject("cmd", "add");
        view.addObject("types" , MenuLinkType.values());
        return view;
    }

    @RequestMapping("/edit")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_EDIT')")
    public ModelAndView edit(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/menuitem/add", "menuitem", adminsService.getMenuItem(id));
        view.addObject("cmd", "edit");
        view.addObject("types" , MenuLinkType.values());
        return view;
    }

    @RequestMapping("/delete")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_DELETE')")
    public ModelAndView delete(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/menuitem/add", "menuitem", adminsService.getMenuItem(id));
        view.addObject("cmd", "delete");
        return view;
    }

    @RequestMapping("/detail")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_DETAIL')")
    public ModelAndView detail(@RequestParam("id") Long id) {
        return new ModelAndView("console/menu/menuitem/detail", "menuitem", adminsService.getMenuItem(id));
    }

    @RequestMapping("/save_add")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_ADD')")
    @ResponseBody
    public String save_add(MenuItemVo menuItemVo) {
        try{
            adminsService.createMenuItem(menuItemVo);
            return "createOk";
        }catch (Exception e){
            return "createError";
        }
    }

    @RequestMapping("/save_edit")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_EDIT')")
    @ResponseBody
    public String save_edit(MenuItem menuItem) {
        // why copy ManyToMany
        MenuItem inDb = adminsService.getMenuItem(menuItem.getId());
        if(inDb != null){
            inDb.copy(menuItem);
            adminsService.updateMenuItem(inDb);
            return "updateOk";
        }
        return "updateError";
    }

    @RequestMapping("/save_delete")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_DELETE')")
    @ResponseBody
    public String save_delete(@RequestParam("id") Long id) {
        MenuItem menuItem = adminsService.getMenuItem(id);
        if(menuItem != null){
            adminsService.deleteMenuItem(menuItem);
            return "deleteOk";
        }
        return "deleteError";
    }

    @RequestMapping("/changeMenu")
    @PreAuthorize("hasAuthority('OPT_MENUITEM_CHANGEMENU')")
    public ModelAndView changeMenu() {
        ModelAndView modelAndView = new ModelAndView("console/menu/menuitem/changeMenu", "mainmenus", adminsService.listAllMainMenu());
        return modelAndView;
    }

    @RequestMapping("/updateItemMenuParentMenu")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_CHANGPARENTMENU')")
    @ResponseBody
    public String updateItemMenuParentMenu(UpdateItemMenuParentMenuVo updateItemMenuParentMenuVo) {
        String itemParentIds = updateItemMenuParentMenuVo.getItemParentIds();
        String menuItemIds = updateItemMenuParentMenuVo.getMenuItemIds();
        String[] itemParentIdsStr = itemParentIds.split(",");
        String[] menuItemIdsStr = menuItemIds.split(",");
        if (itemParentIdsStr != null && itemParentIdsStr.length > 0) {
            for (int i = 0; i < itemParentIdsStr.length; i++) {
                if (!"".equals(itemParentIdsStr[i])) {
                    adminsService.updateItemParentId(Long.parseLong(itemParentIdsStr[i]), Long.parseLong(menuItemIdsStr[i]));
                }
            }
            return "updateItemMenuParentMenuOk";
        }else{
            return "updateItemMenuParentMenuError";
        }
    }
}
