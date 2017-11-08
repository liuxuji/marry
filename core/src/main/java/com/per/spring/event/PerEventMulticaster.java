package com.per.spring.event;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.SimpleApplicationEventMulticaster;
import org.springframework.core.ResolvableType;
import org.springframework.util.Assert;
import org.springframework.util.ErrorHandler;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:39
 */
public class PerEventMulticaster extends SimpleApplicationEventMulticaster {

    {
        this.setTaskExecutor(Executors.newSingleThreadExecutor());
        this.setErrorHandler(new EventLoggingErrorHandler());
    }

    @Override
    public void multicastEvent(ApplicationEvent event) {
        multicastEvent(event, resolveDefaultEventType(event));
    }

    @Override
    public void multicastEvent(final ApplicationEvent event, ResolvableType eventType) {
        Executor executor = getTaskExecutor();
        boolean isAsyncEvent = isAsyncEvent(event);
        final ApplicationEvent sourceEvent = findSourceEvent(event);
		/*
		 * 使用applicationEventPublisher的publishEvent(Object)方法
		 * 发布的事件才会在参数中有eventType属性
		 */
        ResolvableType type = (eventType != null ? eventType : resolveDefaultEventType(sourceEvent));
        for (final ApplicationListener<?> listener : getApplicationListeners(sourceEvent, type)) {
			/*
			 * 如果是异步事件,使用线程池发布,否则直接调用监听器
			 */
            if (isAsyncEvent) {
                executor.execute(new Runnable() {
                    @Override
                    public void run() {
                        invokeListener(listener, sourceEvent);
                    }
                });
            } else {
                invokeListener(listener, sourceEvent);
            }
        }
    }

    /**
     * 如果事件是BizEventWrapper,要取出它的原始事件进行发布
     *
     * @param event
     * @return
     */
    private ApplicationEvent findSourceEvent(ApplicationEvent event) {
        return event instanceof PerEventWrapper ? ((PerEventWrapper) event).getEvent() : event;
    }

    /**
     * 所有被SyncBizEventWrapper包装的事件都是同步事件, 其他是异步事件
     * 如有需要可以自行覆写本方法
     *
     * @param event
     * @return
     */
    protected boolean isAsyncEvent(ApplicationEvent event) {
        return !(event instanceof SyncPerEventWrapper);
    }

    private ResolvableType resolveDefaultEventType(ApplicationEvent event) {
        return ResolvableType.forInstance(event);
    }

    @Override
    protected Executor getTaskExecutor() {
        Executor executor = super.getTaskExecutor();
        Assert.notNull(executor, "multicaster's executor cannot be null,don't tucao my english");
        return executor;
    }

    static class EventLoggingErrorHandler implements ErrorHandler {
        private Logger logger = LoggerFactory.getLogger(getClass());

        @Override
        public void handleError(Throwable t) {
            t.printStackTrace();
            logger.error("事件调用出错,message={},ex={}", t.getMessage(), t);
        }

    }



}
