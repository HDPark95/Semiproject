package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Customer_BoardVO;

@Repository
public class Customer_BoardDaoImple implements Customer_BoardDao{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public Object addwrite(Customer_BoardVO vo) throws Exception {  
		System.out.println("dao 호출! ");
		return ss.insert("board.add", vo);  
	}

	@Override
	public List<Customer_BoardVO> getlist() throws Exception {
		
		return ss.selectList("board.list");
	}

}
