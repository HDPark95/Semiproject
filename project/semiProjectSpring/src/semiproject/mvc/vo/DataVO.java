package semiproject.mvc.vo;

public class DataVO {
	private int num;
	private String guName;
	private String dongName;
	private String cate;
	private String largeName;
	private String mediumName;
	private String smallName;
	
	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getGuName() {
		return guName;
	}

	public void setGuName(String guName) {
		this.guName = guName;
	}

	public String getDongName() {
		return dongName;
	}

	public void setDongName(String dongName) {
		this.dongName = dongName;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getLargeName() {
		return largeName;
	}

	public void setLargeName(String largeName) {
		this.largeName = largeName;
	}

	public String getMediumName() {
		return mediumName;
	}

	public void setMediumName(String mediumName) {
		this.mediumName = mediumName;
	}

	public String getSmallName() {
		return smallName;
	}

	public void setSmallName(String smallName) {
		this.smallName = smallName;
	}

}
