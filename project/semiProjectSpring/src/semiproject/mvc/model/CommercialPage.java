package semiproject.mvc.model;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import semiproject.mvc.dao.CommercialDao;
import semiproject.mvc.vo.DataVO;

@Controller
public class CommercialPage{
	@Autowired
	private CommercialDao commercialDao;
	
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
		System.out.println("시작");
		List<String> list = commercialDao.getGu();
		System.out.println(list.toString());
		model.addAttribute("result", list);
		return  "commercial/server/searchServer";
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
//	private PageForward execute1(HttpServletRequest request, HttpServletResponse response) {
//		List<String> list = CommercialDao.getDao().getGu();
//		request.setAttribute("result", list);
//		for (String e : list) {
//			System.out.println(e);
//		}
//		return new PageForward("commercial/server/searchServer", false);
//	}
//
//	private PageForward execute2(HttpServletRequest request, HttpServletResponse response) {
//		List<String> list = CommercialDao.getDao().getLarge();
//		request.setAttribute("result", list);
//		for (String e : list) {
//			System.out.println(e);
//		}
//		return new PageForward("commercial/server/searchServer", false);
//	}
//
//	private PageForward execute3(HttpServletRequest request, HttpServletResponse response) {
//		String largeName = request.getParameter("largeName");
//		List<String> list = CommercialDao.getDao().getMedium(largeName);
//		request.setAttribute("result", list);
//
//		return new PageForward("commercial/server/searchServer", false);
//	}
//
//	private PageForward execute4(HttpServletRequest request, HttpServletResponse response) {
//		DataVO vo = new DataVO();
//		String largeName = request.getParameter("largeName");
//		String mediumName = request.getParameter("mediumName");
//		vo.setLargeName(largeName);
//		vo.setMediumName(mediumName);
//		List<DataVO> list = CommercialDao.getDao().getSmall(vo);
//		request.setAttribute("result", list);
//
//		return new PageForward("commercial/server/searchServer", false);
//	}
//
//	private PageForward execute5(HttpServletRequest request, HttpServletResponse response) {
//		DataVO vo = new DataVO();
//		String largeName = request.getParameter("largeName");
//		String mediumName = request.getParameter("mediumName");
//		vo.setLargeName(largeName);
//		vo.setMediumName(mediumName);
//		List<DataVO> list = CommercialDao.getDao().getMark(vo);
//		request.setAttribute("result", list);
//		return new PageForward("commercial/server/markMain", false);
//	}
	/*
	 * private void execute99(HttpServletRequest request, HttpServletResponse
	 * response) { JSONObject inner = new JSONObject();
	 * CommercialDao.getDao().getGu(); JSONObject outer = new JSONObject();
	 * FileWriter file = new
	 * FileWriter("C://ikosmo64/project/workspace/project/WebContent/js/output.json"
	 * ); file.write(gu.toJSONString()); file.flush(); file.close(); }
	 */

}
