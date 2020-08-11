package semiproject.mvc.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
		List<Object> list2 = new ArrayList<Object>();
		list2.add("입찰가");
		
		for(AuctionMyJsonVO e : list) {
			list2.add(e.getIpprice());
		}
		
		System.out.println("Size:"+list2.size());
		String result = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			result = mapper.writeValueAsString(list2);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}	
}
