package semiproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import semiproject.mvc.dao.MyPageDao;
import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;

@Service
@Transactional
public class MypageService {
	
	@Autowired
	private MyPageDao mypagedao;

	public void service_premiumProlong (PaymentVO vo, Payment_DetailVO vo1) {
		
		mypagedao.Payment(vo);
		mypagedao.PaymentPage(vo1);
		
	}
	
	public void member_secession(String aid) {
		mypagedao.member_secession(aid);
	}
	
}
