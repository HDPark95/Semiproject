package semiproject.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.CommercialProductVO;
import semiproject.mvc.vo.DataVO;
@Repository
public class CommercialProductDao {
	@Autowired
	private SqlSessionTemplate ss;

	public List<CommercialProductVO> getDesc(String location){
		System.out.println("호출");
		List<CommercialProductVO> list = ss.selectList("commercialProduct.desc", location);
		return list;
	}
	public CommercialProductVO getProductDetail(String atclno){
		CommercialProductVO vo = ss.selectOne("commercialProduct.descdetail", atclno);
		return vo;
	}
	public CommercialProductVO getCntProduct(String atclno){
		CommercialProductVO vo = ss.selectOne("commercialProduct.descdetail", atclno);
		return vo;
	}
}
