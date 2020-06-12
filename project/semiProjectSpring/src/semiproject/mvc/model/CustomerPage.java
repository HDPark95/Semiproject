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
import semiproject.mvc.service.Customer_BoardService;

import semiproject.mvc.vo.Customer_BoardVO;



@Controller
public class CustomerPage{

	@Autowired
	private Customer_BoardDaoImple customerdao;
	
	@Autowired
	private Customer_BoardService service;
	
	
//	@RequestMapping(value="/customer") 
//	public String goBoard() {
//		return "customer_board/board";  
//	}
	


	
	//페이지 띄우기위한 메서드(뷰) CRUD 중 C
	@RequestMapping(value="/customerboardWriter")
	public String writeBoard() throws Exception {
		
		return "customer_board/boardwriter";
	}
	
	//입력받은 값을 처리하기위한 메소드
	@RequestMapping(value="/boardin" , method = RequestMethod.POST)
	public ModelAndView writeBoard(Customer_BoardVO vo) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println("모델 호출");
		customerdao.addwrite(vo);
		mav.setViewName("redirect:list");
		return mav;
		
	}
		
	// CRUD 중 R 상세페이지 불러오기. -> 게시판 목록 불러오기 	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String customerList(Model model) throws Exception{
		List<Customer_BoardVO> list = customerdao.getlist();
		System.out.println("====================>"+list.get(0).getC_num());
		model.addAttribute("list",list);
		
		return "customer_board/board";  
	}
  
	// 게시판 상세보기 
		@RequestMapping(value="/Detail", method = RequestMethod.GET)
		public String customerDetail(Model model, HttpServletRequest req) throws Exception {
			
			System.out.println("게시판 상세보기 호출");
			
			String c_num = req.getParameter("c_num");
			
			model.addAttribute("detail", customerdao.getDetail(Integer.parseInt(c_num)));
			
			return "customer_board/boarddetail";
			 
		}
		
		//게시판 업데이트 CRUD 중 U -> 답변등록 진행중
		@RequestMapping(value = "ans")
		public ModelAndView ansAdd(Model model , HttpServletRequest req,Customer_BoardVO vo) throws Exception{
			ModelAndView mav = new ModelAndView();
			System.out.println("답변등록 페이지 호출");
			mav.setViewName("customer_board/boardAnsTest");
			//mav.addObject("ans", customerdao.updateAns(vo));
			
			return mav;
		}
		
		
		// 게시판 삭제 CRUD 중 D
		
		@RequestMapping(value = "del" )
		public String delCustomer_Board(int c_num) throws Exception {
			System.out.println("삭제처리 동작?");
			
			customerdao.delete(c_num);
			
			return "redirect:list";
		}
		

}
