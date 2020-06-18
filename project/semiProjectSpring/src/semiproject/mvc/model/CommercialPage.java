package semiproject.mvc.model;

import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import semiproject.mvc.service.CommercialService;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.DataVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.PageVO;
import semiproject.mvc.vo.RealPriceVO;
import semiproject.mvc.vo.RentVO;
import semiproject.mvc.vo.UserVO;

@Controller
public class CommercialPage {
	@Autowired
	private CommercialDao commercialDao;
	@Autowired
	private CommercialProductDao commercialProductDao;
	@Autowired
	private CommercialService commercialService;
	@RequestMapping(value = "/commercialMain")
	public String goMain() {
		return "commercial/commercialMain";
	}

	@RequestMapping(value = "/register")
	public String goRegist() {
		return "commercial/registeration2";
	}
	//매물 보기
	@RequestMapping(value = "/product")
	public String listSearch(PageVO vo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {
		int total = commercialProductDao.getTotalCount(vo);
		
		if (vo.getSearchType() == null) {
			vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		} else {                                                                
		
			vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), vo.getSearchType(),
					vo.getSearchValue());
		} 
		List<CommercialProductVO> list = commercialProductDao.getList(vo);
		for (CommercialProductVO e : list) {
			if (e.getTradtpcd().equals("A1")) {
				e.setTradtpcd("매매");
			} else if (e.getTradtpcd().equals("B1")) {
				e.setTradtpcd("전세");
			} else if (e.getTradtpcd().equals("B2")) {
				e.setTradtpcd("월세");
			}
			if (e.getRlettpcd().equals("D02")) {
				e.setRlettpcd("상가");
			}
		}
		
		model.addAttribute("paging", vo);
		model.addAttribute("list", list);
		return "commercial/product";
	}
	@RequestMapping(value = "/realprice")
	public String listSearch2(PageVO vo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {
		int total = commercialProductDao.getTotalCount2(vo);
		if (vo.getSearchType() == null) {
			vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		} else {                                                                
			System.out.println("searchValue:" + vo.getSearchValue());
			vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), vo.getSearchType(),
					vo.getSearchValue());
		} 
		List<RealPriceVO> list = commercialProductDao.getList2(vo);
		System.out.println("listSize : " + list.size());
		model.addAttribute("paging", vo);
		model.addAttribute("list", list);
		return "commercial/realprice";
	}
	@RequestMapping(value = "/popup")
	public String getPopUp() {
		return "popup/jusoPopup";
	}

	@RequestMapping(value = "/gu")
	public String getGu(Model model, String cate) {
		
		List<String> list = commercialDao.getGu();
		
		model.addAttribute("result", list);
		model.addAttribute("cate", cate);
		return "commercial/server/searchServer";
	}

	@RequestMapping(value = "/dong")
	public String getDong(Model model, String guName, String cate) {
		List<String> list = commercialDao.getDong(guName);
		model.addAttribute("result", list);
		model.addAttribute("cate", cate);
		return "commercial/server/searchServer";
	}

	@RequestMapping(value = "/largename")
	public String getLarge(Model model, String cate) {
		List<String> list = commercialDao.getLarge();
		
		model.addAttribute("result", list);
		model.addAttribute("cate", cate);
		return "commercial/server/searchServer";
	}

	@RequestMapping(value = "/mediumname")
	public String getMedium(Model model, String largeName, String cate) {
		List<String> list = commercialDao.getMedium(largeName);
		model.addAttribute("result", list);
		model.addAttribute("cate", cate);
		return "commercial/server/searchServer";
	}

	@RequestMapping(value = "/smallname")
	public String getSmall(Model model, String largeName, String mediumName, String cate) {
		DataVO vo = new DataVO();
		vo.setLargeName(largeName);
		vo.setMediumName(mediumName);

		List<DataVO> list = commercialDao.getSmall(vo);
		model.addAttribute("result", list);
		model.addAttribute("cate", cate);
		return "commercial/server/searchServer";
	}

	@RequestMapping(value = "/information")
	public String getInformation(Model model, String guName) {
		List<DataVO> list = commercialDao.getInformation(guName);
	
		model.addAttribute("result", list);
		return "commercial/server/information";
	}

	@RequestMapping(value = "/information2")
	public String getInformation2(Model model, DataVO vo) {
		List<DataVO> list = commercialDao.getInformation2(vo);
		model.addAttribute("result", list);
		return "commercial/server/information2";
	}

	@RequestMapping(value = "/juso")
	public String goJuso() {
		return "commercial/jusoPopup";
	}

	@RequestMapping(value = "/productdesc")
	public String getProductDesc(Model model, String location) {

		
		List<CommercialProductVO> list = commercialProductDao.getDesc(location);
		model.addAttribute("result", list);
		return "commercial/server/productDesc";
	}

	@RequestMapping(value = "/productModal")
	public ModelAndView getProductDetail(String pdnum) {
		ModelAndView mav = new ModelAndView("commercial/server/modalServer");
		CommercialProductVO vo = commercialProductDao.getProductDetail(pdnum).get(0);
		if (vo.getTradtpcd().equals("A1")) {
			vo.setTradtpcd("매매");
		}
		mav.addObject("result", vo);
		return mav;
	}

	@RequestMapping(value = "/recentCnt")
	public ModelAndView getCntProduct(String pdnum) {
		ModelAndView mav = new ModelAndView("commercial/server/recentCntServer");
		CommercialProductVO vo = commercialProductDao.getProductDetail(pdnum).get(0);
		mav.addObject("result", vo);
		return mav;
	}

	@RequestMapping(value = "/markerDetail")
	public ModelAndView setMarker(DataVO vo) {
		ModelAndView mav = new ModelAndView("commercial/server/mainMark");
		List<DataVO> list = commercialDao.getMark(vo);
		mav.addObject("result", list);
		mav.addObject("listsize", list.size());
		return mav;
	}
	
	@RequestMapping(value="/nearEstate")
	public String findEstate() {
		return "commercial/nearEstate";
	}
	
	@RequestMapping(value="goupdateCommercial")
	public ModelAndView goupdateCommercial(String pdnum) {
		ModelAndView mav = new ModelAndView("commercial/updateForm");
		List<CommercialProductVO> vo = commercialProductDao.getProductDetail(pdnum);
		
		
		mav.addObject("result", vo.get(0));
		return mav;
	}
	
	@RequestMapping(value="updateCommercial",method = RequestMethod.POST)
	public ModelAndView updateCommercial(CommercialProductVO vo, String aid,String[] option,String[] move,String sale,String junsae,String deposit,String monthly) {
		ModelAndView mav = new ModelAndView("redirect:mypage_lessor?aid="+aid);
		
		StringBuffer sb= new StringBuffer();
		if(move!=null) {
			for(int i=0;i<move.length;i++) {
				sb.append(move[i]);
				if(i!=move.length-1) {
					sb.append(",");
				}
			}
			
		}else {
			sb.append("즉시입주");
		}
		vo.setPmove(sb.toString());
		if(vo.getTradtpcd().equals("A1")) {
			vo.setSale(sale);
		}else if(vo.getTradtpcd().equals("B1")) {
			vo.setSale(junsae);
		}else if(vo.getTradtpcd().equals("B2")) {
			vo.setSale(deposit+"/"+monthly);
		}
		commercialService.updateCommercial(vo,option);
	
		return mav;
	}
	
	@RequestMapping(value="deleteCommercial")
	public ModelAndView deleteCommercial(String pdnum, String aid) {
		ModelAndView mav = new ModelAndView("redirect:mypage_lessor?aid="+aid);
		
		commercialService.deleteCommercial(pdnum);
		return mav;
	}
}
