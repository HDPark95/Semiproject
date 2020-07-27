package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AuctionMyJsonVO;
import semiproject.mvc.vo.AuctionMyipViewVO;
import semiproject.mvc.vo.AuctionmypageipVO;

@Repository
public class AuctionMypageDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<AuctionMyipViewVO> selectipinfo(String aid) {
		return ss.selectList("auctionmyip.ipsel",aid);
	}
	public List<AuctionmypageipVO> selectiplist(AuctionmypageipVO vo){
		return ss.selectList("auctionmyip.iplist",vo);
	}
	public List<AuctionMyJsonVO> getAuctionJson(int num){
		return ss.selectList("auctionmyip.lchart",num);
	}
}
