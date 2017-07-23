package com.dao;

import com.model.User;
import com.services.Login;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;


public class UserDaoImpl implements UserDao {
   public  SessionFactory sessionFactory;
    public UserDaoImpl()
    {
      sessionFactory =new Configuration().configure().buildSessionFactory();
    }
    public int register(User user)
    {

        Session session=sessionFactory.openSession();
        Transaction transaction=session.beginTransaction();

        session.save(user);
        transaction.commit();
        return 1;
    }
    public User getUser(Login login)
    {
     Session session=sessionFactory.openSession();
     String sql="from User where username='"+login.getUsername()+"' and password='"+login.getPassword()+"'";
     Query query=session.createQuery(sql);
//     List<User> userList=query.list();
        User user=(User)query.uniqueResult();


 return  user;


    }
    public List<User> getAllUser()
    {
        Session session=sessionFactory.openSession();
        String sql="from User";
        Query query=session.createQuery(sql);
        List<User> userList=query.list();
        return userList;
    }
    public boolean getStatus(int id)
    {
        Session session=sessionFactory.openSession();
        String sql="from User where Id="+id;
        Query query=session.createQuery(sql);
        List<User> userList=query.list();
        boolean status=false;
        for(User u:userList)
        {
            System.out.println(u.isActive());
            status=u.isActive();

        }
        return status;
    }
    public int  setStatus(boolean status,int id)
    {
        Session session=sessionFactory.openSession();
        Transaction transaction=session.beginTransaction();
        String sql="update User  set active=:status WHERE Id = :userid";
        Query query=session.createQuery(sql);
        query.setParameter("status",status);
        query.setParameter("userid",id);
        int result=query.executeUpdate();
        transaction.commit();
        return result;
    }
    public User getUser(String username)
    {
        Session session=sessionFactory.openSession();
        String sql="from User where username='"+username+"'";
        Query query=session.createQuery(sql);
//     List<User> userList=query.list();
        User user=(User)query.uniqueResult();


        return  user;
    }
    public User getUser(int userid)
    {
        Session session=sessionFactory.openSession();
        String sql="from User where Id="+userid;
        Query query=session.createQuery(sql);
//     List<User> userList=query.list();
        User user=(User)query.uniqueResult();


        return  user;
    }

}
