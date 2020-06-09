package semiproject.mvc.vo;

/*
create table ipchal(
ipnum number,
anum number,
enddate date,
ipdanwe number,
ideprice number,
status number,
subject varchar2(500),
text clob,
indate date,
chgdate date,
constraint ipchal_ipnum_pk primary key(ipnum)
);
  
 
*/
public class AuctionAddIpVO {
	private int ipnum,anum,ipdanwe,ideprice;
	private String enddate,text,subject;
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getIpnum() {
		return ipnum;
	}
	public int getAnum() {
		return anum;
	}
	public int getIpdanwe() {
		return ipdanwe;
	}
	public void setIpdanwe(int ipdanwe) {
		this.ipdanwe = ipdanwe;
	}
	public int getIdeprice() {
		return ideprice;
	}
	public void setIdeprice(int ideprice) {
		this.ideprice = ideprice;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
