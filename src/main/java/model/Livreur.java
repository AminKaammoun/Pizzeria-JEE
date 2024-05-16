package model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;


@Entity
@Table(name = "livreurs")

public class Livreur extends User{

	@Column(name="badge")
	private String badge;
	

	public Livreur() {
		
	} 
	
	
	public Livreur(String name, String login, String password, String badge, String email) {
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
