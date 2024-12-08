package klu.repos;

import klu.model.managersignup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ManagerSignupRepository extends JpaRepository<managersignup, Long> {

    @Query("SELECT COUNT(m) FROM managersignup m WHERE m.mnemail = ?1")
    int validateEmail(String email); // Check if email exists

    @Query("SELECT m FROM managersignup m WHERE m.mnemail = ?1")
    managersignup findByMnemail(String mnemail);

}
