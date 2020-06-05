package semiproject.mvc.model;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import semiproject.mvc.vo.BoardVO;

import semiproject.mvc.service.CustomerService;

@Controller
public class CustomerPage{
	
	private CustomerService service;
	
	@RequestMapping(value="customer")
	public String goBoard() {
		return "customer_board/board";
	}
	@RequestMapping(value="boardWriter")
	public String writeBoard(BoardVO vo) throws Exception {
		service.create(vo);
		return "customer_board/boardwriter";
	}
	@RequestMapping(value="boardDetail")
	public String customerBody() {
		return "customer_board/boarddetail";
	}
}
