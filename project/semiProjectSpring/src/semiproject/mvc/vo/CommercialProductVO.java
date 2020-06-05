package semiproject.mvc.vo;

public class CommercialProductVO {
	private int prc, spc1, spc2;
	private String location, atclfetrdesc;
	public int getSpc1() {
		return spc1;
	}
	public void setSpc1(int spc1) {
		this.spc1 = spc1;
	}
	public int getSpc2() {
		return spc2;
	}
	public void setSpc2(int spc2) {
		this.spc2 = spc2;
	}
	
	public int getPrc() {
		return prc;
	}
	public void setPrc(int prc) {
		this.prc = prc;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAtclfetrdesc() {
		return atclfetrdesc;
	}
	public void setAtclfetrdesc(String atclfetrdesc) {
		this.atclfetrdesc = atclfetrdesc;
	}
}
