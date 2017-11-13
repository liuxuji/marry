package com.per.controller.admin.menu;

import com.per.controller.BaseController;
import com.per.dao.po.admin.Admin;
import com.per.dao.po.admin.Role;
import com.per.security.AuthorityUtil;
import com.per.service.admin.AdminService;
import com.per.vo.admin.AdminVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.ArrayList;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  11:19
 */
@Controller
@RequestMapping("/manage/admin")
@Secured("ROLE_ADMIN")
public class AdminController extends BaseController{

    @Autowired
    private AdminService adminService;

    @Autowired
    @Qualifier("passwordEncoder")
    private Md5PasswordEncoder passwordEncoder;

    @RequestMapping("/list")
    @PreAuthorize("hasAuthority('OPT_ADMIN_LIST')")
    public ModelAndView list(@RequestParam(value = "enabled", required = false, defaultValue = "true") boolean enabled) {
        ModelAndView view = new ModelAndView("console/menu/admin/list", "admins",
                enabled ? adminService.listEnableAdmins() : adminService.listDisableAdmins());
        view.addObject("enabled", enabled);
        return view;
    }

    @RequestMapping("/add")
    @PreAuthorize("hasAuthority('OPT_ADMIN_ADD')")
    public ModelAndView add() {
        ModelAndView view = new ModelAndView("console/menu/admin/add");
        view.addObject("cmd", "add");
        view.addObject("roles", adminService.listAllRoles());
        return view;
    }

    @RequestMapping("/edit")
    @PreAuthorize("hasAuthority('OPT_ADMIN_EDIT')")
    public ModelAndView edit(@RequestParam("username") String username) {
        ModelAndView view = new ModelAndView("console/menu/admin/add", "admin", adminService.getAdmin(username));
        view.addObject("cmd", "edit");
        view.addObject("roles", adminService.listAllRoles());
        return view;
    }

    @RequestMapping("/delete")
    @PreAuthorize("hasAuthority('OPT_ADMIN_DELETE')")
    public ModelAndView delete(@RequestParam("username") String username) {
        ModelAndView view = new ModelAndView("console/menu/admin/add", "admin", adminService.getAdmin(username));
        view.addObject("cmd", "delete");
        view.addObject("roles", adminService.listAllRoles());
        return view;
    }

    @RequestMapping("/detail")
    @PreAuthorize("hasAuthority('OPT_ADMIN_DETAIL')")
    public ModelAndView detail(@RequestParam("username") String username) {
        return new ModelAndView("console/menu/admin/detail", "admin", adminService.getAdmin(username));
    }

    @RequestMapping("/reset")
    @PreAuthorize("hasAuthority('OPT_ADMIN_RESET')")
    public ModelAndView reset(@RequestParam("username") String username) {
        return new ModelAndView("console/menu/admin/reset", "username", username);
    }


    @RequestMapping("/save_add")
    @PreAuthorize("hasAuthority('OPT_ADMIN_ADD')")
    @ResponseBody
    public String save_add(AdminVo adminVo, @RequestParam("pwd") String pwd) {
        String createBy = AuthorityUtil.getLoginUsername();
        Admin creator = null;
        if (createBy != null) {
            creator = adminService.getAdmin(createBy);
        }
        adminVo.setPassword(passwordEncoder.encodePassword(pwd, adminVo.getUserName()));
        try{
            adminService.createAdmin(adminVo, creator);
            return "createOk";
        }catch (Exception e){
            return "createError";
        }
    }

    @RequestMapping("/save_edit")
    @PreAuthorize("hasAuthority('OPT_ADMIN_EDIT')")
    @ResponseBody
    public String save_edit(AdminVo adminVo, BindingResult bindingResult) {
        Admin inDb = adminService.getAdmin(adminVo.getUserName());
        String rolesIndex = adminVo.getRoles();
        String[] roles = rolesIndex.split(",");
        List<Role> roleList = new ArrayList<Role>();
        for(String str:roles){
            Role role = new Role();
            role.setId(Long.valueOf(str));
            roleList.add(role);
        }
        Admin admin = new Admin();
        admin.setEnabled(adminVo.getEnabled());
        admin.setQq(adminVo.getQq());
        admin.setMobile(adminVo.getMobile());
        admin.setMsn(adminVo.getMsn());
        admin.setName(adminVo.getName());
        admin.setEmail(adminVo.getEmail());
        admin.setRoles(roleList);
        inDb.copy(admin);
        inDb.setRoles(admin.getRoles());
        try{
            adminService.updateAdmin(inDb);
            return "editOk";
        }catch (Exception e){
            return "editError";
        }
    }

    @RequestMapping("/save_delete")
    @PreAuthorize("hasAuthority('OPT_ADMIN_DELETE')")
    @ResponseBody
    public String save_delete(@RequestParam("username") String username) {
        Admin admin = adminService.getAdmin(username);
        if(admin != null){
            adminService.deleteAdmin(admin);
            return "deleteOk";
        }else{
            return "deleteError";
        }
    }

    @RequestMapping("/save_reset")
    @PreAuthorize("hasAuthority('OPT_ADMIN_RESET')")
    @ResponseBody
    public String save_add(@RequestParam("username") String username, @RequestParam("pwd") String pwd) {
        Admin admin = adminService.getAdmin(username);
        admin.setPassword(passwordEncoder.encodePassword(pwd, admin.getUsername()));
        try{
            adminService.updateAdmin(admin);
            return "resetOk";
        }catch (Exception e){
            return "resetError";
        }
    }

    // 用来维护多对多信息
    @InitBinder
    protected void initBinder(WebDataBinder binder) throws Exception {
        binder.registerCustomEditor(List.class, "roles", new CustomCollectionEditor(List.class) {
            @Override
            protected Object convertElement(Object element) {
                if (element instanceof Admin) {
                    return element;
                }
                if (element instanceof String) {
                    return adminService.getRole(Long.valueOf(element.toString()));
                }
                return null;
            }
        });
    }
}

