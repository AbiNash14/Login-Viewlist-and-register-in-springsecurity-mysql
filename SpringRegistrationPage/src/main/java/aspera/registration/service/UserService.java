package aspera.registration.service;

import aspera.registration.model.User;
import aspera.registration.web.dto.UserRegistrationDto;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;


public interface UserService extends UserDetailsService {

    User findByEmail(String email);

    User save(UserRegistrationDto registration);
    
    List<User> getAllUserList();
}
