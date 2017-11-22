package com.per.service;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.per.service.system.IdService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-20  9:46
 */
public abstract class AbstractBaseService {
    @Autowired
    public IdService idService;


    /**
     * String 转为 list
     * @param pics
     * @return
     */
    public List<Long> transStringToListLong(String pics){
        if(StringUtils.isEmpty(pics)){
            return null;
        }
        List<Long> longs = null;
        /** 用google guava工具类进行String to list的转换ltrimResults:首尾去空白;omitEmptyStrings:过滤空数据*/
        List<String> list = Splitter.on(",").trimResults().omitEmptyStrings().splitToList(pics);
        if(CollectionUtils.isNotEmpty(list)){
            longs = Lists.newArrayList();
            for(String pic : list){
                longs.add(Long.parseLong(pic));
            }
        }
        return longs;
    }




















}
