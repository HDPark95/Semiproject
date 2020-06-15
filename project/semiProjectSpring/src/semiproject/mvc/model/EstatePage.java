package semiproject.mvc.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import semiproject.mvc.dao.EstateDAO;
import semiproject.mvc.service.EstateService;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.EstatePageVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.RentVO;

@Controller
public class EstatePage{
	@Autowired
	private EstateDAO estateDAO;
	
	@Autowired
	private EstateService estateService;
	
	@RequestMapping(value="/estateMain")
	public String goEstate() {
		
		
		return "estate/estate";
	}
	@RequestMapping(value="/addestate")
	public String estateAdd() {
		return "estate/addestate";
	}
	@RequestMapping(value="/estateDetail")
	public String goEsateDetail(int num,Model m) {
		EstateVO vo=estateDAO.estateDetail(num);
		System.out.println(vo.getBuild());
		for(RentVO e: vo.getRent()) {
			System.out.println(e.getRentv());
			System.out.println(e.getRpay());	
		}
		
		m.addAttribute("vo",vo);
		return "estate/estateDetile";
	} 
	@RequestMapping(value = "/insertestate",method = RequestMethod.POST)
	public ModelAndView insertestate(EstateVO estate,AddInfoVO addinfo,String[] rentv,String[] dan, String[] rpay,String[] pay,String[] administrat,String[] option) {
			ModelAndView mav= new ModelAndView("estate/estate");
		
			
			System.out.println(estate.getBuild());
	
			List<RentVO> list = new ArrayList<RentVO>();
			for(int i=0;i<rentv.length;i++) {
				RentVO vo = new RentVO();
				vo.setRentv(rentv[i]);
				vo.setDan(dan[i]);
				vo.setRpay(rpay[i]);
				list.add(vo);
				System.out.println(vo.getRentv());
				System.out.println(vo.getRpay());
				System.out.println(vo.getDan());
			}
			
			estate.setRent(list);
			List<AdministrativeVO> alist= new ArrayList<AdministrativeVO>();
		for(int i=0;i<administrat.length;i++) {
			AdministrativeVO vo = new AdministrativeVO();
			vo.setAdministrat(administrat[i]);
			vo.setPay(Integer.parseInt(pay[i]));
			alist.add(vo);
			System.out.println(vo.getAdministrat());
			System.out.println(vo.getPay());
		}
			System.out.println(addinfo.getBalcony());
			addinfo.setAdministrative(alist);
			addinfo.setOption(option);
			
			estateService.addEstate(estate, addinfo);
			
			mav.addObject("msg","등록이 완료되었습니다.");
		return mav;
	}

	@RequestMapping(value = "/estatelist")
	public ModelAndView estatelist(EstatePageVO pvo,@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage) {
		ModelAndView mav = new ModelAndView("estate/server/estatelist");
		pvo = new EstatePageVO(estateDAO.listCount(), Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	
		mav.addObject("list",	estateDAO.mlist(pvo));
		mav.addObject("paging",pvo);
		
		return mav;
	}
}
