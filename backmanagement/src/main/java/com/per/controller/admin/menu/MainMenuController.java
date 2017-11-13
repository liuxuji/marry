package com.per.controller.admin.menu;

import com.per.controller.BaseController;
import com.per.dao.enums.MenuLinkType;
import com.per.dao.po.admin.MainMenu;
import com.per.service.admin.AdminService;
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
 * @Date 2017-11-13  13:33
 */
@Controller
@RequestMapping("/manage/mainmenu")
@Secured("ROLE_MAINMENU")
public class MainMenuController extends BaseController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/list")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_LIST')")
    public ModelAndView list() {
        return new ModelAndView("console/menu/mainmenu/list", "mainmenus", adminService.listAllMainMenu());
    }

    @RequestMapping("/add")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_ADD')")
    public ModelAndView add() {
        ModelAndView view = new ModelAndView("console/menu/mainmenu/add", "types", MenuLinkType.values());
        view.addObject("cmd", "add");
        return view;
    }

    @RequestMapping("/edit")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_EDIT')")
    public ModelAndView edit(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/mainmenu/add", "mainmenu", adminService.getMainMenu(id));
        view.addObject("cmd", "edit");
        view.addObject("types", MenuLinkType.values());
        return view;
    }

    @RequestMapping("/delete")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_DELETE')")
    public ModelAndView delete(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/mainmenu/add", "mainmenu", adminService.getMainMenu(id));
        view.addObject("cmd", "delete");
        return view;
    }

    @RequestMapping("/detail")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_DETAIL')")
    public ModelAndView detail(@RequestParam("id") Long id) {
        ModelAndView modelAndView = new ModelAndView("console/menu/mainmenu/detail", "mainmenu", adminService.getMainMenu(id));
        return modelAndView;
    }

    @RequestMapping("/save_add")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_ADD')")
    @ResponseBody
    public String save_add(MainMenu menu) {
        try {
            adminService.createMainMenu(menu);
            return "createOk";
        } catch (Exception e) {
            return "createError";
        }
    }

    @RequestMapping("/save_edit")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_EDIT')")
    @ResponseBody
    public String save_edit(MainMenu menu) {
        try {
            adminService.updateMainMenu(menu);
            return "updateOk";
        } catch (Exception e) {
            return "updateError";
        }
    }

    @RequestMapping("/save_delete")
    @PreAuthorize("hasAuthority('OPT_MAINMENU_DELETE')")
    @ResponseBody
    public String save_delete(@RequestParam("id") Long id) {
        MainMenu menu = adminService.getMainMenu(id);
        if (menu != null) {
            adminService.deleteMainMenu(menu);
            return "deleteOk";
        }
        return "deleteError";
    }
}
