package semiproject.mvc.model;



import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PaymentPage {
	
	@RequestMapping(value="pay1")
	public ModelAndView pay1(String f1 ,String cc1, String dd1, String one, String three, String twelve) {
		System.out.println("문자열확인 :"+f1);
		System.out.println("문자열확인 :"+cc1);
		System.out.println("문자열확인 :"+dd1);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("payment/payment1");
		mav.addObject("pay", f1);
		mav.addObject("cc1", cc1);
		mav.addObject("dd1", dd1);
		mav.addObject("one", one);
		mav.addObject("three", three);
		mav.addObject("twelve", twelve);
		
		return mav;

	}
	@RequestMapping(value="pay2")
	public String pay2() {
		return "payment/payment2";
	}
	@RequestMapping(value="pay3")
	public String pay3() {
		return "payment/payment3";
	}
	@RequestMapping(value="bank")
	public String bank() {
		return "payment/bankbook";
	}
	@RequestMapping(value = "pay4")
	public String pay4() {
		return "payment/payment1-1";
	}
	@RequestMapping(value = "pay5")
	public String pay5() {
		return "payment/payment1-2";
		
	}
	
}
