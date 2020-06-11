package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.SignUpDao;
import semiproject.mvc.vo.SignUpVO;

@Controller
public class SignUpPage {
	
	@Autowired
	private SignUpDao signUpDao;
	
	@RequestMapping(value = "/broker")
	public String signUpBroke() {
		return "community/signup_broker";
	}

	@RequestMapping(value = "/lessor")
	public String signLessor() {
		return "community/signup_lessor";
	}

	@RequestMapping(value = "/choose")
	public String signChoose() {
		return "community/signupchoose";
	}

	@RequestMapping(value = "/subBroke")
	public String subBroker() {
		return "community/subscriptioncheck_broker";
	}

	@RequestMapping(value = "/subLessor")
	public String subLessor() {
		return "community/subscriptioncheck_lessor";
	}
	
	@RequestMapping(value = "/signup_broker_in",method = RequestMethod.POST)
	public ModelAndView signUpBroker(SignUpVO vo) {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("community/subscriptioncheck_broker");
		mav.addObject("aidheader", vo.getAidheader());
		return mav;
	}
	
	@RequestMapping(value = "/signup_lessor_in",method = RequestMethod.POST)
	public ModelAndView signUpLessor(SignUpVO vo) {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("community/subscriptioncheck_lessor");	
		return mav;
	}
	
}
