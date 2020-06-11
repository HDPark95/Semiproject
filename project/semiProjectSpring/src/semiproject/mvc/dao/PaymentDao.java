package semiproject.mvc.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Member_DetailVO;
import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;
@Repository
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
	public void Payment(PaymentVO vo) {
		ss.update("payment.paymentup", vo);
	}
	public void PaymentPage(Payment_DetailVO vo1) {
		ss.update("payment.payment_detailup", vo1);
	    }
	public Member_DetailVO paymentname(int anum) {
		Member_DetailVO vo = ss.selectOne("payment.paymentid", anum);
		return vo;
		
	}

}
