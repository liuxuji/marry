package com.per.controller.perphoto;

import com.per.service.perphoto.PerPhotoFrontedService;
import com.per.vo.perphoto.PhotoDataReqVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-27  15:37
 */
@RequestMapping("/marry")
@RestController
public class ShowPerPhotoController{

    @Autowired
    private PerPhotoFrontedService perPhotoFrontedService;

    @RequestMapping("/show/{id}")
    public ModelAndView index(@PathVariable Long id){
        PhotoDataReqVo vo = new PhotoDataReqVo();
        vo.setId(id);
        return new ModelAndView("/perphoto/main").addObject("mainData",perPhotoFrontedService.findPerPhotoById(vo));
    }


}
