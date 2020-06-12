package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.Option_SelVO;
import semiproject.mvc.vo.RentVO;

@Repository
public class EstateDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addProduct(EstateVO vo) {
		ss.insert("estate.addproduct", vo);
	}
	
	public int productnum(EstateVO vo) {
		return ss.selectOne("estate.productnum", vo);
	}
	
	public void addProductSale(RentVO vo) {
		ss.insert("estate.addproductsale", vo);
	}
	public void addproductinfo(AddInfoVO vo) {
		ss.insert("estate.addproductinfo", vo);
	}
	public int productinfonum(int pdnum) {
		return ss.selectOne("estate.productinfonum", pdnum);
	}
	
	public void addadmin(AdministrativeVO vo) {
		ss.insert("estate.addadmin",vo);
	}
	public int poptionNum(String option) {
		return ss.selectOne("estate.option", option);
	}
	public void addoptionsel(Option_SelVO vo) {
		ss.insert("estate.addoptionsel",vo);
	}
	
	
	
	/*
	 * public List<EstateVO> getlist(){ return ss.selectList("estate.mainlist");
	 * 
	 * }
	 */
}
