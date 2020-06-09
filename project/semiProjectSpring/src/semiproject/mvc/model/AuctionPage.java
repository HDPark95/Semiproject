package semiproject.mvc.model;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import semiproject.mvc.service.AuctionService;
import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;


@Controller
public class AuctionPage{
	
	@Autowired
	private AuctionService auctionservice;
	
	@RequestMapping(value="/auctionMain")
	public String auctionMain() {
		return "auction/auction_main";
	}
	
	@RequestMapping(value="/auctionAdd")
	public String auctionAdd() {
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
	@RequestMapping(value="/estate")
	public String goEstate() {
		return "estate/estate";
	}
	
	@RequestMapping(value="/auctionins",method = RequestMethod.POST)
	public ModelAndView auctionins(AuctionAddMainVO vo,AuctionAddDeVO avo,AuctionAddIpVO bvo,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		//System.out.println("Path :"+r_path);
		String img_path ="resources\\images\\auction\\pics";
		//System.out.println("imgPath :"+r_path);
		
		StringBuffer path1 = new StringBuffer();
		StringBuffer path2 = new StringBuffer();
		StringBuffer path3 = new StringBuffer();
		StringBuffer path4 = new StringBuffer();
		path1.append(r_path).append(img_path);
		path2.append(r_path).append(img_path);
		path3.append(r_path).append(img_path);
		path4.append(r_path).append(img_path);
		//메인이미지
		String oriFn = avo.getWimageP().getOriginalFilename();
		String oriFn1 = avo.getImageaP().getOriginalFilename();
		String oriFn2 = avo.getImagebP().getOriginalFilename();
		String oriFn3 = avo.getImagecP().getOriginalFilename();
		
		path1.append(oriFn);
		path2.append(oriFn1);
		path3.append(oriFn2);
		path4.append(oriFn3);
		
		avo.setWimage(oriFn);
		avo.setImagea(oriFn1);
		avo.setImageb(oriFn2);
		avo.setImagec(oriFn3);
		
		//System.out.println("FullPath :"+path1);
		File f = new File(path1.toString());
		File f1 = new File(path2.toString());
		File f2 = new File(path3.toString());
		File f3 = new File(path4.toString());
		try {
			avo.getWimageP().transferTo(f);
			avo.getImageaP().transferTo(f1);
			avo.getImagebP().transferTo(f2);
			avo.getImagecP().transferTo(f3);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		auctionservice.addAuction(vo, avo, bvo);
		ModelAndView mav = new ModelAndView("redirect:auctionMain");
		return mav;
	}
	
	
}
