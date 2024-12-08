package klu.controller;

import klu.model.SigninManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignInController {

    @Autowired
    private SigninManage signinManage;

    

    // Handle POST requests to validate credentials
    @PostMapping("/signin/validate")
    public String validateSignin(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            Model model) {

        String message = signinManage.validateUser(email, password);

        if (message.equals("Login successful")) {
            return "redirect:/home";  // Redirect to the home page if login is successful
        } else {
            model.addAttribute("errorMessage", "Invalid email or password. You don't have an account!");
            return "signin";  // Display error message on the same signin.jsp page
        }
    }
}
