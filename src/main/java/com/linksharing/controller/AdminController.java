package com.linksharing.controller;

import com.model.User;
import com.services.UserService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
@Controller
public class AdminController {

    @RequestMapping(value="/admin",method= RequestMethod.GET)
    public ModelAndView admin(){
        List<User> userList=getlist();
        ModelAndView modelAndView=new ModelAndView("Admin");
        modelAndView.addObject("userlist",userList);
        return modelAndView;
    }
    public List<User> getlist()
    {
        UserService userService=new UserService();
        return  userService.userList();
    }
    @RequestMapping(value = "/manage",method =RequestMethod.GET)
    public ModelAndView manage(HttpServletRequest request, HttpServletResponse response)

    {
        System.out.println(request.getParameter("id"));
        int id=Integer.parseInt(request.getParameter("id"));
        UserService userService=new UserService();
int result=userService.manageUser(id);

//      modelAndView.addObject("Admin")
        List<User> userList=  getlist();
        ModelAndView modelAndView=new ModelAndView("Admin");
        modelAndView.addObject("userlist",userList);
        return modelAndView;

    }
}
