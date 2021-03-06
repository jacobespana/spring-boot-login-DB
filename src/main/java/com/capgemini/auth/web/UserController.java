package com.capgemini.auth.web;

import com.capgemini.auth.model.User;
import com.capgemini.auth.model.Account;
import com.capgemini.auth.service.SecurityService;
import com.capgemini.auth.service.UserService;
import com.capgemini.auth.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
       
        model.addAttribute("userForm", new User());
        
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        if(userForm.getIncome() >=40000.00){
            
            Account accountForm = new Account();
            accountForm.setUserId(userForm.getId());
            accountForm.setUsername(userForm.getUsername());
            accountForm.setAccountType(userForm.getDesiredAccountType());
            accountForm.setBalance(0.00);   
            
            userService.saveAccount(accountForm);
            userService.save(userForm);
            securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

            return "redirect:/welcome";
        }
        else{
            return "denyAppRequest";
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }
}