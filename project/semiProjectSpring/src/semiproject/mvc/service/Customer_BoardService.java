package semiproject.mvc.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semiproject.mvc.dao.Customer_BoardDaoImple;
import semiproject.mvc.vo.Customer_BoardVO;

@Service
public class Customer_BoardService implements Customer_BoardServiceInter{

	@Autowired
	private Customer_BoardDaoImple dao;
	@Override
	public Customer_BoardVO getDetail(HttpServletRequest req) throws Exception {
		String c_num = req.getParameter("c_num");
			
		return dao.getDetail(Integer.parseInt(c_num));
	}

}
