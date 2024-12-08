package klu.controller;

import klu.repos.ManagerSigninRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class MnSignInController {
    
    @Autowired
    private ManagerSigninRepos managerSigninRepos;
    
    @PostMapping("/validate")
    public String validateSignin(@RequestParam("mnemail") String mnemail, @RequestParam("mnpassword") String mnpassword, Model model) {
        // Validate email and password
        int isValid = managerSigninRepos.validateCredentials(mnemail, mnpassword);
        if (isValid > 0) {
            return "redirect:/manager/dashboard"; // Redirect to the manager's dashboard on successful login
        } else {
            model.addAttribute("error", "Invalid email or password. Please try again.");
            return "mnsignin";
        }
    }
}