
package semiproject.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDao {

	@Autowired
	private SqlSessionTemplate ss;

	public List<String> getGu() {
		System.out.println("호출 완료!");
		List<String> list = ss.selectList("commudata.commugu");
		System.out.println("ListSize : " + list.size());
		return list;
	}

	public List<String> getDong(String guName) {
		List<String> list = ss.selectList("commudata.dong", guName);
		return list;
	}
}
