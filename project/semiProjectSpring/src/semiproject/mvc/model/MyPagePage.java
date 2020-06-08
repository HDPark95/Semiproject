package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.MyPageDao;

import semiproject.mvc.vo.SignupVO;

@Controller
public class MyPagePage {
	
	@Autowired
	private MyPageDao mypagedao;
	
	
	// 임대인 마이페이지 로 이동
		@RequestMapping(value = "/mypage_lessor" )
		public ModelAndView myPagelessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
			
			SignupVO vo = mypagedao.getloginINFOR(aid);
			
			mav.addObject("vo", vo);
			
			return mav;
		}
		
		// 임대인 내정보 탭에 있는 회원정보 페이지로 이동
		@RequestMapping(value = "/inforDetail" , method = RequestMethod.POST)
		public ModelAndView myinforDetaillessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/inforDetail");
			
			SignupVO vo = mypagedao.getloginINFOR(aid);
			
			mav.addObject("vo", vo);
			return mav;
		}
		
		@RequestMapping(value = "/Pay_Detail")
		public ModelAndView inforPayDetail(String aid , int anum) {
			ModelAndView mav = new ModelAndView("mypage/payDetail");
			
			SignupVO vo = mypagedao.payTest(aid , anum);
			
			mav.addObject("vo", vo);
			return mav;
		}
	
	
//	// 임대인 마이페이지 로 이동
//	@RequestMapping(value = "/mypage_lessor" )
//	public ModelAndView myPagelessor(String id) {
//		ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
//		
//		MyPageVO vo = mypagedao.getinfor(id);
//		
//		mav.addObject("vo", vo);
//		return mav;
//	}
//	
//	// 임대인 내정보 탭에 있는 회원정보 페이지로 이동
//	@RequestMapping(value = "/inforDetail" , method = RequestMethod.POST)
//	public ModelAndView myinforDetaillessor(String id) {
//		ModelAndView mav = new ModelAndView("mypage/inforDetail");
//		
//		MyPageVO vo = mypagedao.getinfor(id);
//		
//		mav.addObject("vo", vo);
//		return mav;
//	}
//	
//	//임대인 회원정보 수정 
//	@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST )
//	public ModelAndView inforDetailUpdate (MyPageVO vo) {
//		
//		System.out.println("바뀐거 확인 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("redirect:inforDetailCompleted?id="+vo.getId());
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// 임대인 회원정보 수정후 보여지는 페이지 
//	@RequestMapping(value = "/inforDetailCompleted" , method = RequestMethod.POST )
//	public ModelAndView inforDetailCompleted (MyPageVO vo) {
//		
//		System.out.println("바뀐거 확인 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("inforDetailCompleted");
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// 임대인 로그인 정보 페이지로 이동
//	@RequestMapping(value = "/inforSignup" , method = RequestMethod.POST)
//	public ModelAndView myinforSignuplessor(String id) {
//		ModelAndView mav = new ModelAndView("mypage/inforSignup");
//		
//		MyPageVO vo = mypagedao.getinfor(id);
//		
//		mav.addObject("vo", vo);
//		return mav;
//	}
//	
//	@RequestMapping(value = "/inforUpdate" , method = RequestMethod.POST )
//	public ModelAndView inforup (MyPageVO vo) {
//		
//		System.out.println("바뀐거 확인 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("redirect:inforCompleted?id="+vo.getId());
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	@RequestMapping(value = "/inforCompleted")
//	public ModelAndView myPagelessorCompleted(String id) {
//		
//		ModelAndView mav = new ModelAndView("mypage/inforCompleted");
//		
//		MyPageVO vo = mypagedao.getinfor(id);
//		mav.addObject("vo", vo);
//		return mav;
//	}
	
	// 기업인 마이페이지로 이동
	@RequestMapping(value = "/mypage_broker")
	public String myPagebroker() {
		
		return "mypage/mypage_broker";
	}
}
