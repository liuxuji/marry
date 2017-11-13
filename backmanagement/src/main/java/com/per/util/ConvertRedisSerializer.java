package com.per.util;

import com.alibaba.fastjson.JSON;
import org.apache.commons.collections.MapUtils;
import org.codelogger.utils.ArrayUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

import java.util.HashMap;
import java.util.Map;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  14:29
 */
public class ConvertRedisSerializer implements RedisSerializer {

    private static final Logger logger = LoggerFactory.getLogger(ConvertRedisSerializer.class);

    private static final String KEY = "className";

    @Override
    public byte[] serialize(Object param) throws SerializationException {
        if (param == null) {
            return new byte[0];
        }
        return JSON.toJSONString(param).getBytes();
    }

    @Override
    public Object deserialize(byte[] param) throws SerializationException {
        if (ArrayUtils.isEmpty(param)) {
            return null;
        }
        final Object temp = JSON.parse(new String(param));
        if (temp instanceof Map) {
            Map<String, Object> convertTemp = (HashMap<String, Object>) temp;
            if (MapUtils.isNotEmpty(convertTemp) && convertTemp.get(KEY) != null) {
//                try {
                return JSON.parseObject(new String(param));
//                    return JsonUtil.json2Obj(new String(param), Class.forName(convertTemp.get(KEY).toString()));
//                }
            }
            return temp;
        }
        return null;
    }
}