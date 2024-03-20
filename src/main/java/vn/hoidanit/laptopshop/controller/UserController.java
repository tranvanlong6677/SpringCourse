package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

// Restful api

// @RestController
// public class UserController {
// private UserService userService;

// public UserController(UserService userService) {
// this.userService = userService;
// }

// @GetMapping("")
// public String getHomePage() {
// return this.userService.handleHomePage();
// }
// }

// MVC
@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user")
    public String getUserPage(Model model) {
        List<User> listUser = this.userService.getAllUser();
        model.addAttribute("listUsers", listUser);
        return "admin/user/listUsers";
    }
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.GET)
    public String getCreateUserPage() {
        return "admin/user/create";

    }
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("newUser") User user) {
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";

    }

    @RequestMapping(value = "/admin/user/detail/{id}", method = RequestMethod.GET)
    public String getUserDetailPage(Model model,@PathVariable long id) {
        System.out.println("check id :" + id);
        User userDataDetail = this.userService.getUserById(id);
        System.out.println("check detail " + userDataDetail);
        model.addAttribute("id", id);
        model.addAttribute("userDataDetail", userDataDetail);
        return "admin/user/detailUser";

    }
    @RequestMapping(value = "/admin/user/update/{id}", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("userDataAfter") User userDataAfter) {
        System.out.println("userDataAfter" + userDataAfter);
        User result = this.userService.handleSaveUser(userDataAfter);
        // System.out.println("result" + result);
        // return "redirect:/admin/user";
        return "hello";

    }
    @RequestMapping(value = "/admin/user/update/{id}", method = RequestMethod.GET)
    public String getUserUpdatePage(Model model,@PathVariable long id) {
        System.out.println("run getUserUpdatePage" + id);
        User userDataBefore = this.userService.getUserById(id);
        // User userDataUpdate = this.userService.getUserById(id);
        // System.out.println("check detail " + userDataUpdate);
        model.addAttribute("id", id);
        model.addAttribute("userDataBefore", userDataBefore);
        // model.addAttribute("userDataUpdate", userDataUpdate);
        return "admin/user/update";

    }

    

}
