package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
	
		@GetMapping("/") // Home page
	    public ModelAndView main() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("main"); // Spring will resolve this to /home.jsp
	        return mv;
	    }
		
	 	@GetMapping("/home") // Home page
	    public ModelAndView home() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("home"); // Spring will resolve this to /home.jsp
	        return mv;
	    }
	 	
	 	@GetMapping("/lifecareer") // Home page
	    public ModelAndView lifecareer() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("lifecareer"); // Spring will resolve this to /home.jsp
	        return mv;
	    }
	 	
	 	@GetMapping("/managerhome") // Home page
	    public ModelAndView managerhome() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("managerhome"); // Spring will resolve this to /home.jsp
	        return mv;
	    }
	 	
	    @GetMapping("/signin")
	    public ModelAndView signin() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("signin"); // /signin.jsp
	        return mv;
	    }
	    @GetMapping("/signup") // Sign Up page
	    public ModelAndView SignUp() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("signup"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    
	    @GetMapping("/mnsignin")
	    public ModelAndView mnsignin() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("mnsignin"); // /signin.jsp
	        return mv;
	    }
	    @GetMapping("/mnsignup") // Sign Up page
	    public ModelAndView mnSignUp() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("mnsignup"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    
	    @GetMapping("/career") // Career Opportunities page
	    public ModelAndView careerOpportunities() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("career"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    
	    @GetMapping("/term") // Career Opportunities page
	    public ModelAndView term() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("term"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }

	    @GetMapping("/placements") // Placements page
	    public ModelAndView placements() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("placements"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    @GetMapping("/apply")
	    public ModelAndView apply() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("apply"); // /signin.jsp
	        return mv;
	    }
	    
	    @GetMapping("/success")
	    public ModelAndView success() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("success"); // /signin.jsp
	        return mv;
	    }

	    @GetMapping("/contactus") // Contact Us page
	    public ModelAndView contactus() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("contactus"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    @GetMapping("/courses") // Courses page
	    public ModelAndView courses() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("courses"); // No need for .jsp, Spring automatically adds the suffix
	        return mv;
	    }
	    
}