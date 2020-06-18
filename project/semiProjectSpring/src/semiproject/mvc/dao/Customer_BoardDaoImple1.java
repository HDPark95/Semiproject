package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Customer_Board1VO;
import semiproject.mvc.vo.Customer_Board_PageVO;


@Repository
public class Customer_BoardDaoImple1 implements Customer_BoardDao1{

	@Autowired
	private SqlSessionTemplate ss; 
	
	@Override
	public Object addwrite(Customer_Board1VO vo) throws Exception {  
	
		return ss.insert("board1.insert", vo);  
	}

	@Override
	public List<Customer_Board1VO> getlist() throws Exception {
		
		return ss.selectList("board1.list"); 
	}

	@Override
	public Customer_Board1VO getDetail(int c_num) throws Exception {
	
		return ss.selectOne("board1.viewDetail",c_num);
		 
	}

	@Override
	public void updateAns(Customer_Board1VO vo) throws Exception {
		
		ss.update("board1.ans",vo);
		
	}

	@Override
	public int delete(int c_num) throws Exception {
		
		
		return ss.delete("board1.delete",c_num); 
		
		
		
	}

	@Override
	public int countBoard() {
	
		return ss.selectOne("board1.countBoard");
	}

	@Override
	public List<Customer_Board1VO> selectBoard(Customer_Board_PageVO vo) {
		
		return ss.selectList("board1.selectBoard",vo);
	}


}
