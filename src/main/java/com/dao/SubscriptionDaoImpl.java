package com.dao;

import com.model.Subscription;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class SubscriptionDaoImpl implements SubscriptionDao{
    public SessionFactory sessionFactory;
    public SubscriptionDaoImpl()
    {
        sessionFactory =new Configuration().configure().buildSessionFactory();
    }
    public int save(Subscription subscription)
    {
        Session session=sessionFactory.openSession();
        session.save(subscription);
        session.beginTransaction().commit();
        return 1;
    }




}
