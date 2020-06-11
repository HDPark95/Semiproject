package semiproject.mvc.vo;

import java.util.List;

public class EstateVO {
	private String build,floor,heating,move;
	private String[] subbuild;
	private double supply,exclusive;
	private List<RentVO> rent;
	private String description , title;
	
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBuild() {
		return build;
	}
	public void setBuild(String build) {
		this.build = build;
	}
	
	public String[] getSubbuild() {
		return subbuild;
	}
	public void setSubbuild(String[] subbuild) {
		this.subbuild = subbuild;
	}
	public String getFloor() {
		return floor;
	} 
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getHeating() {
		return heating;
	}
	public void setHeating(String heating) {
		this.heating = heating;
	}
	public String getMove() {
		return move;
	}
	public void setMove(String move) {
		this.move = move;
	}
	public double getSupply() {
		return supply;
	}
	public void setSupply(double supply) {
		this.supply = supply;
	}
	public double getExclusive() {
		return exclusive;
	}
	public void setExclusive(double exclusive) {
		this.exclusive = exclusive;
	}
	public List<RentVO> getRent() {
		return rent;
	}
	public void setRent(List<RentVO> rent) {
		this.rent = rent;
	}


	
	
	
}
