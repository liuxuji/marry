package com.per.controller;

import com.alibaba.fastjson.JSONObject;
import com.per.dao.ro.FirstRo;
import com.per.result.JSONResult;
import com.per.service.test.ITestService;
import com.per.vo.map.MapLocationInfo;
import com.per.vo.test.TestVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-11  14:24
 */
@RequestMapping(value = "/hh",method = {RequestMethod.GET,RequestMethod.POST})
@RestController
public class TestController {

    private static Logger logger = LoggerFactory.getLogger(TestController.class);

    @Autowired
    private ITestService iTestService;

    /**
     * 这里返回值写为 String时，spring的管理容器默认是：返回的 modelAndView，会去找相应的页面
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/H")
    public String H(HttpServletRequest request, HttpServletResponse response){
        logger.debug("It's begin...");
        return "123";
    }

    @RequestMapping("/J")
    public String JJ(){
        logger.info("Hello");
        return new TestVo("11","12").toString();
    }

    @RequestMapping("/save")
    public JSONResult save(String name,String value){
        FirstRo ro = new FirstRo(name,value);
        ro.setId(System.currentTimeMillis());
        iTestService.save(ro);
        return new JSONResult(ro);
    }

    @RequestMapping("/delete/{id}")
    public JSONResult delete(Long id){
        iTestService.delete(id);
        return new JSONResult();
    }

    @RequestMapping("/all")
    public JSONResult findAll(){
        List<FirstRo> list = iTestService.findAll();
        return new JSONResult(list);
    }

    @RequestMapping("/index")
    public ModelAndView index(Integer id){
        if(id != null){
            if(id == 2){
                return new ModelAndView("/location/location2");
            }
            return new ModelAndView("index1");
        }
        return new ModelAndView("index");
    }

    @RequestMapping("/map")
    public ModelAndView map(Double lat,Double lon){
        System.out.println(lat + "," + lon);
        return new ModelAndView("index1").addObject("map",new MapLocationInfo(lat,lon));
    }


    public static void main(String[] args){
        String msg = "\"adFullArea\":\"{\\\"content\\\":\\\"\\\",\\\"mark\\\":\\\"15458\\\",\\\"sourcePath\\\":\\\"https://1919-new-bbc-pro.oss-cn-beijing.aliyuncs.com/9444b92e-591b-4b13-9065-bdde5eb0577c\\\",\\\"title\\\":\\\"919热销\\\",\\\"url\\\":\\\"https://kuaihe-50.1919.cn/promotion/html/purehtml/414222831923081216.do\\\"}\"";
        System.out.println(msg);
        System.out.println(JSONObject.parseObject(msg));
    }


}
