
package semiproject.mvc.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import semiproject.mvc.dao.LoginDao;
import semiproject.mvc.vo.LoginDTO;
import semiproject.mvc.vo.UserVO;

@Controller
public class LoginPage {
	@Autowired
	private LoginDao logindao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "login/loginform";
	}

	@RequestMapping(value = "/loginPost")
	public ModelAndView loginPost(LoginDTO loginDTO, HttpSession httpsession) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println("¼º°ø");
		int cnt = logindao.login(loginDTO);
		if(cnt == 0) {
			mav.setViewName("login/loginform");
			return mav;
		}else {
		UserVO vo = logindao.logininfo(loginDTO);
		mav.addObject("user", vo);
		System.out.println(vo.getDname());
		httpsession.setAttribute("user", vo);
		mav.setViewName("redirect:index#footerMenu"); 
		return mav;
		}
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(LoginDTO loginDTO, HttpSession httpsession, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		Object object = httpsession.getAttribute("user");
		if (object != null) {
			UserVO vo = (UserVO) object;
			httpsession.removeAttribute("login");
			httpsession.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}
		mav.setViewName("redirect:index");
		return mav; 
	}

}