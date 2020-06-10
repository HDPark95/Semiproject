package semiproject.mvc.model;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	


	
	//페이지 띄우기위한 메서드(뷰) CRUD 중 C
	@RequestMapping(value="/customerboardWriter")
	public String writeBoard() throws Exception {
		
		return "customer_board/boardwriter";
	}
	
	//입력받은 값을 처리하기위한 메소드
	@RequestMapping(value="/boardin" , method = RequestMethod.POST)
	public ModelAndView writeBoard(Customer_BoardVO vo) throws Exception {
		ModelAndView mav = new ModelAndView("customer_board/board");
		System.out.println("모델 호출");
		customerdao.addwrite(vo);
		return mav;
		
	}
	

	// CRUD 중 R 상세페이지 불러오기.
	@RequestMapping(value="/customerboardDetail")
	public String customerBody() {
		return "customer_board/boarddetail";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String customerList(Model model) throws Exception{
		
		model.addAttribute("list",customerdao.getlist());
		
		return "customer_board/board";
	}
  

}
