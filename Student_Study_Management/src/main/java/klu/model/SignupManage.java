package klu.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import klu.repos.SignupRepos;

@Service
public class SignupManage {
    private static final Logger logger = LoggerFactory.getLogger(SignupManage.class);

    @Autowired
    private SignupRepos signupRepos;

    public String saveUser(SignUp signUp) {
        logger.info("Attempting to save user: {}", signUp.getEmail());
        
        try {
            // Check if the email already exists
            if (signupRepos.validateEmail(signUp.getEmail()) > 0) {
                logger.warn("Email already exists: {}", signUp.getEmail());
                return "Email already exists. Please choose a different one.";
            }
            // Save the new user
            signupRepos.save(signUp);  // Save the user to the database
            logger.info("New user saved successfully: {}", signUp.getEmail());
            return "User successfully added.";
        } catch (Exception e) {
            logger.error("Error occurred while saving user: {}", e.getMessage());
            return "Error occurred while saving the user: " + e.getMessage();
        }
    }
}
