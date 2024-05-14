package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "clients")
public class Client extends User {


	
	@Column(name = "tel")
	private String tel;
	
	@Column(name = "adresse")
	private String adresse;
	
	@Column(name ="ptFidele")
	private int ptDeFidelite;
	
	 public Client() {
	       
	    }


	public Client(String name, String login,String email,String tel ,String password) {
		super(name, login, password, email);
		
		this.tel = tel;
		this.ptDeFidelite = 0;
		this.adresse = "";
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public int getPtDeFidelite() {
		return ptDeFidelite;
	}

	public void setPtDeFidelite(int ptDeFidelite) {
		this.ptDeFidelite = ptDeFidelite;
	}


	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}
