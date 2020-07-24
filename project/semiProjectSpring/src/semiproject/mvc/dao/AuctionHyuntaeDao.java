package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AuctionDetailVO;

import semiproject.mvc.vo.AuctionSaleVO;

import semiproject.mvc.vo.IpchalperVO;

@Repository
public class AuctionHyuntaeDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public AuctionDetailVO getAuctionDetail(int anum) {
		return ss.selectOne("auctionDetail.detail", anum);
	}
	public void purchase(IpchalperVO vo) {
		ss.insert("auctionDetail.bidding", vo);
	}
	public List<AuctionSaleVO> getAuctionsale(String aid){
		return ss.selectList("auctionsale.sales",aid);
	}
	public void getDetailIpchal(IpchalperVO vo){
		 ss.insert("auctionDetail.bidding", vo);
	}
	public void auctionHit(int anum) {
		ss.update("auction.hithit", anum);
		
	}
	public List<AuctionSaleVO> getchartdata(int anum){
		return ss.selectList("auctionsale.chart", anum);
	}
	public List<IpchalperVO> getList(int ipnum){
		return ss.selectList("auctionsale.managementList",ipnum);
	}
	
	

}
