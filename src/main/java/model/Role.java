package model;

import java.util.List;

import jakarta.persistence.*;


@Entity
@Table(name="roles")

public class Role {

	@Id @GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;

	@OneToMany
	@JoinColumn(name = "role_id")
	private List<User> users;
	
	public Role(String name) {
		super();
		
		this.name = name;
	}

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
	
	
}
