package model;

import jakarta.persistence.*;


@Entity
@Table(name = "chefs")
public class Chef extends User{

	@Column(name="badge")
	private String badge;
	

	
	public Chef() {
		
	} 
	
	public Chef(String name, String login, String password, String badge, String email) {
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
