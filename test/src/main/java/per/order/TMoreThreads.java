package per.order;

import com.google.common.base.Charsets;
import com.google.common.util.concurrent.*;

import java.util.Date;
import java.util.concurrent.*;

/**
 * Created this file:
 * Callable: 执行线程完后可以有 返回值；Runnable:无返回值
 * Future: 可以获取 线程执行完后的结果
 * ListenableFuture: 在Future 基础上 进行封装，能获取到返回值 和 异常信息
 * @Author xiaobo.xiong
 * @Date 2017-9-26  13:38
 */
public class TMoreThreads {

    ListeningExecutorService service = MoreExecutors.listeningDecorator(Executors.newFixedThreadPool(10));

    public void test1(){

        ListenableFuture future = service.submit(new Callable() {
            @Override
            public Integer call() throws Exception {
                return (int)(Math.random()*10 + 1);
            }
        });

        Futures.addCallback(future, new FutureCallback() {
            @Override
            public void onSuccess(Object o) {
                StringBuffer stringBuffer = new StringBuffer(Thread.currentThread().getName())
                        .append(":").append(new Date()).append(":").append(Math.random())
                        .append("success").append(":").append(o);
                System.out.println(stringBuffer.toString());
            }

            @Override
            public void onFailure(Throwable throwable) {
                StringBuffer stringBuffer = new StringBuffer(Thread.currentThread().getName())
                        .append(":").append(new Date()).append(":").append(Math.random())
                        .append("failure").append(throwable);
                System.out.println(stringBuffer.toString());
            }
        });
    }

    public void test2(){
        String msg = "Hello,World!Mr熊";
        byte[] bytes = msg.getBytes(Charsets.UTF_8);
        String mm = new String(bytes,Charsets.ISO_8859_1);
        System.out.println(mm);
        byte[] b2 = mm.getBytes(Charsets.ISO_8859_1);
        System.out.println(new String(b2,Charsets.UTF_8));
    }

    public static void main(String[] args){
        new TMoreThreads().test2();
    }


}
