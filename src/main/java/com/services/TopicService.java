package com.services;

import com.constant.Seriousness;
import com.dao.SubscriptionDaoImpl;
import com.dao.TopicDaoImpl;
import com.dao.UserDaoImpl;
import com.model.Subscription;
import com.model.Topic;
import com.model.User;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TopicService {
    public boolean savetopic(Topic topic, int userid) {
        TopicDaoImpl topicDao = new TopicDaoImpl();
        Topic topic1 = topicDao.isexistsTopic(topic);
        Subscription subscription = new Subscription();
        subscription.setSeriousness(Seriousness.VerySerious);
        subscription.setTopic(topic);

        if (topic1 != null)
            return false;
        else {
            Date date = new Date();
            SimpleDateFormat spl = new SimpleDateFormat("yyyy-MM-dd");
            String d = spl.format(date);
            try {
                date = spl.parse(d);
                topic.setDateCreated(date);
                topic.setLastUpdated(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            User user = new UserDaoImpl().getUser(userid);
            topic.setCreatedBy(user);
            subscription.setUser(user);
            subscription.setDateCreated(date);

            int saveTopic = topicDao.saveTopic(topic);
            int savesubsciption = new SubscriptionDaoImpl().save(subscription);
            if (savesubsciption == 1 && saveTopic == 1) {
                return true;


            }


        }
        return false;
    }
}