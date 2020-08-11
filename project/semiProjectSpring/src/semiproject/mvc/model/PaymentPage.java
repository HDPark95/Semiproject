package semiproject.mvc.model;





import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.PaymentDao;
import semiproject.mvc.service.PaymentService;
import semiproject.mvc.vo.Member_DetailVO;
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
		mav.addObject("vo", vo);
		mav.addObject("pvo", paymentdao.paymentname(anum));
		mav.setViewName("payment/payment");
		return mav;
	}

	@RequestMapping(value="/pay2")
	public String pay2() {
		return "payment/payment2";
	}
	@RequestMapping(value="/bank")
	public String bank() {
		return "payment/bankbook";
	}
	@RequestMapping(value = "/pay4")
	public String pay4() {
		return "payment/payment";
	}
	@RequestMapping(value = "/pay5")
	public String pay5() {
		return "payment/payment1-2";	
	}
	//결제 완료창
	@RequestMapping(value = "/pay3")
	public String pay3() {
		return "payment/paymentSuccess";
	}
	//인증번호에서 뒤로가기
	@RequestMapping(value = "/pay6")
	public String pay6() {
		return "payment/paymentDetail";
	}

	@RequestMapping(value = "/paymentUpdate", method=RequestMethod.POST)
	public ModelAndView paymentUpdate(PaymentVO vo, Payment_DetailVO vo1) {
		ModelAndView mav = new ModelAndView();
		paymentService.addPayment(vo,vo1);
		System.out.println("vo :"+vo.getPpay());
		System.out.println("vo :"+vo.getPsdate());
		System.out.println("vo :"+vo.getPedate());
		System.out.println("vo :"+vo.getMonthnum());
		System.out.println("vo :"+vo.getPway());
		System.out.println("vo1 :"+vo1.getInment());
		System.out.println("vo1 :"+vo1.getKinds());
		System.out.println("vo1 :"+vo1.getMentnum());
		mav.setViewName("payment/paymentSuccess");
		return mav;
	}
	@RequestMapping(value = "/paymentDetail", method = RequestMethod.POST)
	public ModelAndView paymentDetail(PaymentVO vo) {
		ModelAndView mav = new ModelAndView();
		//paymentService.addPayment(vo, vo1);
		mav.setViewName("payment/paymentDetail");
		mav.addObject("vo", vo);	
		return mav;
		
	}

}
