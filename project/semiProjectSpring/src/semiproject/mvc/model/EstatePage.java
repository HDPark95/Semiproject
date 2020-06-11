package semiproject.mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EstatePage{
	
	
	@RequestMapping(value="/estateMain")
	public String goEstate() {
		return "estate/estate";
	}
	@RequestMapping(value="/addestate")
	public String estateAdd() {
		return "estate/addestate";
	}
	@RequestMapping(value="/estateDetail")
	public String goEsateDetail() {
		return "estate/estateDetile";
	}
}
