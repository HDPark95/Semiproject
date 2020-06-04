package semiproject.mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginPage {
	
	@RequestMapping(value="/login")
	public String login() {
		return "login/loginform";
	}

}
