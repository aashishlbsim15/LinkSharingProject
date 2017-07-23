package com.linksharing.controller;

import com.constant.Visibility;
import com.model.Topic;
import com.model.User;
import com.services.TopicService;
import com.services.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class TopicController {
    @RequestMapping(value = "/createTopic",method = RequestMethod.POST)
    public ModelAndView savetopic(@ModelAttribute Topic topic, HttpServletRequest request,HttpServletResponse response) {
        TopicService topicService = new TopicService();
        topic.setVisibility(Visibility.Private);
        System.out.println(topic.getName());
        HttpSession session = request.getSession();
        int userid = (Integer) session.getAttribute("userid");
        boolean save = topicService.savetopic(topic, userid);

        if (save == true) {
            ModelAndView modelAndView = new ModelAndView("Dashboard");
            return modelAndView;
        } else {
            ModelAndView modelAndView = new ModelAndView("Dashboard", "error", "Topic already exists");

            return modelAndView;

        }

    }
}
