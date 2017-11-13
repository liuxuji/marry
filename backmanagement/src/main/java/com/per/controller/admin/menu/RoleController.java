package com.per.controller.admin.menu;

import com.per.controller.BaseController;
import com.per.dao.po.admin.Role;
import com.per.service.admin.AdminService;
import com.per.vo.admin.RoleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:38
 */
@Controller
@RequestMapping("/manage/role")
@Secured("ROLE_ROLE")
public class RoleController extends BaseController{
    @Autowired
    private AdminService adminService;

    @RequestMapping("/list")
    @PreAuthorize("hasAuthority('OPT_ROLE_LIST')")
    public ModelAndView list() {
        return new ModelAndView("console/menu/role/list", "roles", adminService.listAllRoles());
    }

    @RequestMapping("/add")
    @PreAuthorize("hasAuthority('OPT_ROLE_ADD')")
    public ModelAndView add() {
        ModelAndView view = new ModelAndView("console/menu/role/add");
        view.addObject("cmd", "add");
        view.addObject("mainmenus", adminService.listAllMainMenu());
        return view;
    }

    @RequestMapping("/edit")
    @PreAuthorize("hasAuthority('OPT_ROLE_EDIT')")
    public ModelAndView edit(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/role/add", "role", adminService.getRole(id));
        view.addObject("cmd", "edit");
        view.addObject("mainmenus", adminService.listAllMainMenu());
        return view;
    }

    @RequestMapping("/delete")
    @PreAuthorize("hasAuthority('OPT_ROLE_DELETE')")
    public ModelAndView delete(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/role/add", "role", adminService.getRole(id));
        view.addObject("cmd", "delete");
        view.addObject("mainmenus", adminService.listAllMainMenu());
        return view;
    }

    @RequestMapping("/detail")
    @PreAuthorize("hasAuthority('OPT_ROLE_DETAIL')")
    public ModelAndView detail(@RequestParam("id") Long id) {
        return new ModelAndView("console/menu/role/detail", "role", adminService.getRole(id));
    }

    @RequestMapping("/save_add")
    @PreAuthorize("hasAuthority('OPT_ROLE_ADD')")
    @ResponseBody
    public String save_add(RoleVo roleVo) {
        try{
            adminService.createRole(roleVo);
            return "createOk";
        }catch (Exception e){
            return "createError";
        }
    }

    @RequestMapping("/save_edit")
    @PreAuthorize("hasAuthority('OPT_ROLE_EDIT')")
    @ResponseBody
    public String save_edit(RoleVo roleVo) {
        try{
            adminService.updateRole(roleVo);
            return "editOk";
        }catch (Exception e){
            return "editError";
        }
    }

    @RequestMapping("/save_delete")
    @PreAuthorize("hasAuthority('OPT_ROLE_DELETE')")
    @ResponseBody
    public String save_delete(@RequestParam("id") Long id) {
        Role role = adminService.getRole(id);
        if (role != null){
            adminService.deleteRole(role);
            return "deleteOk";
        }
        return "deleteError";
    }

    // 用来维护多对多信息
    @InitBinder
    protected void initBinder(WebDataBinder binder) throws Exception {
        binder.registerCustomEditor(List.class, "menuItems", new CustomCollectionEditor(List.class) {
            @Override
            protected Object convertElement(Object element) {
                if (element instanceof Role) {
                    return element;
                }
                if (element instanceof String) {
                    return adminService.getMenuItem(Long.valueOf(element.toString()));
                }
                return null;
            }
        });
        binder.registerCustomEditor(List.class, "resources", new CustomCollectionEditor(List.class) {
            @Override
            protected Object convertElement(Object element) {
                if (element instanceof Role) {
                    return element;
                }
                if (element instanceof String) {
                    return adminService.getResource(Long.valueOf(element.toString()));
                }
                return null;
            }
        });
    }
}
