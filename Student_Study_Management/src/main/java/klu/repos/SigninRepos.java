package klu.repos;

import klu.model.SignUp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SigninRepos extends JpaRepository<SignUp, Long> {

    @Query("SELECT COUNT(s) FROM SignUp s WHERE s.email = ?1 AND s.password = ?2")
    int validateCredentials(String email, String password);  // Check if email and password match
}