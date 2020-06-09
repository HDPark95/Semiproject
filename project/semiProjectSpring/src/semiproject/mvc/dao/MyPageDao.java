package semiproject.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.MyPageVO;
import semiproject.mvc.vo.SignUPVO;

@Repository
public class MyPageDao { 
	@Autowired
	private SqlSessionTemplate ss ; 
	
	
	public SignUPVO getloginINFOR (String aid) { 
		
		SignUPVO vo = ss.selectOne("mypage.lessor_infor", aid);
		return vo; 
	} 
	
	public SignUPVO getPayDetail(String aid) {
		SignUPVO vo = ss.selectOne("mypage.lessor_paydetail", aid);
		return vo;
	}
	
	public SignUPVO payTest(String aid , int anum) {
		SignUPVO vo = null; 
		
		vo = ss.selectOne("mypage.lessor_infor", aid);
		System.out.println("페이 들어가냐?");
		vo.setPayvo(ss.selectOne("mypage.paymentDetail", anum));
		
		return vo;
	}
	
	public void memberUPDATE(SignUPVO vo) {
		
		int update = ss.update("mypage.infor_memberupdate", vo);
		System.out.println("mypage 멤버 업데이트 확인!!"); 
	}
	
}
