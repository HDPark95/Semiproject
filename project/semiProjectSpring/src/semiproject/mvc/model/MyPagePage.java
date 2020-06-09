package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.MyPageDao;
import semiproject.mvc.vo.SignUpVO;


@Controller
public class MyPagePage {
	
	@Autowired
	private MyPageDao mypagedao;
	
	 
	// �Ӵ��� ���������� �� �̵�
		@RequestMapping(value = "/mypage_lessor" )
		public ModelAndView myPagelessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/mypage_lessor");
			
			SignUpVO vo = mypagedao.getloginINFOR(aid);
			 
			mav.addObject("vo", vo);
			
			return mav;
		}
		
		// �Ӵ��� ������ �ǿ� �ִ� ȸ������ �������� �̵�
		@RequestMapping(value = "/inforDetail" , method = RequestMethod.POST)
		public ModelAndView myinforDetaillessor(String aid) {
			ModelAndView mav = new ModelAndView("mypage/inforDetail");
			
			SignUpVO vo = mypagedao.getloginINFOR(aid);
			
			mav.addObject("vo", vo);
			return mav;
		}
		
		@RequestMapping(value = "/Pay_Detail")
		public ModelAndView inforPayDetail(String aid , int anum) {
			ModelAndView mav = new ModelAndView("mypage/payDetail");
			
			SignUpVO vo = mypagedao.payTest(aid , anum);
			
			mav.addObject("vo", vo);
			return mav;
		}
	
	
//	// �Ӵ��� ���������� �� �̵�
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
//	// �Ӵ��� ������ �ǿ� �ִ� ȸ������ �������� �̵�
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
//	//�Ӵ��� ȸ������ ���� 
//	@RequestMapping(value = "/inforDetailUpdate" , method = RequestMethod.POST )
//	public ModelAndView inforDetailUpdate (MyPageVO vo) {
//		
//		System.out.println("�ٲ�� Ȯ�� : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("redirect:inforDetailCompleted?id="+vo.getId());
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// �Ӵ��� ȸ������ ������ �������� ������ 
//	@RequestMapping(value = "/inforDetailCompleted" , method = RequestMethod.POST )
//	public ModelAndView inforDetailCompleted (MyPageVO vo) {
//		
//		System.out.println("�ٲ�� Ȯ�� : " + vo.getPwd());
//		ModelAndView mav = new ModelAndView("inforDetailCompleted");
//		mypagedao.updateInfor(vo);
//		return mav;
//	}
//	
//	// �Ӵ��� �α��� ���� �������� �̵�
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
//		System.out.println("�ٲ�� Ȯ�� : " + vo.getPwd());
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
	
	// ����� ������������ �̵�
	@RequestMapping(value = "/mypage_broker")
	public String myPagebroker() {
		
		return "mypage/mypage_broker";
	}
}
