package semiproject.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.ChartVO;
import semiproject.mvc.vo.DataVO;
import semiproject.mvc.vo.OuterDataVO;
@Repository
public class CommercialDao {
	@Autowired
	private SqlSessionTemplate ss;

	public List<String> getGu() {
	
		List<String> list = ss.selectList("data.gu");
	
		return list;
	} 

	public List<String> getLarge() {
		List<String> list = ss.selectList("data.large");
	
		return list;
	}

	public List<String> getMedium(String largeName) {
		List<String> list = ss.selectList("data.medium", largeName);
		
	
		return list;
	}

	public List<DataVO> getSmall(DataVO vo) {
		List<DataVO> list = ss.selectList("data.small", vo);
		
	
		return list;
	}
	public List<DataVO> getMark(DataVO vo) {
		List<DataVO> list = ss.selectList("data.map", vo);
		
	
		return list;
	}
	public List<DataVO> getInformation(String guname) {
		List<DataVO> list = ss.selectList("data.information", guname);
		

		return list;
	}
	public List<DataVO> getInformation2(DataVO vo) {
		List<DataVO> list = ss.selectList("data.information2", vo);
		
	
		return list;
	}
	public List<String> getDong(String guName){
		List<String> list = ss.selectList("data.dong", guName);
		return list;
	}
	public List<ChartVO> getTimePopChart(String guName){
		List<ChartVO> list = ss.selectList("data.timePopChart", guName);
		return list;
	}
	public List<ChartVO> getTimePopChartByGender(String guName){
		List<ChartVO> list = ss.selectList("data.timePopChartByGender", guName);
		return list;
	}
	public OuterDataVO getOpenBusiData(OuterDataVO vo){
		OuterDataVO result = ss.selectOne("data.openBusi",vo); 
		return result;
	}
	public OuterDataVO getCloseBusiData(String guname){
		OuterDataVO vo = ss.selectOne("data.closeBusi", guname);
		return vo;
	}
	public List<OuterDataVO> getCloseChartData(String guname) {
		List<OuterDataVO> list = ss.selectList("data.closeChart", guname);
		return list;
	}
}
