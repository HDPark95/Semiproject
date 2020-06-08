package semiproject.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.MyPageVO;
import semiproject.mvc.vo.SignupVO;

@Repository
public class MyPageDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
	
	public SignupVO getloginINFOR (String aid) {
		
		SignupVO vo = ss.selectOne("mypage.lessor_infor", aid);
		return vo; 
	}
	
	public SignupVO getPayDetail(String aid) {
		SignupVO vo = ss.selectOne("mypage.lessor_paydetail", aid);
		return vo;
	}
	
	public SignupVO payTest(String aid , int anum) {
		SignupVO vo = null; 
		
		vo = ss.selectOne("mypage.lessor_infor", aid);
		System.out.println("페이 들어가냐?");
		vo.setPayvo(ss.selectOne("mypage.paymentDetail", anum));
		
		return vo;
	}
}
