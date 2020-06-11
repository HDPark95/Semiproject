package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;
import semiproject.mvc.vo.AuctionDetailVO;
import semiproject.mvc.vo.AuctionPageVO;
import semiproject.mvc.vo.AuctionViewVO;

@Repository 
public class AuctionDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addAuctionmain(AuctionAddMainVO vo) {
		ss.insert("auction.addmian",vo);
	}
	
	public void addAuctionde(AuctionAddDeVO vo) {
		ss.insert("auction.addde",vo);
	}
	
	public void addAuctionIp(AuctionAddIpVO vo) {
		ss.insert("auction.addip",vo);
	}
	
	public int getTotalCnt() {
		return ss.selectOne("auction.totalcount");
	}
	
	public List<AuctionViewVO> getAuctionview(AuctionPageVO vo){
		return ss.selectList("auction.mainsel",vo);
	}
	
	public AuctionDetailVO getAuctionDetail(int anum) {
		return ss.selectOne("auctionDetail.detail", anum);
	}
	public void purchase(AuctionDetailVO vo) {
		ss.update("auctionDetail.bidding", vo);
	}
	public void actionHit(int anum) {
		ss.update("auction.hithit", anum);
	}
	
	
	
}
