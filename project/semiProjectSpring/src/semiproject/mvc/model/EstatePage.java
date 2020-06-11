package semiproject.mvc.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.RentVO;

@Controller
public class EstatePage{
	
	
	@RequestMapping(value="/estateMain")
	public String goEstate() {
		
		
		return "estate/estate";
	}
	@RequestMapping(value="/addestate")
	public String estateAdd() {
		return "estate/addestate";
	}
	@RequestMapping(value="/estateDetail")
	public String goEsateDetail() {
		return "estate/estateDetile";
	} 
	@RequestMapping(value = "/insertestate",method = RequestMethod.POST)
	public ModelAndView insertestate(EstateVO estate,AddInfoVO addinfo,String[] rentv,String[] dan, String[] rpay,String[] pay,String[] administrat) {
			ModelAndView mav= new ModelAndView("estate/addestate");
		
			
			System.out.println(estate.getBuild());
			System.out.println(estate.getDescription());
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
			List<AdministrativeVO> alist= new ArrayList<AdministrativeVO>();
		for(int i=0;i<administrat.length;i++) {
			AdministrativeVO vo = new AdministrativeVO();
			vo.setAdministrat(administrat[i]);
			vo.setPay(Integer.parseInt(pay[i]));
			alist.add(vo);
			System.out.println(vo.getAdministrat());
			System.out.println(vo.getPay());
		}
			
			
		
		return mav;
	}
	
	
}
