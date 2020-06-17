package semiproject.mvc.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import semiproject.mvc.dao.EstateDAO;
import semiproject.mvc.service.EstateService;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.EstatePageVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.PageVO;
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
	
		m.addAttribute("vo",vo);
		return "estate/estateDetile";
	} 
	@RequestMapping(value = "/insertestate",method = RequestMethod.POST)
	public ModelAndView insertestate(EstateVO estate,AddInfoVO addinfo,String[] rentv,String[] dan, String[] rpay,String[] pay,String[] administrat,String[] option,String[] imgName,String mainaddr,String subaddr,String zipNo,String[] structure) {
			ModelAndView mav= new ModelAndView("estate/estate");
		
			estate.setDetaillocation(mainaddr+subaddr);
			StringTokenizer st=new StringTokenizer(mainaddr," ");
			int num=0;
			while(st.hasMoreTokens()) {
				if(num==1) {
					estate.setPlocation(st.nextToken());
				}
				num++;
			}
			System.out.println(estate.getBuild());
			estate.setImgName(imgName);
			if(rentv!=null&&rpay!=null) {
				List<RentVO> list = new ArrayList<RentVO>();
				for(int i=0;i<rentv.length;i++) {
					RentVO vo = new RentVO();
					vo.setRentv(rentv[i]);
					vo.setDan(dan[i]);
					vo.setRpay(rpay[i]);
					list.add(vo);
					
				}
				
				estate.setRent(list);
			}
	
			if(administrat!=null&&pay!=null) {
				List<AdministrativeVO> alist= new ArrayList<AdministrativeVO>();
				for(int i=0;i<administrat.length;i++) {
					AdministrativeVO vo = new AdministrativeVO();
					vo.setAdministrat(administrat[i]);
					vo.setPay(Integer.parseInt(pay[i]));
					alist.add(vo);
					
				}
				addinfo.setAdministrative(alist);
			}
		
		
			addinfo.setStructure(structure);
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
			List<EstateVO> list= estateService.estatelist(pvo);
		mav.addObject("list",	list);
		mav.addObject("paging",pvo);
		
		return mav;
	}
	
	@RequestMapping(value = "/imgupload",method = RequestMethod.POST)
	@ResponseBody
	public String imgupload(MultipartFile mfile,HttpServletRequest request,String anum) {
		StringBuffer sbe = new StringBuffer();
		StringBuffer sber = new StringBuffer();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String date=sdf.format(new Date());
		
		int num= Integer.parseInt(anum);
		String name=estateDAO.fileid(num);
		String fileid=name+date;
		
		
		String mpath = "C:\\ikosmo64\\pics\\";
		String oriFn = mfile.getOriginalFilename();
		sber.append(mpath).append(fileid).append(oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length()));
		fileid+=oriFn.subSequence(oriFn.lastIndexOf("."),oriFn.length());
		sbe.append(mpath).append(oriFn);
		File f=new File(sbe.toString());
		File rf=new File(sber.toString());
		f.renameTo(rf);
		try {
			mfile.transferTo(rf);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return fileid;
	}
	
	
	
	@RequestMapping(value = "/commentlist",method =  RequestMethod.POST)
	public String commentlist(String remeber,String text,Model m) {
		System.out.println("값 1:"+remeber);
		System.out.println("값 2:"+text);
		if(remeber.equals("원룸")) {
			remeber="C01";
		}
		else if(remeber.equals("아파트")) {
			remeber="A01";
		}
		else if(remeber.equals("오피스텔")) {
			remeber="A02";
		}
		else if(remeber.equals("주택")) {
			remeber="C03";
		}
		if(text.equals("전세")) {
			text="B1";
		}
		else if(text.equals("월세")) {
			text="B2";
		}
		else if(text.equals("매매")) {
			text="A1";
		}
		
		PageVO vo =new PageVO();
		vo.setSearchType("1");
		vo.setSearchValue(remeber);
		if(!remeber.equals(text)) {
			vo.setSearchType2("1");
			vo.setSearchValue2(text);
		}
		List<CommercialProductVO> list=estateDAO.commentList(vo);
		System.out.println(list.size());
		for(CommercialProductVO e:list) {
			System.out.println("타이틀 :"+e.getAtclfetrdesc());
			System.out.println("이미지 :"+e.getImg());
			System.out.println("번호:"+e.getPdnum());
		}
		
		m.addAttribute("list", list);
		
		return "estate/server/recentCntServer";
	}
}
