package model;

import jakarta.persistence.*;

@Entity
@Table(name="pizza")

public class Pizza {

	@Id @GeneratedValue
	@Column(name="id")
	private int id;

	@Column(name = "name")
	private String name;
	
	
	@Column(name = "description") 
	private String description;
	
}
