package semiproject.mvc.vo;

/*
select a.anum,a.bid,fn_yongdo_name(a.byongdo) as yongdo,a.baddra as addr,a.bweight,a.tweight,a.hit,b.wimage,p.ideprice,p.subject,p.enddate,nvl(fn_higt_ipchalper(p.ipnum),0)  as hprice  
 from actmain a , actmainde b , ipchal p
where b.anum = a.anum
  and p.anum = a.anum
*/
public class AuctionViewVO {
	private int anum,tweight,bweight,hit,ideprice,hprice;
	private String bid,yongdo,addr,wimage,subject,enddate;
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public int getTweight() {
		return tweight;
	}
	public void setTweight(int tweight) {
		this.tweight = tweight;
	}
	public int getBweight() {
		return bweight;
	}
	public void setBweight(int bweight) {
		this.bweight = bweight;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getIdeprice() {
		return ideprice;
	}
	public void setIdeprice(int ideprice) {
		this.ideprice = ideprice;
	}
	public int getHprice() {
		return hprice;
	}
	public void setHprice(int hprice) {
		this.hprice = hprice;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getYongdo() {
		return yongdo;
	}
	public void setYongdo(String yongdo) {
		this.yongdo = yongdo;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getWimage() {
		return wimage;
	}
	public void setWimage(String wimage) {
		this.wimage = wimage;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
}
