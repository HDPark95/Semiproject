package semiproject.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;

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
}
