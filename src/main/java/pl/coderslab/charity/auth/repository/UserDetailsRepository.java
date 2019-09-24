package pl.coderslab.charity.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.auth.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {

}
