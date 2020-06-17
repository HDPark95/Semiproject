package semiproject.mvc.dao;

import java.util.List;

import semiproject.mvc.vo.Customer_Board1VO;
import semiproject.mvc.vo.Customer_Board_PageVO;

public interface Customer_BoardDao1 {
 
	public Object addwrite(Customer_Board1VO vo) throws Exception;
	
	public List<Customer_Board1VO> getlist() throws Exception;     
	
	public Customer_Board1VO getDetail(int c_num) throws Exception;
	
	public void updateAns(Customer_Board1VO vo) throws Exception; 
	
	public int delete(int c_num) throws Exception;
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<Customer_Board1VO> selectBoard(Customer_Board_PageVO vo);
}
