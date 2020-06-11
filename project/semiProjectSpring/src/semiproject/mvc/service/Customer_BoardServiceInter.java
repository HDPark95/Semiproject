package semiproject.mvc.service;

import javax.servlet.http.HttpServletRequest;

import semiproject.mvc.vo.Customer_BoardVO;

public interface Customer_BoardServiceInter {

	public Customer_BoardVO getDetail(HttpServletRequest req) throws  Exception;
}
