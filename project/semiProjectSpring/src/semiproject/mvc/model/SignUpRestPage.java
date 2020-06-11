package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import semiproject.mvc.dao.SignUpDao;

@RestController
public class SignUpRestPage {

	@Autowired
	private SignUpDao signUpDao;
	

	@RequestMapping(value = "/idChk")
	@ResponseBody
	public int idChk(String aidheader) {
		int cnt = signUpDao.aidHeaderCheck(aidheader);
		return cnt;
	}
}
