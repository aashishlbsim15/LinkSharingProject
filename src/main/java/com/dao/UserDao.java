package com.dao;

import com.model.User;
import com.services.Login;

import java.util.List;

public interface UserDao {
   int register(User user);
   User getUser(Login login);
     List<User> getAllUser();
    boolean getStatus(int id);
    int  setStatus(boolean status,int id);
  User getUser(String username);
   User getUser(int userid);
}
