package semiproject.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semiproject.mvc.dao.CommunityDao;

@Controller
public class CommunityPage {

	@Autowired
	private CommunityDao communityDao;
	
	@RequestMapping(value = "/comuMain")
	public String comuMain() {
		return "community/community";
	}

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

	@RequestMapping(value = "/wriDtl")
	public String writeDetail() {
		return "community/writingdetail";
	}

	@RequestMapping(value = "/comugu")
	public String getGu(Model model) {
		System.out.println("시작");
		List<String> list = communityDao.getGu();
//		System.out.println(list.toString());
		model.addAttribute("result",list);
		return "community/server/searchServer";
	}
	
	@RequestMapping(value = "/comudong")
	public String getDong(Model model, String guName) {
		List<String> list = communityDao.getDong(guName);
		model.addAttribute("result",list);
		return "community/server/searchServer";
	}
}
