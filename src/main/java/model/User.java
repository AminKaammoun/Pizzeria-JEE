package model;

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

	@Column(name = "email")
	private String email;
	@Column(name = "tel")
	private String tel;
	@Column(name = "password")
	private String psw;


	  public User() {
	    }
	public User( String name, String login, String email, String tel, String psw) {
		super();
		
		this.name = name;
		this.login = login;
		this.email = email;
		this.tel = tel;
		this.psw = psw;
	}
	
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	
}
