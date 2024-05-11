package model;

import jakarta.persistence.*;

@Entity
@Table(name = "pizza_order")

public class CommandePizza {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	@Column(name = "id")
	private int id;

	@ManyToOne
	@JoinColumn(name = "order_id")
	private Commande commande;

	@ManyToOne
	@JoinColumn(name = "pizza_id")
	private Pizza pizza;

	@Column(name = "quantity")
	private int quantity;

	public CommandePizza() {
	}

	public CommandePizza(Commande commande, Pizza pizza, int quantity) {
		this.commande = commande;
		this.pizza = pizza;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Pizza getPizza() {
		return pizza;
	}

	public void setPizza(Pizza pizza) {
		this.pizza = pizza;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
