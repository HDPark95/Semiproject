package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.PaymentVO;
import semiproject.mvc.vo.Payment_DetailVO;
@Repository
public class PaymentDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
//	public void Payment(PaymentVO vo) {
//		ss.update('payment' , vo);
//	}
//	public void PaymentPage(List<Payment_DetailVO> list) {
//		ss.update(statement, parameter)
//	    }

}
