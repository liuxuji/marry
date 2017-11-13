package com.per.controller.admin.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:31
 */
@Controller
public class LoginController {
    private static Map<String, String> auths;
    static {
        auths = new HashMap<>();
        auths.put("admin", "admin");
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public ModelAndView welcome(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "用户名或密码不正确!");
        }
        if (logout != null) {
            model.addObject("msg", "您已成功注销系统.");
        }
        model.setViewName("login/login");
        return model;
    }
}
