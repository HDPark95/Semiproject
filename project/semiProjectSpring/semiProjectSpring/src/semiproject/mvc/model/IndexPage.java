package semiproject.mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexPage{
	
	
	@RequestMapping(value= {"/index","/"})
	public String goIndex() {
		return "index";
	}
}
 