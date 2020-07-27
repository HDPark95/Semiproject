package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;
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
	
	public int getTotalCnt(AuctionPageVO vo) {
		return ss.selectOne("auction.totalcount",vo);
	}
	
	public List<AuctionViewVO> getAuctionview(AuctionPageVO vo){
		//System.out.println("dao:"+vo.getSearchType()+":"+vo.getSearchValue());
		return ss.selectList("auction.mainsel",vo);
	}
	
	public List<AuctionViewVO> getAuctionbanner(){
		return ss.selectList("auction.banner");
	}
	
	public void updatestatus() {
		ss.update("auction.upstaus");
	}
	
}
