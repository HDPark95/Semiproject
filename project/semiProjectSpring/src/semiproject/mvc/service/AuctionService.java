package semiproject.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import semiproject.mvc.dao.AuctionDao;
import semiproject.mvc.vo.AuctionAddDeVO;
import semiproject.mvc.vo.AuctionAddIpVO;
import semiproject.mvc.vo.AuctionAddMainVO;

@Service
@Transactional
public class AuctionService {
	
	@Autowired
	private AuctionDao auctiondao;
	
	public void addAuction(AuctionAddMainVO vo,AuctionAddDeVO avo,AuctionAddIpVO bvo) {
		auctiondao.addAuctionmain(vo);
		auctiondao.addAuctionde(avo);
		auctiondao.addAuctionIp(bvo);
	}
	
}
