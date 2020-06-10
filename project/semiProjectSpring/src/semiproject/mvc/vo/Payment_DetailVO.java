package semiproject.mvc.vo;

public class Payment_DetailVO {
	
	private int pdnum , pnum, inment ;
	private String kinds , mentnum  ;
	
	public int getPnum() { 
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	} 
	public int getPdnum() {
		return pdnum;
	}
	public void setPdnum(int pdnum) {
		this.pdnum = pdnum;
	}
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
	public String getMentnum() {
		return mentnum;
	}
	public void setMentnum(String mentnum) {
		this.mentnum = mentnum;
	}
	public int getInment() {
		return inment;
	}
	public void setInment(int inment) {
		this.inment = inment;
	}
	
	
	

}
