package klu.model;

import klu.model.managersignin;
import klu.model.managersignup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repos.ManagerSignupRepository;

@Service
public class mnsigninmanage {

    @Autowired
    private ManagerSignupRepository managerSignupRepository;

    public boolean authenticateManager(managersignin signinDetails) {
        // Fetch mnemail from signinDetails
        String mnemail = signinDetails.getMnemail();

        // Fetch manager details by email
        managersignup manager = managerSignupRepository.findByMnemail(mnemail);

        // Validate email and password
        if (manager != null && manager.getMnpassword().equals(signinDetails.getMnpassword())) {
            return true; // Authentication successful
        }
        return false; // Authentication failed
    }
}
