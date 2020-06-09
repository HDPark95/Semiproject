package semiproject.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.MyPageVO;
import semiproject.mvc.vo.SignUpVO;


@Repository
public class MyPageDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
	
	public SignUpVO getloginINFOR (String aid) {
		
		SignUpVO vo = ss.selectOne("mypage.lessor_infor", aid);
		return vo; 
	} 
	
	public SignUpVO getPayDetail(String aid) {
		SignUpVO vo = ss.selectOne("mypage.lessor_paydetail", aid);
		return vo;
	}
	
	public SignUpVO payTest(String aid , int anum) {
		SignUpVO vo = null; 
		
		vo = ss.selectOne("mypage.lessor_infor", aid);
		System.out.println("���� ����?");
		vo.setPayvo(ss.selectOne("mypage.paymentDetail", anum));
		
		return vo;
	}
}
