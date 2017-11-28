package com.per.service;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.per.service.system.IdService;
import com.per.util.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-20  9:46
 */
public abstract class AbstractBaseService {
    @Autowired
    public IdService idService;

    public static final String ID = "id";

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

    /**
     * 实体转为json数据
     * @param suorce 转换目标类型
     * @param fields 给定 字段 的数组
     * @param <V>
     * @return
     */
    public <V> JSONObject ObjFieldToString(V suorce, String... fields) {
        if (suorce == null) {
            return null;
        }
        String jsonStr = JsonUtil.obj2Json(suorce);
        JSONObject json = JSONObject.parseObject(jsonStr);
        JSONObject jsonObject = jsonFieldToString(json, fields);
        return jsonObject;
    }

    /**
     *
     * @param sources
     * @param fields
     * @param <V>
     * @return
     */
    public <V> JSONArray listObjFieldToString(Collection<V> sources, String... fields) {
        JSONArray jsonArray = new JSONArray();
        if (sources != null && sources.size() > 0) {
            for (V source : sources) {
                String jsonStr = JsonUtil.obj2Json(source);
                JSONObject json = JSONObject.parseObject(jsonStr);
                JSONObject jsonObject = jsonFieldToString(json, fields);
                jsonArray.add(jsonObject);
            }

        }
        return jsonArray;
    }

    private JSONArray jsonArrayFieldToString(JSONArray jsonArray, String[] fields) {
        try {
            if (jsonArray != null && jsonArray.size() > 0) {
                Iterator<Object> it = jsonArray.iterator();
                while (it.hasNext()) {
                    Object nextObject = it.next();
                    if (nextObject.getClass() == JSONObject.class) {
                        JSONObject jsonObject = (JSONObject) nextObject;
                        packageJsonObject(jsonObject,fields);

                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonArray;
    }

    private JSONObject jsonFieldToString(JSONObject jsonObject, String[] fields) {
        try {
            if (jsonObject != null) {
                packageJsonObject(jsonObject,fields);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonObject;
    }

    private void packageJsonObject(JSONObject jsonObject, String[] fields){
        Set<String> keys = jsonObject.keySet();
        if (keys != null && keys.size() > 0) {
            for (String key : keys) {
                if (jsonObject.get(key) != null && jsonObject.get(key).getClass() == JSONArray.class) {
                    jsonObject.put(key, jsonArrayFieldToString(jsonObject.getJSONArray(key), fields));
                } else if (jsonObject.get(key) != null
                        && jsonObject.get(key).getClass() == JSONObject.class) {
                    jsonObject.put(key, jsonFieldToString(jsonObject.getJSONObject(key), fields));
                } else {
                    for (String field : fields) {
                        if (key.equals(field)) {
                            Object object = jsonObject.get(field);
                            if (object != null) {
                                jsonObject.put(field, object.toString());
                            }
                        }
                    }
                }
            }
        }
    }



















}
