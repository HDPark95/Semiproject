package semiproject.mvc.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.dao.AuctionDao;
import semiproject.mvc.service.AuctionService;
import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;
import semiproject.mvc.vo.AuctionPageVO;
import semiproject.mvc.vo.AuctionViewVO;
import semiproject.mvc.vo.UserVO;


@Controller
public class AuctionPage{
	
	@Autowired
	private AuctionService auctionservice;
	
	@Autowired
	private AuctionDao auctiondao;
	
//	@RequestMapping(value="/auctionMain")
//	public String auctionMain() {
//		return "auction/auction_main";
//	}
	
	@RequestMapping(value="/auctionAdd")
	public String auctionAdd(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVO sbid =(UserVO)session.getAttribute("user");
		model.addAttribute("sbid",sbid.getAid());
		return "auction/auction_add";
	}
	@RequestMapping(value="/auctionDiv")
	public String auctionDiv() {
		return "auction/div";
	}
	@RequestMapping(value="/auctionGGG")
	public String acutionGGG() {
		return "auction/ggg";
	}
	
	
	@RequestMapping(value="/auctionins",method = RequestMethod.POST)
	public ModelAndView auctionins(AuctionAddMainVO vo,AuctionAddDeVO avo,AuctionAddIpVO bvo,HttpServletRequest request) {
		
		//만료일자
		StringBuffer sbe = new StringBuffer();
		sbe.append(bvo.getEdate()).append(" ").append(bvo.getEtime());
		String enddaytime = sbe.toString();
	
		bvo.setEnddate(enddaytime);
		
		//텍스트
		String ptext = bvo.getIr1();
		bvo.setText(ptext);
		
		//이미지파일경로
		String now = new SimpleDateFormat("yyMMddhhmmssSSS").format(new Date());
		int wrmath = (int)(Math.random()*1000);
		int armath = (int)(Math.random()*1000);
		int brmath = (int)(Math.random()*1000);
		int crmath = (int)(Math.random()*1000);
		HttpSession session = request.getSession();
		//String r_path = session.getServletContext().getRealPath("/");
		//System.out.println("Path :"+r_path);
		//String img_path ="resources\\images\\auction\\pics\\";
		//System.out.println("imgPath :"+r_path);
		String mpath = "C:\\ikosmo64\\pics\\";
		
		StringBuffer path1 = new StringBuffer();
		StringBuffer path2 = new StringBuffer();
		StringBuffer path3 = new StringBuffer();
		StringBuffer path4 = new StringBuffer();
		StringBuffer path1_t = new StringBuffer();
		StringBuffer path2_t = new StringBuffer();
		StringBuffer path3_t = new StringBuffer();
		StringBuffer path4_t = new StringBuffer();
		
//		path1.append(mpath);
//		path2.append(mpath);
//		path3.append(mpath);
//		path4.append(mpath);
		//메인이미지
		String oriFn = avo.getWimageP().getOriginalFilename();
		String oriFn1 = avo.getImageaP().getOriginalFilename();
		String oriFn2 = avo.getImagebP().getOriginalFilename();
		String oriFn3 = avo.getImagecP().getOriginalFilename();
		
		String oriFn_t = "W"+now+wrmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
		String oriFn1_t = "I1"+now+armath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
		String oriFn2_t = "I2"+now+brmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
		String oriFn3_t = "I3"+now+crmath+vo.getBid()+oriFn.substring(oriFn.lastIndexOf("."),oriFn.length());
		
		path1.append(mpath).append(oriFn);
		path2.append(mpath).append(oriFn1);
		path3.append(mpath).append(oriFn2);
		path4.append(mpath).append(oriFn3);
		
		path1_t.append(mpath).append(oriFn_t);
		path2_t.append(mpath).append(oriFn1_t);
		path3_t.append(mpath).append(oriFn2_t);
		path4_t.append(mpath).append(oriFn3_t);
		
		avo.setWimage(oriFn_t);
		avo.setImagea(oriFn1_t);
		avo.setImageb(oriFn2_t);
		avo.setImagec(oriFn3_t);
		
	
		File f = new File(path1.toString());
		File f1 = new File(path2.toString());
		File f2 = new File(path3.toString());
		File f3 = new File(path4.toString());
		
		File f_t = new File(path1_t.toString());
		File f1_t = new File(path2_t.toString());
		File f2_t = new File(path3_t.toString());
		File f3_t = new File(path4_t.toString());
		
		f.renameTo(f_t);
		f1.renameTo(f1_t);
		f2.renameTo(f2_t);
		f3.renameTo(f3_t);
		
		try {
			avo.getWimageP().transferTo(f_t);
			avo.getImageaP().transferTo(f1_t);
			avo.getImagebP().transferTo(f2_t);
			avo.getImagecP().transferTo(f3_t);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		auctionservice.addAuction(vo, avo, bvo);
		ModelAndView mav = new ModelAndView("redirect:auctionMain");
		return mav;
	}
	
	//int statussel,int mulgun,int sortindex,int sortad
	
	@RequestMapping(value = "/auctionMain")
	public String auctionviewlist(AuctionPageVO vo,Model model,HttpServletRequest request,@RequestParam(value = "nowPage",required = false,defaultValue = "1") String nowPage, 
			@RequestParam(value = "cntPage",required = false,defaultValue = "5") String cntPerPage,
			@RequestParam(value = "statussel",required = false,defaultValue = "0") String statussel,
			@RequestParam(value = "mulgun",required = false,defaultValue = "0") String mulgun,
			@RequestParam(value = "sortindex",required = false,defaultValue = "0") String sortindex,
			@RequestParam(value = "searchType",required = false) String searchType,
			@RequestParam(value = "searchValue",required = false) String searchValue
			) {
		int total = auctiondao.getTotalCnt(vo);
		vo = new AuctionPageVO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage),Integer.parseInt(statussel),Integer.parseInt(mulgun),Integer.parseInt(sortindex),vo.getSearchType(),vo.getSearchValue());
		//System.out.println(vo.getSearchType()+"::"+vo.getSearchValue());
		model.addAttribute("paging",vo);
		model.addAttribute("list",auctiondao.getAuctionview(vo));
		//세션 값
		HttpSession session = request.getSession();
		//세션 테스트
		//session.setAttribute("user","tests");
		UserVO sbid =(UserVO) session.getAttribute("user");
		model.addAttribute("sbid",sbid.getAid());
		return "auction/auction_main";

	}	
}
