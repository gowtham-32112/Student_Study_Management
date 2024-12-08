package klu.model;

import klu.model.managersignup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repos.ManagerSignupRepository;

@Service
public class mnsignupmanage {

    @Autowired
    private ManagerSignupRepository managerSignupRepository;

    public managersignup registerManager(managersignup manager) throws Exception {
        // Check if email already exists
        if (managerSignupRepository.findByMnemail(manager.getMnemail()) != null) {
            throw new Exception("Email already registered");
        }

        // Validate password and confirmPassword match
        if (!manager.getMnpassword().equals(manager.getMnconfirmPassword())) {
            throw new Exception("Passwords do not match");
        }

        // Save manager details
        return managerSignupRepository.save(manager);
    }
}
