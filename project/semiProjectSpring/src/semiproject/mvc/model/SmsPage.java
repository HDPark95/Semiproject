package semiproject.mvc.model;

import java.security.Principal;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.service.CertificationService;
import semiproject.mvc.service.PaymentService;
import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;





@Controller
public class SmsPage {
	
	@Autowired
	private CertificationService certificationService;
	
	@Autowired
	private PaymentService paymentService;
	
	/*
	 * @Autowired private PaymentService paymentService;
	 */
	
	@RequestMapping(value = "/sendSMS", method = RequestMethod.POST)
    public ModelAndView sendSMS(Model model,PaymentVO vo, Payment_DetailVO vo1) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("payment/sendSMS");
		mav.addObject("vo", vo);
		mav.addObject("vo1", vo1);
		// paymentService.addPayment(vo,vo1);
		/*
		 * System.out.println("vo :"+vo.getPpay());
		 * System.out.println("vo :"+vo.getPsdate());
		 * System.out.println("vo :"+vo.getPedate());
		 * System.out.println("vo :"+vo.getMonthnum());
		 * System.out.println("vo :"+vo.getPway());
		 * System.out.println("vo :"+vo1.getInment());
		 * System.out.println("vo :"+vo1.getKinds());
		 * System.out.println("vo :"+vo1.getMentnum());
		 */
		return mav;
    }
	
	@RequestMapping(value ="/sendSMS2")
	@ResponseBody
	public String sendMessage(String phoneNumber) {
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
        System.out.println("수신자 번호 : " + phoneNumber);
        System.out.println("인증번호 : " + numStr);
        certificationService.certifiedPhoneNumber(phoneNumber,numStr);
        System.out.println("보내짐");
        return numStr;
	}
}
