package semiproject.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.CommunityDao;
import semiproject.mvc.vo.Community_BoardVO;
import semiproject.mvc.vo.Community_PageVO;

@Controller
public class CommunityPage {
	
	@Autowired
	private CommunityDao communityDao;

	@RequestMapping(value = "/wriCom")
	public String writeCommercial() {
		return "community/writing_commercial";
	}

	@RequestMapping(value = "/wriEst")
	public String writeEstate() {
		return "community/writing_estate";
	}

	@RequestMapping(value = "/wriAuc")
	public String writeAuction() {
		return "community/writing_auction";
	}
	
	@RequestMapping(value = "/updateWrec")
	public String updateWrec(Model model, int wnum) {
		communityDao.updateWrec(wnum);
		Community_BoardVO list = communityDao.getWrec(wnum);
		model.addAttribute("list", list);
		return "redirect:writing_detail?wnum="+wnum;
	}
	
	@RequestMapping(value = "/comugu")
	public String getGu(Model model) {
		List<String> list = communityDao.getGu();
		model.addAttribute("result",list);
		return "community/server/searchServer";
	}
	
	@RequestMapping(value = "/comudong")
	public String getDong(Model model, String guName) {
		List<String> list = communityDao.getDong(guName);
		model.addAttribute("result",list);
		return "community/server/searchServer";
	}
	
	@RequestMapping(value = "/comuMain")
	public String writingAllList(Community_PageVO pvo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(value = "sortindex", required = false, defaultValue = "1") String sortindex,
			@RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchValue) {
		int total = communityDao.getCountAll(pvo);
		pvo = new Community_PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), Integer.parseInt(sortindex));
		pvo.setSearchType(searchType);
		pvo.setSearchValue(searchValue);
		model.addAttribute("paging", pvo);
		model.addAttribute("listall", communityDao.allList(pvo));
		model.addAttribute("total", total);
		return "community/community";
	}
	
	@RequestMapping(value = "/writing_commercial_in",method = RequestMethod.POST)
	public ModelAndView writingCommercial(Community_BoardVO vo) {
		ModelAndView mav = new ModelAndView("redirect:comuMain");
		communityDao.cWriting(vo);
		return mav;
		
	}
	
	@RequestMapping(value = "/writing_estate_in",method = RequestMethod.POST)
	public ModelAndView writingEstate(Community_BoardVO vo) {
		ModelAndView mav = new ModelAndView("redirect:comuMain");
		communityDao.eWriting(vo);
		return mav;
	}
	
	@RequestMapping(value = "/writing_auction_in",method = RequestMethod.POST)
	public ModelAndView writingAuction(Community_BoardVO vo) {
		ModelAndView mav = new ModelAndView("redirect:comuMain");
		communityDao.aWriting(vo);
		return mav;
	}
	
	// 상세보기로 들어가는 컨트롤러
	@RequestMapping(value = "/writing_detail")
	public ModelAndView writeDetail(int wnum) {
		ModelAndView mav = new ModelAndView("community/writing_detail");
		communityDao.updateWhit(wnum);
		Community_BoardVO list = communityDao.WriDetail(wnum);
		mav.addObject("list", list);
		return mav;
	}
	
	// writing_update로 들어가는 컨트롤러
	@RequestMapping(value = "/updatedetailform")
	public ModelAndView updateDetailForm(int wnum) {
		ModelAndView mav = new ModelAndView("community/writing_update");
		Community_BoardVO list = communityDao.WriDetail(wnum);
		mav.addObject("list", list);
		return mav;
	}
	
	// 수정 버튼을 눌러 수정하는 컨트롤러
	@RequestMapping(value = "/updetail")
	public ModelAndView updateDetail(Community_BoardVO vo) {
		communityDao.updateDetail(vo);
		ModelAndView mav = new ModelAndView("redirect:writing_detail?wnum="+vo.getWnum());
		return mav;
	}
	
	// 글을 '삭제 상태'로 만드는 컨트롤러
	@RequestMapping(value = "/dedetail", method = RequestMethod.GET)
	public String deleteDetail(int wnum) {
		communityDao.deleteDetail(wnum);
		return "redirect:comuMain";
	}

}
