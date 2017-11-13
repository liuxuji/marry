package com.per.controller.admin.console;

import com.per.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:29
 */
@Controller
@RequestMapping("/console/demo")
public class DemoController extends BaseController {
    @RequestMapping("/{type}/{id}")
    public String html(@PathVariable(value = "type") String type, @PathVariable(value = "id") String id) {
        return String.format("console/demo/%s/%s", type, id);
    }
}
