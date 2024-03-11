package vn.hoidanit.laptopshop;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RequestParam;

@RestController
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "Hello world                                                                                         ";
    }

    @GetMapping("/user")
    public String userPage() {
        return "user hihi";
    }

    @GetMapping("/admin")
    public String adminPage() {
        return "admin hihi";
    }

}
