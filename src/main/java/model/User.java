package model;

import jakarta.persistence.*;

@MappedSuperclass
public abstract class User {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	@Column(name = "id")
	protected int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "login")
	private String login;	

	
	@Column(name = "password")
	private String psw;


	  public User() {
	    }
	public User(String name, String login, String psw) {
		super();
		this.name = name;
		this.login = login;
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
	


	
}
