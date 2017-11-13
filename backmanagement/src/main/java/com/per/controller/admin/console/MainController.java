package com.per.controller.admin.console;

import com.alibaba.fastjson.JSON;
import com.per.controller.BaseController;
import com.per.controller.admin.login.model.User;
import com.per.dao.enums.MenuLinkType;
import com.per.dao.po.admin.Menu;
import com.per.dao.po.admin.MenuLabel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:22
 */
@Controller
@RequestMapping("/console")
public class MainController extends BaseController{

    @RequestMapping("/main")
    public ModelAndView main(HttpServletRequest request) {
        List<Menu> menus = createMenu();

        Map<String, Object> model = new HashMap<>();
        model.put("user", new User(1L, "admin", "admin",
                request.getContextPath() + "/images/user/1"));
        model.put("demomenus", menus);
        return new ModelAndView("console/main", model);
    }

    @RequestMapping("/dashboard")
    public ModelAndView dashboard() {
        ModelAndView view = new ModelAndView("console/pages/dashboard");
        return view;

    }


    @RequestMapping("/table-search")
    public String tableSearch() {
        return "console/pages/table-search";
    }

    @RequestMapping("/bootsreap-table")
    public String bootsreapTable() {
        return "console/pages/bootstrap-table";
    }

    /**
     * 提供给bootsreap-table的服务器数据
     * @return
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
    @RequestMapping("/bootsreap-table-data")
    @ResponseBody
    public String bootsreapTableData(Integer pageSize, Integer pageNumber,
                                     String searchText, HttpServletRequest request,
                                     HttpServletResponse response) {
        // 在service通过条件查询获取指定页的数据的list
        // 根据查询条件，获取符合查询条件的数据总量
        int total = 21;
        List<PageModel> lists = new ArrayList<>();
        for (int i = 0; i < 21; i++) {
            lists.add(new PageModel(i, i + "name", i, i + "info"));
        }
        // 自己封装的数据返回类型，bootstrap-table要求服务器返回的json数据必须包含：totlal，rows两个节点
        return JSON.toJSONString(new PageResult(total, lists));
    }

    class PageResult<T extends PageModel> {
        private int total;
        private List<T> rows;

        public PageResult(int total, List<T> lists) {
            super();
            this.total = total;
            this.rows = lists;
        }

        public int getTotal() {
            return total;
        }

        public void setTotal(int total) {
            this.total = total;
        }

        public List<T> getRows() {
            return rows;
        }

        public void setRows(List<T> rows) {
            this.rows = rows;
        }

    }

    class PageModel {
        private int id;
        private String name;
        private int age;
        private String info;

        public PageModel(int id, String name, int age, String info) {
            super();
            this.id = id;
            this.name = name;
            this.age = age;
            this.info = info;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }

        public String getInfo() {
            return info;
        }

        public void setInfo(String info) {
            this.info = info;
        }

    }

    @RequestMapping("/nav-third")
    public String navThird() {
        return "console/pages/nav-third";
    }

    private List<Menu> createMenu() {
        List<Menu> menus = new ArrayList<>();

        menus.add(new Menu("控制面板", "fa-tachometer", "dashboard.do"));
        // 官网最新地址
        // menus.add(new Menu("官网DEMO", "fa-link",
        // "http://madmin.swlabs.co/#/index", MenuLinkType.blank_link));
        // 当前使用地址
        menus.add(new Menu("官网DEMO", "fa-link", "http://swlabs.co/madmin/code",
                MenuLinkType.blank_link));

        Menu m1 = new Menu("表格", "fa-table");
        m1.addSubmenu(new Menu("普通表格", "fa-th-large", "table-simple.do"));
        m1.addSubmenu(
                new Menu("带搜索表格", "fa-search", "/console/table-search.do"));
        m1.addSubmenu(new Menu("bootsreap-table表格", "fa-search",
                "/console/bootsreap-table.do"));
        m1.addSubmenu(new Menu("表单跳转测试", "fa-search", "/testfromList.do"));
        menus.add(m1);

        Menu uiElements = new Menu("UI组件", "fa-send-o");
        uiElements.setLabel(new MenuLabel("violet", "基础"));

        Menu briefcase = new Menu("基本控件", "fa-briefcase");
        briefcase.addSubmenu(new Menu("图标", "fa-tint", "demo/base/icons.do"));
        briefcase.addSubmenu(new Menu("复选框 & 单选框", "fa-dot-circle-o",
                "demo/base/checkbox-radio.do"));
        briefcase.addSubmenu(
                new Menu("按钮", "fa-hand-o-up", "demo/base/buttons.do"));
        briefcase.addSubmenu(new Menu("标注和标记", "fa-tag", "demo/base/label.do"));
        briefcase.addSubmenu(new Menu("进度条", "glyphicon-minus",
                "demo/base/progressbars.do"));
        briefcase.addSubmenu(
                new Menu("滑块", "fa-arrows-h", "demo/base/sliders.do"));
        briefcase.addSubmenu(
                new Menu("更多组件", "fa-ellipsis-h", "demo/base/generals.do"));
        uiElements.addSubmenu(briefcase);

        Menu contents = new Menu("内容块与排版", "fa-list-alt");
        contents.addSubmenu(
                new Menu("Panels", "fa-th-large", "demo/base/panels.do"));
        contents.addSubmenu(
                new Menu("Portlets", "fa-instagram", "demo/base/portlets.do"));
        contents.addSubmenu(new Menu("Tabs", "fa-trello", "demo/base/tabs.do"));
        contents.addSubmenu(
                new Menu("警示框 & 便笺框", "fa-info-circle", "demo/base/alert.do"));
        contents.addSubmenu(
                new Menu("文字排版", "fa-font", "demo/base/typography.do"));
        contents.addSubmenu(
                new Menu("模态弹窗", "fa-list-alt", "demo/base/modals.do"));
        uiElements.addSubmenu(contents);

        Menu advanced = new Menu("高级扩展", "fa-rocket");
        advanced.addSubmenu(
                new Menu("加载动画", "fa-spinner", "demo/base/preloader.do"));
        advanced.addSubmenu(
                new Menu("富文本编辑器", "fa-edit", "demo/base/editors.do"));
        advanced.addSubmenu(new Menu("可移动树型结构", "fa-list-ol",
                "demo/base/nestable-list.do"));
        advanced.addSubmenu(new Menu("下拉选择", "fa-level-down",
                "demo/base/dropdown-select.do"));
        advanced.addSubmenu(
                new Menu("Notific8 & Message", "fa-exclamation-circle",
                        "demo/base/notific8-notifications.do"));
        advanced.addSubmenu(
                new Menu("Toastr Notifications", "fa-exclamation-triangle",
                        "demo/base/toastr-notifications.do"));
        advanced.addSubmenu(
                new Menu("树状图", "fa-sitemap", "demo/base/treeview.do"));
        uiElements.addSubmenu(advanced);

        menus.add(uiElements);

        Menu forms = new Menu("表单 form", "fa-edit");
        forms.addSubmenu(
                new Menu("表单布局", "fa-columns", "demo/form/layouts.do"));
        forms.addSubmenu(
                new Menu("基础示例", "fa-file-text-o", "demo/form/basic.do"));
        forms.addSubmenu(
                new Menu("表单组件", "fa-cube", "demo/form/components.do"));
        forms.addSubmenu(
                new Menu("X-editable 插件", "fa-edit", "demo/form/xeditable.do"));
        forms.addSubmenu(new Menu("表单向导", "fa-magic", "demo/form/wizard.do"));
        forms.addSubmenu(
                new Menu("表单验证", "fa-exclamation", "demo/form/validation.do"));
        forms.addSubmenu(new Menu("批量文件上传", "fa-upload",
                "demo/form/multiple-file-upload.do"));
        forms.addSubmenu(new Menu("拖拽上传", "fa-cloud-upload",
                "demo/form/dropzone-file-upload.do"));

        menus.add(forms);

        return menus;
    }

}
