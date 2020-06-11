
package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Community_BoardVO;
import semiproject.mvc.vo.Community_PageVO;

@Repository
public class CommunityDao {

	@Autowired
	private SqlSessionTemplate ss;

	public List<String> getGu() {
		List<String> list = ss.selectList("commudata.commugu");
		return list;
	}

	public List<String> getDong(String guName) {
		List<String> list = ss.selectList("commudata.dong", guName);
		return list;
	}
	
	public void cWriting(Community_BoardVO vo) {
		ss.insert("commuwriting.Cwriting", vo);
	}
	
	public Community_BoardVO WriDetail(int wnum){
		return ss.selectOne("commuwriting.wridetail", wnum);
	}
	
	public List<Community_BoardVO> allList(Community_PageVO pvo){
		return ss.selectList("commuwriting.listall",pvo);
	}
	
	public int getCountAll() {
		return ss.selectOne("commuwriting.countall");
	}
	
}
