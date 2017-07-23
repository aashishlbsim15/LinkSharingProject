
package com.services;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.model.User;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public class UserService {
    public boolean validateDetails(User user) throws ParseException {
        String username = user.getUsername();
        String password = user.getPassword();
        if (username != null && password != null) {
            Date date=new Date();
            SimpleDateFormat spl=new SimpleDateFormat("yyyy-MM-dd");
            String d=spl.format(date);
            try {
                date=spl.parse(d);
                user.setDateCreated(date);
                user.setLastUpdated(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            UserDaoImpl userDao = new UserDaoImpl();
            userDao.register(user);
            return true;
        } else {
            return false;
        }
    }

    public boolean isValidUser(Login login) {
        String username = login.getUsername();
        String password = login.getPassword();
        if (username != null && password != null) {
            UserDaoImpl userDao = new UserDaoImpl();
            boolean status=false;
           User user= userDao.getUser(login);
           if(user!=null)
          status  =userDao.getStatus(user.getId());
            if(status==true && user!=null)
                return true;
            else
                return false;
        }
        return false;
    }
    public List<User> userList()
    {
        UserDaoImpl userDao=new UserDaoImpl();
        List<User> userlist=userDao.getAllUser();
        return userlist;

    }

    public int manageUser(int id)
    {
        UserDaoImpl userDao=new UserDaoImpl();

     boolean status=userDao.getStatus(id);
     int result;
     if(status==true)
         result=userDao.setStatus(false,id);
     else
         result=userDao.setStatus(true,id);
     return result;

    }
}

