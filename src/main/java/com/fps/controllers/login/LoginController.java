package com.fps.controllers.login;

import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.fps.entities.User;
import com.fps.services.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	//@PreAuthorize("hasAu")
	@GetMapping(value = { "/login" })
	public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid Credentials provided.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out successfully.");
		}
		model.setViewName("login");
		return model;
	}

	@GetMapping("/signup")
	public ModelAndView userSignup() {
		ModelAndView model = new ModelAndView();
		User user = new User();
		model.addObject("user", user);
		model.setViewName("signup");

		return model;
	}
	
	@PostMapping(value = "/signup")
	public ModelAndView createNewUser(@Valid User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		User userExists = userService.getUserByEmail(user.getEmail());
		if (userExists != null) {
			bindingResult
					.rejectValue("email", "error.user",
							"There is already a user registered with the email provided");
		}
		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("signup");
		} else {
			userService.saveUser(user);
			modelAndView.addObject("successMessage", "User has been registered successfully");
			modelAndView.addObject("user", new User());
			modelAndView.setViewName("signup");
			
		}
		return modelAndView;
	}

	@GetMapping("/home")
	public String userForm(Locale locale, Model model) {
		return "home";
	}
	@GetMapping("/")
	public String landingpage(Locale locale, Model model) {
		return "/";
	}
}
