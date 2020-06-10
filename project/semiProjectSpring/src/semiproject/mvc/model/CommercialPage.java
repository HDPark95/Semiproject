package semiproject.mvc.model;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.CommercialDao;
import semiproject.mvc.dao.CommercialProductDao;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.DataVO;
import semiproject.mvc.vo.PageVO;

@Controller
public class CommercialPage{
	@Autowired
	private CommercialDao commercialDao;
	@Autowired
	private CommercialProductDao commercialProductDao;
	@RequestMapping(value="/commercialMain")
	public String goMain() {
		return "commercial/commercialMain";
	}
	@RequestMapping(value="/register")
	public String goRegist() {
		return "commercial/registeration";
	}
	@RequestMapping(value="/product")
	public String listSearch(PageVO vo, Model model
			   , @RequestParam(value="nowPage", required=false , 
			   defaultValue="1") String nowPage
			   , @RequestParam(value="cntPerPage", required=false , 
			   defaultValue="5") String cntPerPage){
			  int total = commercialProductDao.getTotalCount(vo);
			  if(vo.getSearchType() == null) {
			   vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			  }else {
			   System.out.println("searchValue:"+vo.getSearchValue());
			   vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),vo.getSearchType(),vo.getSearchValue());
			  }
			  List<CommercialProductVO> list = commercialProductDao.getList(vo);
			  model.addAttribute("paging", vo);
			  model.addAttribute("list", list);
			  return "commercial/product";
			 } 
	
	@RequestMapping(value="/popup")
	public String getPopUp() {
		return "popup/jusoPopup";
	}
	@RequestMapping(value="/gu")
	public String getGu(Model model) {
		System.out.println("하이요");
		List<String> list = commercialDao.getGu();
		System.out.println(list.toString());
		model.addAttribute("result", list);
		return  "commercial/server/searchServer";
	}
	@RequestMapping(value="/dong")
	public String getDong(Model model, String guName) {
		List<String> list = commercialDao.getDong(guName);
		model.addAttribute("result", list);
		return "commercial/server/searchServer";
	}
	@RequestMapping(value="/largename")
	public String getLarge(Model model) {
		List<String> list = commercialDao.getLarge();
		model.addAttribute("result", list);
		return "commercial/server/searchServer";
	}
	@RequestMapping(value="/mediumname")
	public String getMedium(Model model, String largeName) {
		List<String> list = commercialDao.getMedium(largeName);
		model.addAttribute("result", list);
		return "commercial/server/searchServer";
	}
	@RequestMapping(value="/smallname")
	public String getSmall(Model model, String largeName, String mediumName) {
		DataVO vo = new DataVO();
		vo.setLargeName(largeName);
		vo.setMediumName(mediumName);
		List<DataVO> list = commercialDao.getSmall(vo);
		model.addAttribute("result", list);
		return "commercial/server/searchServer";
	}
	@RequestMapping(value="/information")
	public String getInformation(Model model, String guName) {
		List<DataVO> list = commercialDao.getInformation(guName);
		model.addAttribute("result", list);
		return "commercial/server/information";
	}
	@RequestMapping(value="/information2")
	public String getInformation2(Model model, DataVO vo) {
		List<DataVO> list = commercialDao.getInformation2(vo);
		model.addAttribute("result", list);
		return "commercial/server/information2";
	}
	@RequestMapping(value="/juso")
	public String goJuso() {
		return "commercial/jusoPopup";
	}
	@RequestMapping(value="/productdesc")
	public String getProductDesc(Model model, String location) {
		System.out.println("넘어왔다." + location);
		List<CommercialProductVO> list = commercialProductDao.getDesc(location);
		model.addAttribute("result", list);
		return "commercial/server/productDesc";
	}
	@RequestMapping(value="/productModal")
	public ModelAndView getProductDetail(String atclno) {
		ModelAndView mav = new ModelAndView("commercial/server/modalServer"); 
		CommercialProductVO vo = commercialProductDao.getProductDetail(atclno);
		if(vo.getTradtpcd().equals("A1")) {
			vo.setTradtpcd("매매");
		}
		mav.addObject("result", vo);
		return mav;
	}
	@RequestMapping(value="/recentCnt")
	public ModelAndView getCntProduct(String atclno) {
		ModelAndView mav = new ModelAndView("commercial/server/recentCntServer");
		CommercialProductVO vo = commercialProductDao.getProductDetail(atclno);
		mav.addObject("result", vo);
		return mav;
	}
	@RequestMapping(value="/markerDetail")
	public ModelAndView setMarker(DataVO vo) {
		ModelAndView mav = new ModelAndView("commercial/server/mainMark");
		List<DataVO> list = commercialDao.getMark(vo);
		mav.addObject("result", list);
		mav.addObject("listsize", list.size());
		return mav;
	}
}
