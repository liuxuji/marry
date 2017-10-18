package com.per.init;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-9  16:53
 */
public class ContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("system contextInitialized");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("System contextDestroyed");
    }
}
