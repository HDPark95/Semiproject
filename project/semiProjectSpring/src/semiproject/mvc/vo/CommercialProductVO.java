
package semiproject.mvc.vo;

public class CommercialProductVO {
	private int prc, spc1, spc2;
	private String plocation, atclfetrdesc, atclno,taglist,rltrnm, tradtpcd, rlettpcd, pdnum;
	
	public String getRlettpcd() {
		return rlettpcd;
	}
	public void setRlettpcd(String rlettpcd) {
		this.rlettpcd = rlettpcd;
	}
	public String getTradtpcd() {
		return tradtpcd;
	}
	public void setTradtpcd(String tradtpcd) {
		this.tradtpcd = tradtpcd;
	}
	public String getPdnum() {
		return pdnum;
	}
	public void setPdnum(String pdnum) {
		this.pdnum = pdnum;
	}
	public String getPlocation() {
		return plocation;
	}
	public void setPlocation(String plocation) {
		this.plocation = plocation;
	}
	public String getRltrnm() {
		return rltrnm;
	}
	public void setRltrnm(String rltrnm) {
		this.rltrnm = rltrnm;
	}
	public String getTaglist() {
		return taglist;
	}
	public void setTaglist(String taglist) {
		this.taglist = taglist;
	}
	public String getAtclno() {
		return atclno;
	}
	public void setAtclno(String atclno) {
		this.atclno = atclno;
	} 
	
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
	public String getAtclfetrdesc() {
		return atclfetrdesc;
	}
	public void setAtclfetrdesc(String atclfetrdesc) {
		this.atclfetrdesc = atclfetrdesc;
	}
}

