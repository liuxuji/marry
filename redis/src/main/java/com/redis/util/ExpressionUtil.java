package com.redis.util;

import org.springframework.expression.Expression;
import org.springframework.expression.spel.support.StandardEvaluationContext;

/**
 * Created this file:
 *  表达式工具辅助类
 * @Author xiaobo.xiong
 * @Date 2017-10-16  14:59
 */
public class ExpressionUtil {

    /**
     * 传递的是id或者时间
     * @param itemContext
     * @param expression
     * @return
     */
    public static long getScore(StandardEvaluationContext itemContext, Expression expression) {
        if (expression == null) {
            return System.currentTimeMillis();
        } else {
            Object obj = expression.getValue(itemContext);
            if (obj instanceof java.util.Date) {
                return ((java.util.Date) obj).getTime();
            } if (obj instanceof java.sql.Date) {
                return ((java.sql.Date) obj).getTime();
            } if (obj instanceof java.sql.Timestamp) {
                return ((java.sql.Timestamp) obj).getTime();
            } else if (obj instanceof Number) {
                return ((Number) obj).longValue();
            } else {
                throw new IllegalArgumentException();
            }
        }
    }


    public static String getKey(Object ro, Expression expression) {
        return expression.getValue(ro).toString();
    }
}
