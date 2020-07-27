package semiproject.mvc.model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import semiproject.mvc.dao.AuctionMypageDao;
import semiproject.mvc.vo.AuctionMyJsonVO;

@RestController
public class AuctionMyJson {
	
	@Autowired
	private AuctionMypageDao auctionmypagedao;
	
	@ResponseBody
	@RequestMapping(value = "/auctionjson",method =RequestMethod.GET,produces = "application/json; charset=euc-kr")
	public String getjlist(int num){
		System.out.println("num:"+num);
		List<AuctionMyJsonVO> list = auctionmypagedao.getAuctionJson(num);
		Map<Integer, Integer> map = new HashMap<>();
		
		int idx = 1;
		for(AuctionMyJsonVO e : list) {
			map.put(idx, e.getIpprice());
			idx+=1; 
		}
		System.out.println("Size:"+list.size());
		String result = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			result = mapper.writeValueAsString(map);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/auctionjson",method =RequestMethod.GET,produces = "application/json; charset=euc-kr")
//	public List<AuctionMyJsonVO> getjlist(int num){
//		List<AuctionMyJsonVO> list = auctionmypagedao.getAuctionJson(num);
//		return list;
//	}
	
	
}
