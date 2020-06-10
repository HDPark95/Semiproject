package semiproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import semiproject.mvc.dao.PaymentDao;
import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;

@Service
@Transactional
public class PaymentService {
	
	@Autowired
	private PaymentDao paymentdao;
	
	public void addPayment(PaymentVO vo , Payment_DetailVO vo1) {
		paymentdao.Payment(vo);
		paymentdao.PaymentPage(vo1);
		
	}

}
