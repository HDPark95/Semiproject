package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Community_BoardVO;
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
		System.out.println("페이 들어가냐?");
		vo.setPayvo(ss.selectOne("mypage.paymentDetail", anum));
		
		return vo;
	}
	
	public void memberUPDATE(SignUpVO vo) {
		
		int update = ss.update("mypage.infor_memberupdate", vo);
		System.out.println("mypage 멤버 업데이트 확인!!"); 
	}
	
	public void loginUPDATE(SignUpVO vo) {
		
		int update = ss.update("mypage.infor_loginupdate", vo);
		System.out.println("login 멤버 업데이트 확인!!"); 
	}
	
	public List<Community_BoardVO> inforPosts(int anum){
		
		List<Community_BoardVO> list = ss.selectList("mypage.infor_postslist", anum);
		
		return list;
	}
	
}
