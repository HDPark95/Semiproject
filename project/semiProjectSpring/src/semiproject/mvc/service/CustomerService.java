package semiproject.mvc.service;

import java.util.List;

import semiproject.mvc.dao.BoardDao;
import semiproject.mvc.vo.BoardVO;

public class CustomerService implements CustomerServiceImple{

	private BoardDao dao;
	
	@Override
	public void create(BoardVO vo) throws Exception {
		
		dao.create(vo);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		
		return null;
	}

	@Override
	public BoardVO read(Integer b_num) throws Exception {
		
		return dao.read(b_num);
	}

	@Override
	public void delete(Integer b_num) throws Exception {
		
		
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		
		
	}

}
