package com.per.spring.event;

import org.springframework.context.ApplicationEvent;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:21
 */
public class PerEvent extends ApplicationEvent {

    public PerEvent(Object source) {
        super(source);
    }
}
