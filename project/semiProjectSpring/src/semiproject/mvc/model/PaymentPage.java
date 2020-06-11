package semiproject.mvc.model;





import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.PaymentDao;
import semiproject.mvc.service.PaymentService;
import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;


@Controller
public class PaymentPage {
	
	@Autowired
	public PaymentDao paymentdao;
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping(value="/pay1")
	public ModelAndView pay1(PaymentVO vo , int anum) {
		ModelAndView mav = new ModelAndView();
		System.out.println("금액-pay1: " + vo.getPpay());
		System.out.println("날짜"+ vo.getPsdate());
		System.out.println("날짜종료"+ vo.getPedate());
		System.out.println("날짜개월"+ vo.getMonthnum());	
		mav.addObject("vo", vo);
		mav.addObject("pvo", paymentdao.paymentname(anum));
		mav.setViewName("payment/payment1");
		return mav;
	}
	@RequestMapping(value = "/pay12")
	public String pay12(PaymentVO vo){
		
	return "payment/payment1";
		
		 
	}
	
	@RequestMapping(value="/pay2")
	public String pay2() {
		return "payment/payment2";
	}
	@RequestMapping(value="/pay3")
	public String pay3() {
		return "payment/payment3";
	}
	@RequestMapping(value="/bank")
	public String bank() {
		return "payment/bankbook";
	}
	@RequestMapping(value = "/pay4")
	public String pay4() {
		return "payment/payment1-1";
	}
	@RequestMapping(value = "/pay5")
	public String pay5() {
		return "payment/payment1-2";	
	}
	@RequestMapping(value = "/paymentUpdate", method = RequestMethod.POST)
	public ModelAndView paymentUpdate(PaymentVO vo, Payment_DetailVO vo1, HttpServletRequest request ) {
		ModelAndView mav = new ModelAndView();
		paymentService.addPayment(vo,vo1);
		mav.setViewName("payment/payment3");
		request.removeAttribute("vo");
		return mav;
	}

}
