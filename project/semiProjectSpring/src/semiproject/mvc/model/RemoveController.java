package semiproject.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import semiproject.mvc.dao.BoardDao;

@RestController
public class RemoveController {
	
	@Autowired
	private BoardDao boadrdao;
	
	private int remove(int b_num) {
		
		return 0;
	}
}
