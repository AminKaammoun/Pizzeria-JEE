package model;


import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")

public class Commande {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.TABLE)
	@Column(name="id")
	private int id;
	
	@Column(name= "amount")
	private int amount;

	@Column(name= "createdDate")
	private LocalDate dateCreation;
	
	@Column(name= "deliveryDate")
	private LocalDate dateDelivery;
	
	@ManyToOne
	@JoinColumn(name = "client_id")
	private Client client; 
	

    @OneToMany(mappedBy = "commande", cascade = CascadeType.ALL)
    private Set<CommandePizza> commandePizzas = new HashSet<>();
	
	
    public Commande() {
    	
    }
    
	public Commande(int amount, LocalDate dateCreation, LocalDate dateDelivery, Client client) {
	
		this.amount = amount;
		this.dateCreation = dateCreation;
		this.dateDelivery = dateDelivery;
		this.client = client;
		
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public LocalDate getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(LocalDate dateCreation) {
		this.dateCreation = dateCreation;
	}

	public LocalDate getDateDelivery() {
		return dateDelivery;
	}

	public void setDateDelivery(LocalDate dateDelivery) {
		this.dateDelivery = dateDelivery;
	}


}
