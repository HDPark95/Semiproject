package semiproject.mvc.dao;

import java.util.List;

import semiproject.mvc.vo.Customer_BoardVO;

public interface Customer_BoardDao {

	public int addwrite(Customer_BoardVO vo) throws Exception;
	
	public List<Customer_BoardVO> getlist() throws Exception;    
	
}
