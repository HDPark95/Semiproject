package semiproject.mvc.model;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.LoginDao;
import semiproject.mvc.dao.SignUpDao;
import semiproject.mvc.vo.LoginDTO;
import semiproject.mvc.vo.SignUpVO;
import semiproject.mvc.vo.UserVO;

@Controller
public class SignUpPage {
	
<<<<<<< HEAD
//	@Autowired
//	private SignUpDao signUpDao;
//	
//	@RequestMapping(value = "/broker")
//	public String signUpBroke() {
//		return "community/signup_broker";
//	}
//
//	@RequestMapping(value = "/lessor")
//	public String signLessor() {
//		return "community/signup_lessor";
//	}
//
//	@RequestMapping(value = "/choose")
//	public String signChoose() {
//		return "community/signupchoose";
//	}
//
//	@RequestMapping(value = "/subBroke")
//	public String subBroker() {
//		return "community/subscriptioncheck_broker";
//	}
//
//	@RequestMapping(value = "/subLessor")
//	public String subLessor() {
//		return "community/subscriptioncheck_lessor";
//	}
//	
//	@RequestMapping(value = "/signup_broker_in",method = RequestMethod.POST)
//	public ModelAndView signUpBroker(SignUpVO vo) {
//		ModelAndView mav = new ModelAndView();
//		signUpDao.addSignUp1(vo);
//		signUpDao.addSignUp2(vo);
//		System.out.println("모델 도착!");
//		mav.setViewName("community/subscriptioncheck_broker");
//		mav.addObject("aidheader", vo.getAidheader());
//		return mav;
//	}
//	
//	@RequestMapping(value = "/signup_lessor_in",method = RequestMethod.POST)
//	public ModelAndView signUpLessor(SignUpVO vo) {
//		ModelAndView mav = new ModelAndView();
//		signUpDao.addSignUp1(vo);
//		signUpDao.addSignUp2(vo);
//		System.out.println("모델 도착!");
//		mav.setViewName("community/subscriptioncheck_lessor");	
//		return mav;
//	}
	
	
=======
	@Autowired
	private SignUpDao signUpDao;
	
	@Autowired
	private LoginDao logindao;
	
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
		return "community/signup_choose";
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
	public ModelAndView signUpBroker(SignUpVO vo, LoginDTO loginDTO, HttpSession httpsession) throws Exception {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("community/subscriptioncheck_broker");
		loginDTO.setAid(vo.getAid());
		loginDTO.setApwd(vo.getApwd());
		loginDTO.setAgubun(vo.getAgubun());
		loginDTO.setAnum(vo.getAnum());
		UserVO vo2 = logindao.logininfo(loginDTO.getAid());
		String userid = vo.getAid();
		mav.addObject("userid", userid);
		mav.addObject("user", vo2);
		httpsession.setAttribute("user", vo2);
		return mav;
	}
	
	@RequestMapping(value = "/signup_lessor_in",method = RequestMethod.POST)
	public ModelAndView signUpLessor(SignUpVO vo, LoginDTO loginDTO, HttpSession httpsession) throws Exception {
		ModelAndView mav = new ModelAndView();
		signUpDao.addSignUp1(vo);
		signUpDao.addSignUp2(vo);
		mav.setViewName("community/subscriptioncheck_lessor");
		loginDTO.setAid(vo.getAid());
		loginDTO.setApwd(vo.getApwd());
		loginDTO.setAgubun(vo.getAgubun());
		loginDTO.setAnum(vo.getAnum());
		UserVO vo2 = logindao.logininfo(loginDTO.getAid());
		String userid = vo.getAid();
		mav.addObject("userid", userid);
		mav.addObject("user", vo2);
		httpsession.setAttribute("user", vo2);
		return mav;
	}
>>>>>>> refs/heads/master
}
