package semiproject.mvc.model;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import semiproject.mvc.dao.Customer_BoardDaoImple1;

import semiproject.mvc.vo.Customer_Board1VO;
import semiproject.mvc.vo.Customer_Board_PageVO;




@Controller
public class CustomerPage1{

	@Autowired
	private Customer_BoardDaoImple1 customerdao1;
	
//	@Autowired
//	private Customer_BoardService service;
	
	
	@RequestMapping(value="/customer") 
	public String goBoard() {
		return "customer_board1/board";  
	}
	


	
	//페이지 띄우기위한 메서드(뷰) CRUD 중 C
	@RequestMapping(value="/customerboardWriter1")
	public String writeBoard() throws Exception {
		
		return "customer_board1/boardwriter";
	}
	
	//입력받은 값을 처리하기위한 메소드
	@RequestMapping(value="/boardin1" , method = RequestMethod.POST)
	public ModelAndView writeBoard(Customer_Board1VO vo) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		customerdao1.addwrite(vo);
		mav.setViewName("redirect:list1");
		return mav;
		
	}
		
	// CRUD 중 R 상세페이지 불러오기. -> 게시판 목록 불러오기 	
	@RequestMapping(value="/list1", method = RequestMethod.GET)
	public String customerList(Model model,Customer_Board_PageVO vo, 
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) throws Exception{
		int total = customerdao1.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new Customer_Board_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
//		model.addAttribute("viewAll", customerdao1.selectBoard(vo));
		
		List<Customer_Board1VO> list = customerdao1.getlist();
		model.addAttribute("list1",list);
		
		return "customer_board1/board";  
	}
  
	// 게시판 상세보기 
		@RequestMapping(value="/Detail1", method = RequestMethod.GET)
		public String customerDetail(Model model, HttpServletRequest req) throws Exception {
			
			
			
			String c_num = req.getParameter("c_num");
			
			model.addAttribute("detail1", customerdao1.getDetail(Integer.parseInt(c_num)));
			
			return "customer_board1/boarddetail";
			 
		}
		
		//게시판 업데이트 CRUD 중 U -> 답변등록 진행중
		@RequestMapping(value = "ans1")
		public ModelAndView ansPage(HttpServletRequest req) throws Exception{
			ModelAndView mav = new ModelAndView();
			
			String c_num = req.getParameter("c_num");
			mav.addObject("detail1", customerdao1.getDetail(Integer.parseInt(c_num)));
			mav.setViewName("customer_board1/boardAnsTest");
			
			return mav;
		}
		
	@RequestMapping(value = "ansinsert1", method = RequestMethod.POST)
	public ModelAndView ansInsert(Customer_Board1VO vo) throws Exception{
		ModelAndView mav = new ModelAndView();
	
		customerdao1.updateAns(vo);
	
		
		mav.setViewName("redirect:list1");
		return mav;
		
	}
		
		// 게시판 삭제 CRUD 중 D
		
		@RequestMapping(value = "del1" )
		public String delCustomer_Board(int c_num) throws Exception {
			
			
			customerdao1.delete(c_num);
			
			return "redirect:list1";
		}
		
		//페이징 처리
		// CRUD 중 R 상세페이지 불러오기. -> 게시판 목록 불러오기 	
		@RequestMapping(value="/paging", method = RequestMethod.GET)
		public String customerPaging(Model model,Customer_Board_PageVO vo, 
				@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
				@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) throws Exception{
			int total = customerdao1.countBoard();
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}
			vo = new Customer_Board_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			model.addAttribute("paging", vo);
			model.addAttribute("viewAll", customerdao1.selectBoard(vo));
			
	
			
			return "customer_board1/boardPaging";  
		}

}
