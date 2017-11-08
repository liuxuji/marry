package com.per.spring.event;

import org.springframework.context.ApplicationEvent;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:22
 */
public class AsyncPerEventWrapper extends ApplicationEvent implements PerEventWrapper {

    private final PerEvent event;

    public AsyncPerEventWrapper(PerEvent event) {
        super(event.getSource());
        this.event = event;
    }

    @Override
    public PerEvent getEvent() {
        return event;
    }
}
