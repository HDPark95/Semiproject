package semiproject.mvc.dao;

import java.util.List;

import semiproject.mvc.vo.Customer_BoardVO;

public interface Customer_BoardDao {
 
	public Object addwrite(Customer_BoardVO vo) throws Exception;
	
	public List<Customer_BoardVO> getlist() throws Exception;     
	
	public Customer_BoardVO getDetail(int c_num) throws Exception;
	
	public void updateAns(Customer_BoardVO vo) throws Exception; 
}
 