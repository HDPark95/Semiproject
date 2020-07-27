package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.Community_BoardVO;
import semiproject.mvc.vo.Community_PageVO;

import semiproject.mvc.vo.Customer_BoardVO;

@Repository
public class Customer_BoardDao implements Customer_BoardInter{
	
	@Autowired
	private SqlSessionTemplate ss; 
	
	@Override
	public Object addwrite(Customer_BoardVO vo) throws Exception {
		return ss.insert("cboard.insert", vo);
	}

	@Override
	public List<Customer_BoardVO> getlist() throws Exception {
		
		return ss.selectList("cboard.list"); 
	}

	@Override
	public Customer_BoardVO getDetail(int c_num) throws Exception {
		
		return ss.selectOne("cboard.viewDetail",c_num);
	}

//	@Override
//	public void updateAns(Customer_BoardVO vo) throws Exception {
//		
//		ss.update("cboard.ans",vo);
//		
//	}

	@Override
	public int delete(int c_num) throws Exception {
		
		return ss.delete("cboard.delete",c_num); 
	}

	@Override
	public List<Customer_BoardVO> listAll(Community_PageVO pvo)throws Exception {
		return ss.selectList("cboard.listall",pvo);
	}

	@Override
	public int getCountAll(Community_PageVO pvo) throws Exception {
		
		return ss.selectOne("cboard.countall",pvo);
	}
	@Override
	public void deleteDetail(int c_num) throws Exception{
		ss.update("cboard.deletedetail", c_num);
		
	}
	
		@Override
		public void updateDetail(Customer_BoardVO vo) throws Exception{			
			ss.update("cboard.updatedetail", vo);
			
			
			
		}

}