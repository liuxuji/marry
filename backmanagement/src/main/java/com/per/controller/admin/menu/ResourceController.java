package com.per.controller.admin.menu;

import com.per.controller.BaseController;
import com.per.dao.po.admin.Resource;
import com.per.service.admin.AdminService;
import com.per.vo.admin.ResourceVo;
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
 * @Date 2017-11-13  13:37
 */
@Controller
@RequestMapping("/manage/resource")
@Secured("ROLE_RESOURCE")
public class ResourceController extends BaseController{
    @Autowired
    private AdminService adminService;

    @RequestMapping("/add")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_ADD')")
    public ModelAndView add(@RequestParam("menuItemId") Long id) {
        Resource resource = new Resource();
        resource.setMenuItem(adminService.getMenuItem(id));
        ModelAndView view = new ModelAndView("console/menu/resource/add", "resource", resource);
        view.addObject("cmd", "add");
        return view;
    }

    @RequestMapping("/edit")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_EDIT')")
    public ModelAndView edit(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/resource/add", "resource", adminService.getResource(id));
        view.addObject("cmd", "edit");
        return view;
    }

    @RequestMapping("/delete")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_DELETE')")
    public ModelAndView delete(@RequestParam("id") Long id) {
        ModelAndView view = new ModelAndView("console/menu/resource/add", "resource", adminService.getResource(id));
        view.addObject("cmd", "delete");
        return view;
    }

    @RequestMapping("/save_add")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_ADD')")
    @ResponseBody
    public String save_add(ResourceVo resourceVo) {
        try{
            adminService.createResource(resourceVo);
            return "createOk";
        }catch (Exception e){

        }
        return "createError";
    }

    @RequestMapping("/save_edit")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_EDIT')")
    @ResponseBody
    public String save_edit(Resource resource) {
        // why copy ManyToMany
        Resource inDb = adminService.getResource(resource.getId());
        if(inDb != null){
            inDb.copy(resource);
            adminService.updateResource(inDb);
            return "updateOk";
        }
        return "updateError";
    }

    @RequestMapping("/save_delete")
    @PreAuthorize("hasAuthority('OPT_RESOURCE_DELETE')")
    @ResponseBody
    public String save_delete(@RequestParam("id") Long id) {
        Resource resource = adminService.getResource(id);
        if(resource != null){
            adminService.deleteResource(resource);
            return "deleteOk";
        }
        return "deleteError";
    }
}
