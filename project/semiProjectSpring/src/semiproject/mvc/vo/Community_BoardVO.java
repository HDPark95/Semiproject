package semiproject.mvc.vo;

public class Community_BoardVO {
	
	private int wnum, whit, wrec, wdel, anum;
	private String wgubun, wloc1, wloc2, wtitle, wcontents, wchgdate;
	private String aid;
	
	public int getWnum() {
		return wnum;
	}
	public void setWnum(int wnum) {
		this.wnum = wnum;
	}
	public int getWhit() {
		return whit;
	}
	public void setWhit(int whit) {
		this.whit = whit;
	}
	public int getWrec() {
		return wrec;
	}
	public void setWrec(int wrec) {
		this.wrec = wrec;
	}
	public int getWdel() {
		return wdel;
	}
	public void setWdel(int wdel) {
		this.wdel = wdel;
	}
	public String getWgubun() {
		return wgubun;
	}
	public void setWgubun(String wgubun) {
		this.wgubun = wgubun;
	} 
	public String getWloc1() {
		return wloc1;
	}
	public void setWloc1(String wloc1) {
		this.wloc1 = wloc1;
	}
	public String getWloc2() {
		return wloc2;
	}
	public void setWloc2(String wloc2) {
		this.wloc2 = wloc2;
	}
	public String getWtitle() {
		return wtitle;
	}
	public void setWtitle(String wtitle) {
		this.wtitle = wtitle;
	}
	public String getWcontents() {
		return wcontents;
	}
	public void setWcontents(String wcontents) {
		this.wcontents = wcontents;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getWchgdate() {
		return wchgdate;
	}
	public void setWchgdate(String wchgdate) {
		this.wchgdate = wchgdate;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	
//	wnum number, -- 고유 번호
//	wgubun varchar2(50), -- 상가, 부동산 ,경매
//	wloc1 varchar2(50), -- 서울 내 XX구
//	wloc2 varchar2(50), -- XX구 내 XX동
//	wtitle varchar2(200), -- 제목
//	wcontents clob, -- 내용
//	windate date, -- 작성 날짜
//	wchgdate date, -- 최근 수정 날짜
//	whit number, -- 조회 수
//	wrec number, -- 추천 수
//	wdel number,  -- 0 = 작성된 글, 1 = 삭제된 글
//	anum number,  -- signup과의 연동을 위한 외래키
	
	
}

