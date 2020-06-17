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
		
		estateDAO.addProduct(vo);
		
		
		vo.setPdnum(estateDAO.productnum(vo));
		
		avo.setPdnum(vo.getPdnum());
		avo.setAspay(avo.getAdministrative().get(0).getPay());
		estateDAO.addProductLocation(vo);
		StringBuilder sb= new StringBuilder();
		if(avo.getStructure()!=null) {
			for(int i = 0; i<avo.getStructure().length;i++) {
				sb.append(avo.getStructure()[i]);
				if((avo.getStructure().length-1)>i) {				
					sb.append("/");
				}
			}
			
		}else {
			sb.append("");
		}
		avo.setPstructure(sb.toString());
		sb=new StringBuilder();
		if(avo.getMove()!=null) {
			
			for(int i = 0; i<avo.getMove().length;i++) {
				sb.append(avo.getMove()[i]);
				if((avo.getMove().length-1)>i) {				
					sb.append("/");
				}
			}
			
		}else {
			sb.append("");
		}
		avo.setPmove(sb.toString());
	if(vo.getRent()!=null) {
		// productSale 생성
				for(RentVO e:vo.getRent()) {
					e.setPdnum(vo.getPdnum());
					estateDAO.addProductSale(e);
				}
	}
		
		
		estateDAO.addproductinfo(avo);
		int pidnum = estateDAO.productinfonum(avo);
		avo.setPidnum(pidnum);
		if(vo.getImgName()!=null) {
			for(String name:vo.getImgName()) {
				Product_ImgVO img= new Product_ImgVO();
				img.setImg(name);
				img.setPidnum(pidnum);
				estateDAO.addImg(img);
				
			}
		}
		if(avo.getAdministrative()!=null) {
			for(AdministrativeVO e : avo.getAdministrative()) {
				e.setPidnum(pidnum);
				
				estateDAO.addadmin(e);
			}
		}
		
		if(avo.getOption()!=null) {
			for(String e: avo.getOption()) {
				
				
				Option_SelVO option = new Option_SelVO();
				option.setOption(e);
				option.setPidnum(pidnum);
				estateDAO.addoptionsel(option);
			}
		}
	
		
		
	}
	
	
	public List<EstateVO> estatelist(EstatePageVO vo){
		List<Integer> list=estateDAO.eList(vo);
		List<EstateVO> elist = new ArrayList<EstateVO>();
		
		for(Integer e:list) {
		
			elist.add(estateDAO.emlist(e));
		}
		return elist;
		
	}
	
}
