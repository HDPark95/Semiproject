package semiproject.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import semiproject.mvc.dao.EstateDAO;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.EstatePageVO;
import semiproject.mvc.vo.EstateSearchVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.Option_SelVO;
import semiproject.mvc.vo.Product_ImgVO;
import semiproject.mvc.vo.RentVO;

@Service
@Transactional
public class EstateService {
		
	@Autowired
	private EstateDAO estateDAO;
	
	public void addEstate(EstateVO vo,AddInfoVO avo) {
	//product 생성
		long time1 = System.currentTimeMillis();
		estateDAO.addProduct(vo);
		
		
		//vo.setPdnum(estateDAO.productnum(vo));
		if(vo.getRentv()!=null) {
			estateDAO.addProductSale(vo);				
		}
		estateDAO.addProductLocation(vo);
	
		estateDAO.addproductinfo(avo);
		
//		int pidnum = estateDAO.productinfonum(avo);
//		avo.setPidnum(pidnum);
		if(avo.getAdministrat()!=null) {			
			estateDAO.addadmin(avo);
		}
		if(avo.getOption()!=null) {
			estateDAO.addoptionsel(avo);			
		}
		if(avo.getImgName()!=null) {
			estateDAO.addImg(avo);
		}
	
		
		long time2 = System.currentTimeMillis();
		System.out.println("서비스 메서드 시간 "+(time1-time2));
	}
	
	
	public List<EstateVO> estatelist(EstatePageVO vo){
		if(vo.getEsvo()!=null) {
			EstateSearchVO esvo=vo.getEsvo();
			String roomAreaTo=esvo.getRoomArea_to();
			if(!esvo.getRoomArea_to().equals("무제한")) {
				roomAreaTo=esvo.getRoomArea_to().substring(esvo.getRoomArea_to().indexOf("("), esvo.getRoomArea_to().indexOf(")"));
			}
			String roomAreaFrom=esvo.getRoomArea_from().substring(esvo.getRoomArea_from().indexOf("("), esvo.getRoomArea_from().indexOf(")"));
			roomAreaFrom.replace("(", "");
			roomAreaFrom.replace(")", "");
			esvo.setRoomArea_from(roomAreaFrom);
			esvo.setRoomArea_to(roomAreaTo);
			vo.setEsvo(esvo);
		}
		List<Integer> list=estateDAO.eList(vo);
		List<EstateVO> elist = new ArrayList<EstateVO>();
		
		for(Integer e:list) {
		
			elist.add(estateDAO.emlist(e));
		}
		return elist;
		
	}
	
}
