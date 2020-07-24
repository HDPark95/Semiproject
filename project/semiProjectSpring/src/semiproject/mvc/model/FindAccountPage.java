package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import semiproject.mvc.dao.SignUpDao;

@RestController
public class FindAccountPage {

	@Autowired
	private SignUpDao signUpDao;
	
	@RequestMapping("/findID")
	public String findId() {
		
		return "find_account/findAccount";
		
	}
	
	@RequestMapping(value = "/idCheck")
	@ResponseBody
	public int idChk(String aid) {
		int cnt = signUpDao.aidCheck(aid);
		return cnt;
	}
}
