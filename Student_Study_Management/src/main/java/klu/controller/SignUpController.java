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

    @RequestMapping("/signup")
    public String showSignupForm() {
        return "signup";  // Display the signup form (signup.jsp)
    }

    @PostMapping("/signup/save")
    public String saveSignup(SignUp signUp, Model model) {
        String message = signupManage.saveUser(signUp);  // Save the user
        model.addAttribute("message", message);  // Display success/error message
        if (message.equals("User successfully added.")) {
            return "redirect:/";  // Redirect to home page upon success
        } else {
            return "signup";  // Stay on the signup page if there’s an error
        }
    }
}
