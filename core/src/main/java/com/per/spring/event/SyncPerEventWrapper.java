package com.per.spring.event;

import org.springframework.context.ApplicationEvent;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:25
 */
public class SyncPerEventWrapper extends ApplicationEvent implements PerEventWrapper {

    private final PerEvent bizEvent;

    public SyncPerEventWrapper(PerEvent event) {
        super(event.getSource());
        this.bizEvent = event;
    }


    @Override
    public PerEvent getEvent() {
        return bizEvent;
    }
}
