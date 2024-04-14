package tn.iit.pizzeria.model;

import jakarta.persistence.*;
@Entity
@Table(name="users")

public class User {

	@Id @GeneratedValue
	@Column(name="id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "login")
	private String login;
	@Column(name = "password")
	private String psw;


	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}

	
}
