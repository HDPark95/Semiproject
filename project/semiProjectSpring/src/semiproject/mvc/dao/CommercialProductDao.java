package semiproject.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.DataVO;
import semiproject.mvc.vo.PageVO;
import semiproject.mvc.vo.RealPriceVO;
@Repository
public class CommercialProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	public List<CommercialProductVO> getDesc(String location){
		System.out.println("호출");
		List<CommercialProductVO> list = ss.selectList("commercialProduct.desc", location);
		return list;
	}
	public CommercialProductVO getProductDetail(String pdnum){
		System.out.println("pdnumDetail : " + pdnum);
		CommercialProductVO vo = ss.selectOne("commercialProduct.descdetail", pdnum);
		return vo;
	} 
	public CommercialProductVO getCntProduct(String pdnum) {
		System.out.println("pdnumCnt : " + pdnum);
		CommercialProductVO vo = ss.selectOne("commercialProduct.descdetail", pdnum);
		return vo;
	}
	 public List<CommercialProductVO> getList(PageVO svo){ //nowPage등으로 연산이 된  start,end
		  System.out.println("stype"+svo.getSearchType());
		  System.out.println("svalue"+svo.getSearchValue());
		  return ss.selectList("search.list2", svo);
		} 
	 public List<RealPriceVO> getList2(PageVO svo){ //nowPage등으로 연산이 된  start,end
		  System.out.println("stype"+svo.getSearchType());
		  System.out.println("svalue"+svo.getSearchValue());
		  return ss.selectList("search.list3", svo);
		} 
	 public int getTotalCount(PageVO svo) {//전체 데이터를 기준으로 페이지를 나눌것이기 때문에..
		  return ss.selectOne("search.totalCount", svo);
		 }
	 public int getTotalCount2(PageVO svo) {//전체 데이터를 기준으로 페이지를 나눌것이기 때문에..
		  return ss.selectOne("search.totalCount2", svo);
		 }
}

