package klu.controller;

import klu.model.managersignup;
import klu.repos.ManagerSignupRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class MnSignUpController {

    @Autowired
    private ManagerSignupRepository managerSignupRepos;

    @PostMapping("/save")
    public String registerManager(@ModelAttribute("manager") managersignup manager, Model model) {
        // Validate email
        int emailExists = managerSignupRepos.validateEmail(manager.getMnemail());
        if (emailExists > 0) {
            model.addAttribute("error", "Email is already in use.");
            return "mnsignup";
        }

        // Save the manager if email is unique
        managerSignupRepos.save(manager);
        return "redirect:/mnsignin"; // Redirect to the sign-in page after successful registration
    }
}
