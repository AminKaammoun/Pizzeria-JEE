package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;


@Entity
@Table(name = "admins")

public class Admin extends User{
	
	@Column(name="badge")
	private String badge;
	
	
	public Admin() {
		
	}

	public Admin(String name, String login, String password, String badge, String email) {
		super(name, login, password, email);
		this.badge = badge;
	}

	public String getBadge() {
		return badge;
	}

	public void setBadge(String badge) {
		this.badge = badge;
	}
	
	
}
