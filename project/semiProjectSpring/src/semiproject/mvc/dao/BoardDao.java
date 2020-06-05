package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.net.aso.s;
import semiproject.mvc.vo.BoardVO;



@Repository
public class BoardDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	public int addList(BoardVO vo) {
		return ss.insert("board.add",vo);
	}
	
	public int removeList(BoardVO vo) {
		return ss.update("board.remove",vo);
	}
	
	public int ansList(BoardVO vo) {
		
		return ss.update("board.ans",vo);
	}
	
	public List<BoardVO> selectList(BoardVO vo){
		return ss.selectList("board.list",vo);
	}
}
