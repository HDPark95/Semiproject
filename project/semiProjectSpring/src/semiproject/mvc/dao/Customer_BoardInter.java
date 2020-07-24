package semiproject.mvc.dao;

import java.util.List;


import semiproject.mvc.vo.Community_PageVO;

import semiproject.mvc.vo.Customer_BoardVO;

public interface Customer_BoardInter {
	
	public Object addwrite(Customer_BoardVO vo) throws Exception;
	
	public List<Customer_BoardVO> getlist() throws Exception;     
	
	public Customer_BoardVO getDetail(int c_num) throws Exception;
	
	 
	
	public int delete(int c_num) throws Exception;
	
	public List<Customer_BoardVO> listAll(Community_PageVO pvo) throws Exception;

	public int getCountAll(Community_PageVO pvo) throws Exception;
	
	public void deleteDetail(int c_num) throws Exception;
	
	public void updateDetail(Customer_BoardVO vo) throws Exception;
}
