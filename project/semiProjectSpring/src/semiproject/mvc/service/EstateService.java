package semiproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import semiproject.mvc.dao.EstateDAO;
import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.Option_SelVO;
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
		StringBuilder sb= new StringBuilder();
		for(int i = 0; i<avo.getStructure().length;i++) {
			sb.append(avo.getStructure()[i]);
			if((avo.getStructure().length-1)>i) {				
				sb.append("/");
			}
		}
		avo.setPstructure(sb.toString());
		sb=new StringBuilder();
		for(int i = 0; i<avo.getStructure().length;i++) {
			sb.append(avo.getMove()[i]);
			if((avo.getStructure().length-1)>i) {				
				sb.append("/");
			}
		}
		avo.setPmove(sb.toString());
		// productSale 생성
		for(RentVO e:vo.getRent()) {
			e.setPdnum(vo.getPdnum());
			estateDAO.addProductSale(e);
		}
		
		estateDAO.addproductinfo(avo);
		int pidnum = estateDAO.productinfonum(avo.getPdnum());
		avo.setPidnum(pidnum);
		for(AdministrativeVO e : avo.getAdministrative()) {
			e.setPidnum(pidnum);
			
			estateDAO.addadmin(e);
		}
		
		for(String e: avo.getOption()) {
			System.out.println(e);
			
			Option_SelVO option = new Option_SelVO();
			option.setOption(e);
			option.setPidnum(pidnum);
			estateDAO.addoptionsel(option);
		}
		
		
	}
	
}
