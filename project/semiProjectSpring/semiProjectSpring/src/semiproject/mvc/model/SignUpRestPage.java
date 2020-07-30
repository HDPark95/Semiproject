package semiproject.mvc.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.MemberDao;
import semiproject.mvc.dao.SignUpDao;
import semiproject.mvc.service.MemberService;
import semiproject.mvc.vo.SignUpVO;

@RestController
public class SignUpRestPage {

	@Autowired
	private SignUpDao signUpDao;
	
	
	
	@RequestMapping(value = "/idChk")
	@ResponseBody
	public int idChk(String aid) {
		int cnt = signUpDao.aidCheck(aid);
		return cnt;
	}
	
	@RequestMapping(value = "/nameChk")
	@ResponseBody
	public int dnameChk(SignUpVO vo) throws Exception{
		
		int cnt = signUpDao.dnameCheck(vo);
		System.out.println("컨트롤러 동작?");
		return cnt;
	}
}
