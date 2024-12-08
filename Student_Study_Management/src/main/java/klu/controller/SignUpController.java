package klu.controller;

import klu.model.SignUp;
import klu.model.SignupManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {

    @Autowired
    private SignupManage signupManage;

    

    // Handle form submission
    @PostMapping("/signup/save")
    public String saveSignup(SignUp signUp, Model model) {
        String message = signupManage.saveUser(signUp);  // Save the user in the database

        // If the user is successfully saved, redirect to the home page
        if (message.equals("User successfully added.")) {
            return "redirect:/home";  // Redirect to home.jsp
        } else {
            // If there's an error, show the signup form with an error message
            model.addAttribute("message", message);
            return "signup";
        }
    }
}
