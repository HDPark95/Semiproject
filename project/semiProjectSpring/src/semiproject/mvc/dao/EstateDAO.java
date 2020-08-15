package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AddInfoVO;
import semiproject.mvc.vo.AdministrativeVO;
import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.EstatePageVO;
import semiproject.mvc.vo.EstateSearchVO;
import semiproject.mvc.vo.EstateVO;
import semiproject.mvc.vo.ForSaleVO;
import semiproject.mvc.vo.ForSale_Info_EstateVO;
import semiproject.mvc.vo.ForSale_Info_StoreVO;
import semiproject.mvc.vo.Forsale_ImgVO;
import semiproject.mvc.vo.Option_SelVO;
import semiproject.mvc.vo.PageVO;
import semiproject.mvc.vo.Product_ImgVO;
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
	public void addImg(AddInfoVO vo) {
		ss.insert("estate.addImg",vo);
	}
	public void addProductSale(EstateVO vo) {
		ss.insert("estate.addproductsale", vo);
	}
	public void addProductLocation(EstateVO vo) {
		ss.insert("estate.addlocation",vo);
	}
	public void addproductinfo(AddInfoVO vo) {
		ss.insert("estate.addproductinfo", vo);
	}
	public int productinfonum(AddInfoVO vo) {
		return ss.selectOne("estate.productinfonum", vo);
	}
	
	public void addadmin(AddInfoVO vo) {
		ss.insert("estate.addadmin",vo);
	}

	public void addoptionsel(AddInfoVO vo) {
		ss.insert("estate.addoptionsel",vo);
	}
	
	public int listCount2(EstateSearchVO esvo) {
		return ss.selectOne("estate.fsale_count",esvo);
	}
	public List<ForSaleVO> fsalelist(EstatePageVO pvo){
		return ss.selectList("estate.fsale_list",pvo);
	}
	public ForSaleVO estateDetail_main(ForSaleVO fvo) {
		return ss.selectOne("estate.fsale_detail_main",fvo);
	}
	
	public int listCount() {
		return ss.selectOne("estate.pcount");
	}
	public EstateVO estateDetail(int num) {
		return ss.selectOne("estate.Detail",num);
	}
	public String fileid(int num) {
		return ss.selectOne("estate.fileid",num);
	}
	
	public List<CommercialProductVO> commentList(PageVO vo){
		return ss.selectList("search.commentlist", vo);
	}
	
	public List<Integer> eList(EstatePageVO pvo){
		return ss.selectList("estate.emlist",pvo);
	}
	
	public EstateVO emlist(int num) {
		return ss.selectOne("estate.estateMlist",num);
	}
	
	
	public void anumUpdate(ForSaleVO fvo) {
		ss.update("update.anum_update", fvo);
	}
	
	public List<ForSaleVO> anumSelect(){
		return ss.selectList("update.anum_select");
	}
	
	public List<ForSaleVO> fnumSelect(){
		return ss.selectList("update.fnum_select");
	}
}
