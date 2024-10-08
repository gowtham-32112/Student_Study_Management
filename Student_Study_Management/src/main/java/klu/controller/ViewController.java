package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
    
   
    @GetMapping("/") // This will handle GET requests to /home
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home"); // This will load home.jsp
        return mv;
    }

    @GetMapping("/signin")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("signin"); // Change this to your actual Sign In page JSP name
        return mv;
    }
    
    @GetMapping("/signup")
    public ModelAndView userSignUp() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("signup"); // Change this to your actual Sign Up page JSP name
        return mv;
    }

    @GetMapping("/career")
    public ModelAndView careerOpportunities() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("career"); // Change this to your actual Career Opportunities page JSP name
        return mv;
    }

    @GetMapping("/placements")
    public ModelAndView placements() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("placements"); // Change this to your actual Placements page JSP name
        return mv;
    }
    @GetMapping("/contactus")
    public ModelAndView contactus() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("contactus"); // Change this to your actual Career Opportunities page JSP name
        return mv;
    }
    @GetMapping("/courses")
    public ModelAndView courses() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("courses"); // Change this to your actual Career Opportunities page JSP name
        return mv;
    }
}
