package model;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import jakarta.persistence.*;

@Entity
@Table(name="pizza")

public class Pizza {
	
	
	@Id 
	@Column(name="id")
	private int id;

	@Column(name = "name")
	private String name;
	
	
	@Column(name = "description") 
	private String description;
	
	@Column(name = "image") 
	private String image;
	
	@ElementCollection(fetch = FetchType.EAGER)
	private Map<String, BigDecimal> sizeToPrice = new HashMap<>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Map<String, BigDecimal> getSizeToPrice() {
		return sizeToPrice;
	}

	public void setSizeToPrice(Map<String, BigDecimal> sizeToPrice) {
		this.sizeToPrice = sizeToPrice;
	}


}
