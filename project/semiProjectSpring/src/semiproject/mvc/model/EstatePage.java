package semiproject.mvc.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.EstateVO;

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
	@RequestMapping(value = "/insertestate", method = RequestMethod.POST)
	public ModelAndView insertestate(@RequestParam EstateVO  estate) {
			ModelAndView mav= new ModelAndView("estate/addestate");
			
			System.out.println("호출");
		
			System.out.println(estate);
			
			ObjectMapper obj = new ObjectMapper();
			
		
		return mav;
	}
	
	
}
