package com.dao;

import com.model.Topic;

public interface TopicDao {
    Topic isexistsTopic(Topic topic);
     int saveTopic(Topic topic);
}
