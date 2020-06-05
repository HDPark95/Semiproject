package semiproject.mvc.model;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semiproject.mvc.dao.CommercialDao;
import semiproject.mvc.dao.CommercialProductDao;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.DataVO;

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
	public String goProduct() {
		return "commercial/product";
	}
	@RequestMapping(value="/popup")
	public String getPopUp() {
		return "popup/jusoPopup";
	}
	
	@RequestMapping(value="/gu")
	public String getGu(Model model) {
		System.out.println("�떆�옉");
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
	
}
