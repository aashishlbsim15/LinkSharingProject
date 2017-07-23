package com.dao;

import com.model.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class TopicDaoImpl implements TopicDao {
    public SessionFactory sessionFactory;
    public TopicDaoImpl()
    {
        sessionFactory =new Configuration().configure().buildSessionFactory();
    }
    public Topic isexistsTopic(Topic topic)
    {
        Session session=sessionFactory.openSession();
        String name=topic.getName();
        String sql="from topic where name="+name;
        Query query=session.createQuery(name);
        Topic t=(Topic)query.uniqueResult();
return topic;

    }
    public int saveTopic(Topic topic)
    {
     Session session=sessionFactory.openSession();
     session.save(topic);
     session.beginTransaction().commit();
     return 1;
    }
}
