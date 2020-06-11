package semiproject.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.MyPageDao;
import semiproject.mvc.vo.Community_BoardVO;
import semiproject.mvc.vo.SignUpVO;


@Controller
public class MyPagePage {
	
	@Autowired
	private MyPageDao mypagedao;
	
	 
	// 占쌈댐옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙 占싱듸옙
		@RequestMapping(value = "/mypage_lessor" )
		public ModelAndView myPagelessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
			

			SignUpVO vo = mypagedao.getloginINFOR(aid);

			 
			mav.addObject("vo", vo);
			
			return mav;
		} 
		
		// 占쌈댐옙占쏙옙 占쏙옙占쏙옙占쏙옙 占실울옙 占쌍댐옙 회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙
		@RequestMapping(value = "/inforDetail" , method = RequestMethod.POST)
		public ModelAndView myinforDetaillessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/inforDetail");
			

			SignUpVO vo = mypagedao.getloginINFOR(aid);

			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//결제 세부 페이지 
		@RequestMapping(value = "/Pay_Detail")
		public ModelAndView inforPayDetail(String aid , int anum) {
			ModelAndView mav = new ModelAndView("mypage/paymentDetail");
			

			SignUpVO vo = mypagedao.payTest(aid , anum);

			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//loginDetail 페이지 
		@RequestMapping(value = "/loginDetail" , method = RequestMethod.POST)
		public ModelAndView loginDetail(String aid) {
			ModelAndView mav = new ModelAndView("mypage/loginDetail");
			
			SignUpVO vo = mypagedao.getloginINFOR(aid);
			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//update 회원정보 업데이트 버튼 누를시 작동되는 모델
		@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST)
		public ModelAndView memberUPDATE(SignUpVO vo, String aid) {
			ModelAndView mav = new ModelAndView();
			mypagedao.memberUPDATE(vo);
			
			SignUpVO vo2 = mypagedao.getloginINFOR(aid);
			mav.addObject("vo", vo2);
			
			mav.setViewName("mypage/mypage_lessor");
			return mav;
		}
		
		//update 회원정보 업데이트 버튼 누를시 작동되는 모델
				@RequestMapping(value = "/mypageloginUpdate" , method = RequestMethod.POST)
				public ModelAndView loginUPDATE(SignUpVO vo, String aid) {
					ModelAndView mav = new ModelAndView();
					mypagedao.loginUPDATE(vo);
					
					SignUpVO vo2 = mypagedao.getloginINFOR(aid);
					mav.addObject("vo", vo2);
					
					mav.setViewName("mypage/mypage_lessor");
					return mav;
				}
				
		// 내 게시글 조회 하기 페이지로 가는 모델
		@RequestMapping(value = "infor_posts" , method = RequestMethod.POST)
		public ModelAndView myPosts (int anum) {
			ModelAndView mav = new ModelAndView("mypage/infor_posts");
			
			List<Community_BoardVO> list = mypagedao.inforPosts(anum);
			
			mav.addObject("list", list);
			
			return mav;
		}
	
//	// 占쌈댐옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙 占싱듸옙
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
//	// 占쌈댐옙占쏙옙 占쏙옙占쏙옙占쏙옙 占실울옙 占쌍댐옙 회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙
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
//	//占쌈댐옙占쏙옙 회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 
//	@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST )
//	public ModelAndView inforDetailUpdate (MyPageVO vo) {
//		
//		System.out.println("占쌕뀐옙占� 확占쏙옙 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("redirect:inforDetailCompleted?id="+vo.getId());
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// 占쌈댐옙占쏙옙 회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 
//	@RequestMapping(value = "/inforDetailCompleted" , method = RequestMethod.POST )
//	public ModelAndView inforDetailCompleted (MyPageVO vo) {
//		
//		System.out.println("占쌕뀐옙占� 확占쏙옙 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("inforDetailCompleted");
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// 占쌈댐옙占쏙옙 占싸깍옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙
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
//		System.out.println("占쌕뀐옙占� 확占쏙옙 : " + vo.getPwd());
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
	
	// 占쏙옙占쏙옙占� 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙
	@RequestMapping(value = "/mypage_broker")
	public String myPagebroker() {
		
		return "mypage/mypage_broker";
	}
}
