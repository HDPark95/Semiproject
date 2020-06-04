package semiproject.mvc.model;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityPage{

	@RequestMapping(value="/comuMain")																																										
	public String comuMain() {
		return "community/community";
	}
	@RequestMapping(value="/broker")
	public String signUpBroke(){
		return  "community/signup_broker";
	}
	@RequestMapping(value="/lessor")
	public String signLessor() {
		return "community/signup_lessor";
	}
	@RequestMapping(value="/choose")
	public String signCHoose() {
		return "community/signupchoose";
	}
	@RequestMapping(value="/subBroke")
	public String subBroke() {
		return "community/subscriptioncheck_broker";
	}
	@RequestMapping(value="/subLessor")
	public String subLessor() {
		return "community/subscriptioncheck_lessor";
	}
	@RequestMapping(value="/write")
	public String writeQuest() {
		return "community/writing_question";
	}
	@RequestMapping(value="/writeStroy")
	public String writeStory() {
		return "community/writing_question";
	}
}
