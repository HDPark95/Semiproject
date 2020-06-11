package semiproject.mvc.vo;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class AddInfoVO {
	private boolean pets,elevtor,balcony,built,chartered;
	private String[] structure;
	private List<AdministrativeVO> administrative;
	private ParkingVO parking;
	private String[] option;
	
	 
	
	public List<AdministrativeVO> getAdministrative() {
		return administrative;
	}
	public void setAdministrative(List<AdministrativeVO> administrative) {
		this.administrative = administrative;
	}
	public String[] getStructure() {
		return structure;
	}
	public void setStructure(String[] structure) {
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

	public ParkingVO getParking() {
		return parking;
	}
	public void setParking(ParkingVO parking) {
		this.parking = parking;
	}
	public String[] getOption() {
		return option;
	}
	public void setOption(String[] option) {
		this.option = option;
	}

	
	
	
}
