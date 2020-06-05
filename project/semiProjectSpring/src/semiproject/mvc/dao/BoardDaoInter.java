package semiproject.mvc.dao;

import java.util.List;

import semiproject.mvc.vo.BoardVO;

public interface BoardDaoInter {

	public void create(BoardVO vo) throws Exception;
	public List<BoardVO> listAll() throws Exception;
	public BoardVO read(Integer b_num) throws Exception;
	public void delete(Integer b_num) throws Exception;
	public void update(Integer b_num) throws Exception;
	}
