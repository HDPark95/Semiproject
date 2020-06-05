package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import oracle.net.aso.s;
import semiproject.mvc.vo.BoardPageVO;
import semiproject.mvc.vo.BoardVO;



@Repository
public class BoardDao implements BoardDaoInter{

	@Autowired
	private SqlSessionTemplate ss;

	@Override // 게시판 추가
	public void create(BoardVO vo) throws Exception {
		
		ss.insert("board.add",vo);
	}

	@Override // 게시판 리스트 보기
	public List<BoardVO> listAll() throws Exception {
		
		return null;
	}

	@Override // 게시판 상세보기
	public BoardVO read(Integer b_num) throws Exception {
		
		ss.selectOne("board.detail",b_num);
		return null;
	}

	@Override // 게시판 삭제
	public void delete(Integer b_num) throws Exception {
		
		
	}

	@Override // 게시판 수정
	public void update(Integer b_num) throws Exception {
				
	}
	
//	public int addList(BoardVO vo) {
//		return ss.insert("board.add",vo);
//	}
//	
//	public int removeList(BoardVO vo) {
//		return ss.update("board.remove",vo);
//	}
//	
//	public int ansList(BoardVO vo) {
//		
//		return ss.update("board.ans",vo);
//	}
//	
//	public List<BoardVO> getList(BoardPageVO bpvo){ 
//		return ss.selectList("member.list",bpvo);
//	}
}
