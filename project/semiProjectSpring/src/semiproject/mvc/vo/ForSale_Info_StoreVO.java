package semiproject.mvc.vo;

public class ForSale_Info_StoreVO {
//	fpsnum	number	 NULL, --추가정보 번호
//	fpnum	number		NULL, -- 공용정보 번호
//	toilet	VARCHAR2(255)		NULL, --화장실
//	fparking	VARCHAR2(255)		NULL, -- 주차시설
//	usearea	VARCHAR2(255)		NULL, -- 용도지역
//	mpurpo	VARCHAR2(255)		NULL, -- 주용도
//	independent	VARCHAR2(255)		NULL, --독립공간
//	cooling	VARCHAR2(255)		NULL, -- 냉방시설
//	revenue	VARCHAR2(255)		NULL, -- 예상수익률
//	fright	varchar2(500)		NULL, -- 권리금
//	financing	varchar2(500)		NULL -- 융자금
	private int fpsnum,fpnum;
	private String toilet,fparking,usearea,mpurpo,independent,cooling,revenue,fright,financing;
	public int getFpsnum() {
		return fpsnum;
	}
	public void setFpsnum(int fpsnum) {
		this.fpsnum = fpsnum;
	}
	public int getFpnum() {
		return fpnum;
	}
	public void setFpnum(int fpnum) {
		this.fpnum = fpnum;
	}
	public String getToilet() {
		return toilet;
	}
	public void setToilet(String toilet) {
		this.toilet = toilet;
	}
	public String getFparking() {
		return fparking;
	}
	public void setFparking(String fparking) {
		this.fparking = fparking;
	}
	public String getUsearea() {
		return usearea;
	}
	public void setUsearea(String usearea) {
		this.usearea = usearea;
	}
	public String getMpurpo() {
		return mpurpo;
	}
	public void setMpurpo(String mpurpo) {
		this.mpurpo = mpurpo;
	}
	public String getIndependent() {
		return independent;
	}
	public void setIndependent(String independent) {
		this.independent = independent;
	}
	public String getCooling() {
		return cooling;
	}
	public void setCooling(String cooling) {
		this.cooling = cooling;
	}
	public String getRevenue() {
		return revenue;
	}
	public void setRevenue(String revenue) {
		this.revenue = revenue;
	}
	public String getFright() {
		return fright;
	}
	public void setFright(String fright) {
		this.fright = fright;
	}
	public String getFinancing() {
		return financing;
	}
	public void setFinancing(String financing) {
		this.financing = financing;
	}
	
	
}
