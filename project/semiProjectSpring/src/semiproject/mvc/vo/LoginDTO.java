package semiproject.mvc.vo;

public class LoginDTO {  
	private String aid;
	private int anum;
	private String apwd;
	private boolean userCookie;
	
<<<<<<< HEAD
	private UserVO userVO;
	
	public UserVO getUserVO() {
		return userVO;
=======
	 
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getAgubun() {
		return agubun;
>>>>>>> refs/heads/master
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	} 
	public boolean isUserCookie() {
		return userCookie;
	}
	public void setUserCookie(boolean userCookie) {
		this.userCookie = userCookie;
	}

	
}
