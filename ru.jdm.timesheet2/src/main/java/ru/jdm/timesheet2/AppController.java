package ru.jdm.timesheet2;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.jdm.timesheet2.entity.User;
import ru.jdm.timesheet2.repository.UserRepository;

import java.util.Collection;


/**
 * Root app controller
 *
 */
@Controller
public class AppController
{
    @Autowired
    UserRepository userRepository;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/timetable")
    public ModelAndView user() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("timetable");

        return mv;
    }

    @RequestMapping("/user")
    public ModelAndView user(@RequestParam(value = "userId", required = false) Long userId) {
        User user = userRepository.findById(userId).get();

        ModelAndView mv = new ModelAndView();
        mv.addObject("user", user);
        mv.setViewName("user/form");

        return mv;
    }

    @RequestMapping("/user/list")
    public ModelAndView users() {

        Collection<User> users = (Collection<User>) userRepository.findAll();

        ModelAndView mv = new ModelAndView();
        mv.addObject("users", users);
        mv.setViewName("user/list");

        return mv;
    }
}
