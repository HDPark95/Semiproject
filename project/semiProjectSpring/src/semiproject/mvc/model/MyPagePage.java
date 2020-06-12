package semiproject.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.MyPageDao;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.Community_BoardVO;
import semiproject.mvc.vo.SignUpVO;


@Controller
public class MyPagePage {
	
	@Autowired
	private MyPageDao mypagedao;
	
	 
	// �뜝�뙂�뙋�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕 �뜝�떛�벝�삕
		@RequestMapping(value = "/mypage_lessor" )
		public ModelAndView myPagelessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
			

			SignUpVO vo = mypagedao.getloginINFOR(aid);

			 
			mav.addObject("vo", vo);
			
			return mav;
		} 
		
		// �뜝�뙂�뙋�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떎�슱�삕 �뜝�뙇�뙋�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떛�벝�삕
		@RequestMapping(value = "/inforDetail" , method = RequestMethod.POST)
		public ModelAndView myinforDetaillessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/inforDetail");
			

			SignUpVO vo = mypagedao.getloginINFOR(aid);

			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//寃곗젣 �꽭遺� �럹�씠吏� 
		@RequestMapping(value = "/Pay_Detail")
		public ModelAndView inforPayDetail(String aid , int anum) {
			ModelAndView mav = new ModelAndView("mypage/paymentDetail");
			

			SignUpVO vo = mypagedao.payTest(aid , anum);

			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//loginDetail �럹�씠吏� 
		@RequestMapping(value = "/loginDetail" , method = RequestMethod.POST)
		public ModelAndView loginDetail(String aid) {
			ModelAndView mav = new ModelAndView("mypage/loginDetail");
			
			SignUpVO vo = mypagedao.getloginINFOR(aid);
			
			mav.addObject("vo", vo);
			return mav;
		}
		
		//update �쉶�썝�젙蹂� �뾽�뜲�씠�듃 踰꾪듉 �늻瑜쇱떆 �옉�룞�릺�뒗 紐⑤뜽
		@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST)
		public ModelAndView memberUPDATE(SignUpVO vo, String aid) {
			ModelAndView mav = new ModelAndView();
			mypagedao.memberUPDATE(vo);
			
			SignUpVO vo2 = mypagedao.getloginINFOR(aid);
			mav.addObject("vo", vo2);
			
			mav.setViewName("mypage/mypage_lessor");
			return mav;
		}
		
		//update �쉶�썝�젙蹂� �뾽�뜲�씠�듃 踰꾪듉 �늻瑜쇱떆 �옉�룞�릺�뒗 紐⑤뜽
				@RequestMapping(value = "/mypageloginUpdate" , method = RequestMethod.POST)
				public ModelAndView loginUPDATE(SignUpVO vo, String aid) {
					ModelAndView mav = new ModelAndView();
					mypagedao.loginUPDATE(vo);
					
					SignUpVO vo2 = mypagedao.getloginINFOR(aid);
					mav.addObject("vo", vo2);
					
					mav.setViewName("mypage/mypage_lessor");
					return mav;
				}
				
		// �궡 寃뚯떆湲� 議고쉶 �븯湲� �럹�씠吏�濡� 媛��뒗 紐⑤뜽
		@RequestMapping(value = "infor_posts" , method = RequestMethod.POST)
		public ModelAndView myPosts (int anum) {
			ModelAndView mav = new ModelAndView("mypage/infor_posts");
			
			List<Community_BoardVO> list = mypagedao.inforPosts(anum);
			
			mav.addObject("list", list);
			
			return mav;
		}
		
		//내 매물 관리 탭에 표시될 내용 
		
		@RequestMapping(value = "/infor_product")
		public ModelAndView myproduct(int anum) {
			ModelAndView mav = new ModelAndView("mypage/include/infor_management");
			
			List<CommercialProductVO> plist = mypagedao.productINFOR(anum);
			
			mav.addObject("plist", plist);
			
			return mav;
			
		}
		// 공인중개사 일때 마이페이지 
		@RequestMapping(value = "/mypage_broker")
		public ModelAndView myPageBroker(String aid) {
			ModelAndView mav = new ModelAndView("mypage/mypage_broker");
			

			SignUpVO vo = mypagedao.getloginINFOR(aid);

			 
			mav.addObject("vo", vo);
			
			return mav;
		} 
		
	
//	// �뜝�뙂�뙋�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕 �뜝�떛�벝�삕
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
//	// �뜝�뙂�뙋�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떎�슱�삕 �뜝�뙇�뙋�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떛�벝�삕
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
//	//�뜝�뙂�뙋�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 
//	@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST )
//	public ModelAndView inforDetailUpdate (MyPageVO vo) {
//		
//		System.out.println("�뜝�뙐�먯삕�뜝占� �솗�뜝�룞�삕 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("redirect:inforDetailCompleted?id="+vo.getId());
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// �뜝�뙂�뙋�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 
//	@RequestMapping(value = "/inforDetailCompleted" , method = RequestMethod.POST )
//	public ModelAndView inforDetailCompleted (MyPageVO vo) {
//		
//		System.out.println("�뜝�뙐�먯삕�뜝占� �솗�뜝�룞�삕 : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("inforDetailCompleted");
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// �뜝�뙂�뙋�삕�뜝�룞�삕 �뜝�떥源띿삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떛�벝�삕
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
//		System.out.println("�뜝�뙐�먯삕�뜝占� �솗�뜝�룞�삕 : " + vo.getPwd());
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
	
	// �뜝�룞�삕�뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떛�벝�삕
	
}
