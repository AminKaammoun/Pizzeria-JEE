package tn.iit.pizzeria.model.actor;

public class User {

	private String firstName;
	private String lastName;
	private String login;
	private String psw;
	private String numTel;
	
	
	public User(String firstName, String lastName, String login, String psw, String numTel) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.login = login;
		this.psw = psw;
		this.numTel = numTel;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
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
	public String getNumTel() {
		return numTel;
	}
	public void setNumTel(String numTel) {
		this.numTel = numTel;
	}
	
	
}
