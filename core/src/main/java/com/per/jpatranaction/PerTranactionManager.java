package com.per.jpatranaction;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.google.common.collect.Lists;
import com.per.asserts.SystemAsserts;
import com.per.spring.event.PerEvent;
import com.per.spring.event.PerEventPublisher;
import com.per.util.ExecutionUnit;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.support.DefaultTransactionStatus;

import java.util.ArrayList;
import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  15:30
 */
public class PerTranactionManager extends JpaTransactionManager {

    private static final long serialVersionUID = 7283771278513333415L;

    private static PerEventPublisher eventPublisher;

    public void setEventPublisher(PerEventPublisher eventPublisher) {
        PerTranactionManager.eventPublisher = eventPublisher;
    }


    /**
     *	*** warnning ***
     *
     * 	所有threadlocal都必须在事务提交时clear内容或还原默认值,否则会出现令人迷惑的错误
     *
     * 异步事件列表
     */
    private static final ThreadLocal<List<PerEvent>> asyncEvents = new ThreadLocal<List<PerEvent>>();
    /**
     * 同步事件列表
     */
    private static final ThreadLocal<List<PerEvent>> syncEvents = new ThreadLocal<List<PerEvent>>();

    /**
     * 预提交执行代码(在commit之前执行,接受事务管理)
     */
    private static final ThreadLocal<List<ExecutionUnit>> preCommitOperate = new ThreadLocal<List<ExecutionUnit>>();
    /**
     * redis后置操作是不保存上下文的:
     * 		通常在hibernate或jpa上下文中,我们save一个po多次,只会在内存中进行操作合并,然后在事务提交时进行一次持久化操作
     * 		然而redis后置是比较简陋的一种妥协设计,每次调用都会在操作队列中新增一条带操作指令
     * 		这可能引起因为顺序混乱导致数据被覆盖,请注意
     */
    /** 事务提交后执行的代码,一般用作redis操作 */
    private static final ThreadLocal<List<ExecutionUnit>> redisOperate = new ThreadLocal<List<ExecutionUnit>>();
    /** 事务标志 */
    private static final ThreadLocal<Boolean> inTransactions = new ThreadLocal<Boolean>();

    public PerTranactionManager() {
        super();
    }

    @Override
    protected void doBegin(Object transaction, TransactionDefinition definition) {
        super.doBegin(transaction, definition);
        inTransactions.set(true);
    }

    @Override
    protected void doCommit(DefaultTransactionStatus status) {
        executeOpt(preCommitOperate);
        super.doCommit(status);
        try{
            doPostCommit();
        }catch(Throwable e){
            logger.error("post transaction execute error",e);
            e.printStackTrace();
        }finally{
            clearThreadLocal();
        }
    }

    private void doPostCommit() {
        executeOpt(redisOperate);
        publish(syncEvents, false);
        publish(asyncEvents, true);
        inTransactions.set(false);
    }

    private void executeOpt(ThreadLocal<List<ExecutionUnit>> unitThreadlocal) {
        List<ExecutionUnit> redisExecutionList = unitThreadlocal.get();
        if(redisExecutionList!=null){
            for (ExecutionUnit unit : redisExecutionList) {
                unit.execute();
            }
        }
    }

    private void clearThreadLocal(){
        clearList(syncEvents.get());
        clearList(asyncEvents.get());
        clearList(redisOperate.get());
        clearList(preCommitOperate.get());
        inTransactions.set(false);
    }
    private void clearList(List<?> list){
        if(list != null) list.clear();
    }

    private void publish(ThreadLocal<List<PerEvent>> events, boolean asyncPublish){
        List<PerEvent> list = events.get();
        if (CollectionUtils.isNotEmpty(list)) {
            for (PerEvent event : list) {
                if(asyncPublish){
                    eventPublisher.publishEvent(event);
                }else{
                    eventPublisher.syncPublishEvent(event);
                }
            }
            list.clear();
        }
    }

    @Override
    protected void doRollback(DefaultTransactionStatus status) {
        super.doRollback(status);
        if (logger.isDebugEnabled()) {
            logger.debug("rooback && clear event");
        }
        clearThreadLocal();
    }

    public static void publishEvent(PerEvent event, boolean asyncPublish) {
        SystemAsserts.notNull(eventPublisher, "事务管理器必须注入eventPublisher才能进行事件发布");
        Boolean transFlag = inTransactions.get();
        ThreadLocal<List<PerEvent>> events = asyncPublish ? asyncEvents : syncEvents;

        if (transFlag != null && transFlag.booleanValue()) {
            List<PerEvent> list = events.get();
            if (list == null) {
                list = Lists.newArrayList();
                events.set(list);
            }
            list.add(event);
        } else {
            eventPublisher.publishEvent(event);
        }
    }

    public static void delayExecuteIfInTx(ExecutionUnit unit){
        Boolean transFlag = inTransactions.get();
        if(transFlag!=null && transFlag){
            List<ExecutionUnit> list = redisOperate.get();
            if(list == null){
                list = new ArrayList<>(4);
                redisOperate.set(list);
            }
            list.add(unit);
        }else{
            throw new UnsupportedOperationException("redis后置操作必须在事务中执行");
        }
    }

    public static void preCommitOpt(ExecutionUnit unit) {
        Boolean transFlag = inTransactions.get();
        if(transFlag!=null && transFlag){
            List<ExecutionUnit> list = preCommitOperate.get();
            if(list == null){
                list = new ArrayList<>(4);
                preCommitOperate.set(list);
            }
            list.add(unit);
        }else{
            unit.execute();
        }
    }

    public static void setInTransaction(boolean intx){
        inTransactions.set(intx);
    }

}
