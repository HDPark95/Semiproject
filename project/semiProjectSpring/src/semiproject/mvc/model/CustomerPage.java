package semiproject.mvc.model;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.Customer_BoardDaoImple;
import semiproject.mvc.vo.BoardPageVO;
import semiproject.mvc.vo.Customer_BoardVO;



@Controller
public class CustomerPage{

	@Autowired
	private Customer_BoardDaoImple customerdao;
	
	
	
	@RequestMapping(value="/customer")
	public String goBoard() {
		return "customer_board/board";
	}
	
//	@RequestMapping(value="/customerboardWriter")
//	public ModelAndView writeBoard(Customer_BoardVO vo) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		int res = customerdao.addwrite(vo);
//		if (res == 1) {
//			mav.setViewName("customer_board/boardwriter");
//			mav.addObject("c_writer",vo.getC_writer());
//		}else {
//			mav.setViewName("customer_board/boardwriterror");
//			mav.addObject("c_writer",vo.getC_writer());
//		}
//		return mav;
//		
//	}
	
	
	@RequestMapping(value="/customerboardWriter")
	public String writeBoard() throws Exception {
		
		return "customer_board/boardwriter";
	}
	
	@RequestMapping(value = "/boardin")
	public ModelAndView insertBoard(Customer_BoardVO vo) throws Exception {
		ModelAndView mav = new ModelAndView("customer_board/board");
		customerdao.addwrite(vo);
		
		return mav;
	}
	
	@RequestMapping(value="/customerboardDetail")
	public String customerBody() {
		return "customer_board/boarddetail";
	}


}
