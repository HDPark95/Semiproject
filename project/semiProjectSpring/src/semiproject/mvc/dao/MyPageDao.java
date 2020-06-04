package semiproject.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.MyPageVO;

@Repository
public class MyPageDao {
	@Autowired
	private SqlSessionTemplate ss ;
	
	public MyPageVO getinfor (String id) {
		
		MyPageVO vo = ss.selectOne("mypage.lessor_infor", id);
		
		return vo;
	}
	
	public void updateInfor (MyPageVO vo) {
		
		int res = ss.update("mypage.lessor_infor_amend", vo);
		System.out.println("res : " + res);
		
	}
}
