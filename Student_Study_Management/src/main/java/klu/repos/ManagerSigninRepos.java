package klu.repos;

import klu.model.managersignup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ManagerSigninRepos extends JpaRepository<managersignup, Long> {

    @Query("SELECT COUNT(m) FROM managersignup m WHERE m.mnemail = ?1 AND m.mnpassword = ?2")
    int validateCredentials(String email, String password);
    
    @Query("SELECT m FROM managersignup m WHERE m.mnemail = ?1")
    managersignup findByMnemail(String mnemail);
}
