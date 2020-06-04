package semiproject.mvc.model;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PaymentPage {
	
	@RequestMapping(value="pay1")
	public String pay1() {
		return "payment/payment1";
	}
	@RequestMapping(value="pay2")
	public String pay2() {
		return "payment/payment2";
	}
	@RequestMapping(value="pay3")
	public String pay3() {
		return "payment/payment3";
	}
	
}
