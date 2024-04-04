package tn.iit.pizzeria.model.actor;

public class Client extends User{

	private String adresse;
	
	public Client(String firstName, String lastName, String login, String psw, String numTel) {
		super(firstName, lastName, login, psw, numTel);
	
	}
}
