package semiproject.mvc.vo;

public class AddInfoVO {
	private boolean pets,elevtor,balcony,built,chartered;
	private String structure;
	private AdministrativeVO administrative;
	private ParkingVO parking;
	private OptionVO option;
	
	
	
	public String getStructure() {
		return structure;
	}
	public void setStructure(String structure) {
		this.structure = structure;
	}
	public boolean isPets() {
		return pets;
	}
	public void setPets(boolean pets) {
		this.pets = pets;
	}
	public boolean isElevtor() {
		return elevtor;
	}
	public void setElevtor(boolean elevtor) {
		this.elevtor = elevtor;
	}
	public boolean isBalcony() {
		return balcony;
	}
	public void setBalcony(boolean balcony) {
		this.balcony = balcony;
	}
	public boolean isBuilt() {
		return built;
	}
	public void setBuilt(boolean built) {
		this.built = built;
	}
	public boolean isChartered() {
		return chartered;
	}
	public void setChartered(boolean chartered) {
		this.chartered = chartered;
	}
	public AdministrativeVO getAdministrative() {
		return administrative;
	}
	public void setAdministrative(AdministrativeVO administrative) {
		this.administrative = administrative;
	}
	public ParkingVO getParking() {
		return parking;
	}
	public void setParking(ParkingVO parking) {
		this.parking = parking;
	}
	public OptionVO getOption() {
		return option;
	}
	public void setOption(OptionVO option) {
		this.option = option;
	}
	
	
	
	
}
