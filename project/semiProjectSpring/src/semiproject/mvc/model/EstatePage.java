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
import semiproject.mvc.util.ImageUploadFile;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.EstatePageVO;
import semiproject.mvc.vo.EstateSearchVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.ForSaleVO;
import semiproject.mvc.vo.PageVO;
import semiproject.mvc.vo.RentVO;

@Controller
public class EstatePage{
	@Autowired
	private EstateDAO estateDAO;
	
	@Autowired
	private EstateService estateService;
	
	@Autowired
	private ImageUploadFile imageUploadFile;
	
	
	@RequestMapping(value="/estateMain")
	public String goEstate() {
//		List<ForSaleVO> anumList=estateDAO.anumSelect();
//		List<ForSaleVO> fnumList=estateDAO.fnumSelect();
//		int num = 0;
//		for(ForSaleVO fvo : fnumList) {
//			if(num==anumList.size()-1) {
//				num=0;
//			}
//			fvo.setAnum(anumList.get(num).getAnum());
//			estateDAO.anumUpdate(fvo);
//			num++;
//		}
		
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
		return "estate/estateDetaile";
	} 
	@RequestMapping(value = "/insertestate",method = RequestMethod.POST)
	public ModelAndView insertestate(HttpServletRequest request,MultipartFile[] mfile,EstateVO estate,AddInfoVO addinfo,String[] rentv, String[] rpay,String[] pay,String[] administrat,String[] option,String[] imgName,String mainaddr,String subaddr,String zipNo,String[] structure) {
			ModelAndView mav= new ModelAndView("estate/estate");
			long time1=System.currentTimeMillis();
			System.out.println("등록시작");
			estate.setDetaillocation(mainaddr+subaddr);
			List<String> imageName= new ArrayList<String>();
			System.out.println("파일의 갯수는?"+mfile.length);
			int filenum=1;
			for(MultipartFile m:mfile) {
				System.out.println();
				String name=imageUploadFile.imgupload(m, request, estate.getAnum(),"estate",filenum);
				if(!name.equals("")) {
					imageName.add(name);					
				}
				filenum+=1;
			}
//			StringTokenizer st=new StringTokenizer(mainaddr," ");
//			int num=0;
//			while(st.hasMoreTokens()) {
//				if(num==1) {
//					estate.setPlocation(st.nextToken());
//				}
//				num++;
//			}
			estate.setPlocation(mainaddr.split(" ")[1]);
			estate.setRentv(rentv);
			estate.setRpay(rpay);
			
			
			addinfo.setAdministrat(administrat);
			addinfo.setPay(pay);

			addinfo.setImgName(imageName.toArray(new String[imageName.size()]));
			addinfo.setStructure(structure);
			addinfo.setOption(option);
			
			System.out.println(addinfo.getImgName());
//			if(rentv!=null&&rpay!=null) {
//				List<RentVO> list = new ArrayList<RentVO>();
//				for(int i=0;i<rentv.length;i++) {
//					RentVO vo = new RentVO();
//					vo.setRentv(rentv[i]);
//					
//					vo.setRpay(rpay[i]);
//					list.add(vo);
//					
//				}
//				
//				estate.setRent(list);
//			}
			System.out.println("서비스 시작");
			//estateService.addEstate(estate, addinfo);
			
			mav.addObject("msg","등록이 완료되었습니다.");
			long time2=System.currentTimeMillis();
			System.out.println("등록메서드 시간 :"+(time1-time2));
		return mav;
	}

	@RequestMapping(value = "/estatelist",method = RequestMethod.POST)
	public ModelAndView estatelist(EstatePageVO pvo,@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,EstateSearchVO esvo) {
		long start=System.currentTimeMillis();
		System.out.println("시작시간 :"+start);
		ModelAndView mav = new ModelAndView("estate/server/estatelist");
		System.out.println(esvo.toString());
		
		System.out.println(estateDAO.listCount2(esvo));
		String to = "무제한";
		
		esvo.setDeposits_to(to);
		esvo.setMonthmoenys_to(to);
		esvo.setRoomArea_to(to);
		esvo.setRoomCare_to(to);
		esvo.setTrades_to(to);
		
		
		esvo.setDeposits_from("0");
		esvo.setMonthmoenys_from("0");
		esvo.setRoomArea_from("0");
		esvo.setRoomCare_from("0");
		esvo.setTrades_from("0");

		long end2 = System.currentTimeMillis();
		System.out.println(" 카운트 걸린시간 :"+(end2-start));
		pvo = new EstatePageVO(estateDAO.listCount2(esvo), Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		if(esvo!=null && !esvo.equals("")) {
			pvo.setEsvo(esvo);
		}
		System.out.println("실행?");
		System.out.println(esvo.toString());
		List<ForSaleVO> forlist=estateDAO.fsalelist(pvo);
		//List<EstateVO> list= estateService.estatelist(pvo);
		//System.out.println(list.toString());
		//mav.addObject("list",	list);
		System.out.println(forlist.toString());
		mav.addObject("fsale",forlist);
		mav.addObject("paging",pvo);
		long end = System.currentTimeMillis();
		System.out.println("걸린시간 :"+(end-start));
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
		
		for(CommercialProductVO e:list) {
			System.out.println("타이틀 :"+e.getAtclfetrdesc());
			System.out.println("이미지 :"+e.getImg());
			System.out.println("번호:"+e.getPdnum());
		}
		
		m.addAttribute("list", list);
		
		return "estate/server/recentCntServer";
	}
}
