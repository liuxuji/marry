package com.per.controller.perphoto;

import com.per.controller.BaseController;
import com.per.result.JSONResult;
import com.per.service.perphoto.PerPhotoService;
import com.per.table.BootstrapTablePageResult;
import com.per.vo.page.PageVo;
import com.per.vo.perphoto.PerPhotoVo;
import com.per.vo.perphoto.PhotoDataReqVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-20  11:13
 */
@Controller
@RequestMapping("/perphoto")
public class PerPhotoController extends BaseController{

    @Autowired
    private PerPhotoService perPhotoService;

    /** 进入列表页 */
    @RequestMapping("/list")
    public ModelAndView list(){
        return new ModelAndView("/perphoto/list");
    }

    /** 进入列表页 ajax获取到的数据*/
    @RequestMapping("/allData")
    @ResponseBody
    public BootstrapTablePageResult getDataInit(PageVo vo){
        return perPhotoService.findAllPhoto(vo);
    }

    /** 列表页 点击详情 进入详情页,附带参数id;点击添加也跳这,参数id为null*/
    @RequestMapping("/detail")
    public ModelAndView getDataDetail(HttpServletRequest request,Long id){
        ModelAndView modelAndView = new ModelAndView("/perphoto/detail");
        PhotoDataReqVo vo = new PhotoDataReqVo();
        vo.setId(id);
        modelAndView.addObject("dataDetail",perPhotoService.findPhotoDataById(vo));
        return modelAndView;
    }

    @RequestMapping("/elements")
    public ModelAndView getElement(@RequestParam Integer index){
        return new ModelAndView("/perphoto/perphotodata").addObject("index",index);
    }


    /** 保存数据*/
    @RequestMapping("/save")
    @ResponseBody
    public JSONResult save(HttpServletRequest request, PerPhotoVo vo){
        if(vo == null){
            return JSONResult.errorResult("参数为null");
        }
        perPhotoService.save(vo);
        return new JSONResult();
    }

    /** 删除数据*/
    @RequestMapping("/delPhotoData")
    @ResponseBody
    public JSONResult delete(HttpServletRequest request,Long id){
        PhotoDataReqVo vo = new PhotoDataReqVo();
        vo.setId(id);
        perPhotoService.delPhotoData(vo);
        return new JSONResult();
    }

    @RequestMapping("/test")
    public ModelAndView test(){
        return new ModelAndView("/perphoto/test");
    }

}
