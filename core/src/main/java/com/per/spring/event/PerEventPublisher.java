package com.per.spring.event;

import com.per.asserts.SystemAsserts;
import com.per.exception.SystemException;
import com.per.jpatranaction.PerTranactionManager;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  16:53
 */
public class PerEventPublisher implements ApplicationEventPublisherAware{

    private ApplicationEventPublisher applicationEventPublisher;

    @Override
    public void setApplicationEventPublisher(ApplicationEventPublisher applicationEventPublisher) {
        this.applicationEventPublisher = applicationEventPublisher;
    }

    public void publishEvent(PerEvent event) {
        SystemAsserts.notNull(event, "发布事件时事件对象不能为null");
        applicationEventPublisher.publishEvent(new AsyncPerEventWrapper(event));
    }

    public void syncPublishEvent(PerEvent event) {
        SystemAsserts.notNull(event, "发布事件时事件对象不能为null");
        applicationEventPublisher.publishEvent(new SyncPerEventWrapper(event));
    }


    public void publishEventUsingTransactionManager(PerEvent event) {
        SystemAsserts.notNull(event, "发布事件时事件对象不能为null");
        try {
            PerTranactionManager.publishEvent(event, true);
        } catch (SystemException e) {
            throw new UnsupportedOperationException("你可能没有使用BizTranactionManager来作为事务管理器", e);
        }
    }

    public void syncPublishEventUsingTransactionManager(PerEvent event) {
        SystemAsserts.notNull(event, "发布事件时事件对象不能为null");
        try {
            PerTranactionManager.publishEvent(event, false);
        } catch (SystemException e) {
            throw new UnsupportedOperationException("你可能没有使用BizTranactionManager来作为事务管理器", e);
        }
    }

}
