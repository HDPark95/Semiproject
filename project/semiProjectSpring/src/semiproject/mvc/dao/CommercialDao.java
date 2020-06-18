package semiproject.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.DataVO;
@Repository
public class CommercialDao {
	@Autowired
	private SqlSessionTemplate ss;

	public List<String> getGu() {
	
		List<String> list = ss.selectList("data.gu");
	
		return list;
	} 

	public List<String> getLarge() {
		List<String> list = ss.selectList("data.large");
	
		return list;
	}

	public List<String> getMedium(String largeName) {
		List<String> list = ss.selectList("data.medium", largeName);
		
	
		return list;
	}

	public List<DataVO> getSmall(DataVO vo) {
		List<DataVO> list = ss.selectList("data.small", vo);
		
	
		return list;
	}
	public List<DataVO> getMark(DataVO vo) {
		List<DataVO> list = ss.selectList("data.map", vo);
		
	
		return list;
	}
	public List<DataVO> getInformation(String guname) {
		List<DataVO> list = ss.selectList("data.information", guname);
		

		return list;
	}
	public List<DataVO> getInformation2(DataVO vo) {
		List<DataVO> list = ss.selectList("data.information2", vo);
		
	
		return list;
	}
	public List<String> getDong(String guName){
		List<String> list = ss.selectList("data.dong", guName);
		return list;
	}
	
}
