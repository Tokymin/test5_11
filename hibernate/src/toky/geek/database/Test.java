package toky.geek.database;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Test {
    public static void main(String[] args) {
        //1.读取配置文件信息,并创建管理配置文件信息的对象 cfg。
        Configuration cfg = new Configuration();
        cfg.configure();//默认加载src目录下的主配置文件hibernate.cfg.xml。

        //2.利用管理配置文件信息的对象 cfg来创建SessionFactory对象即会话工厂对象。
        SessionFactory sf = cfg.buildSessionFactory();

        //3.根据会话工厂对象来创建会话对象session
        Session session = sf.openSession();


        //5. 对数据的crud操作

        StudentEntity user = new StudentEntity();
        user.setName("Toky223");
        user.setNp("123");
        user.setSex("女");

        //6.提交事物
        //4.开启事物,并得到事物管理对象tx
        Transaction tx = session.beginTransaction();

        //7.关闭资源
        try {
            session.save(user);
            tx.commit();
        } catch (Exception e) {
//            tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
            sf.close();
        }


    }


}
