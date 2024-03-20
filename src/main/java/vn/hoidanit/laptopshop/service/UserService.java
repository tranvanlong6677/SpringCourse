package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
    public List<User> getAllUser (){
        return this.userRepository.findAll();
    }
    public List<User> getUserByEmail (String email){
        return this.userRepository.findByEmail(email);
    }
    public User handleSaveUser(User user) {
        User result = this.userRepository.save(user);
        System.out.println("handle service    " + result);
        return result;
    }

    public User getUserById (long id){
        return this.userRepository.findById(id);
    }

   

   

    public String handleHomePage() {
        return "Hello from service";
    }
}
