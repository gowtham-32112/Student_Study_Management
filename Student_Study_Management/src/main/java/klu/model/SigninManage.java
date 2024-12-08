package klu.model;

import klu.repos.SigninRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SigninManage {

    @Autowired
    private SigninRepos signinRepos;

    public String validateUser(String email, String password) {
        int result = signinRepos.validateCredentials(email, password);

        if (result > 0) {
            return "Login successful";  // User exists
        } else {
            return "Invalid email or password";  // User does not exist
        }
    }
}
