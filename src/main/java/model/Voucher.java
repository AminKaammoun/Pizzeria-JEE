package model;

import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name="vouchers")

public class Voucher {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	@Column(name = "id")
	private int id;

	@ManyToOne
	@JoinColumn(name = "client_id")
	private Client client; 
	
	@Column(name = "percentage")
	private int percentage;
	
	@Column(name = "price")
	private int price;
	
	@Column(name = "end_date")
	private LocalDate endDate;
	
	
	public Voucher() {
		
	}

	
	
	public Voucher(int id, Client client, int percentage, LocalDate endDate) {
		super();
		this.id = id;
		this.client = client;
		this.percentage = percentage;
		this.endDate = endDate;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Client getClient() {
		return client;
	}


	public void setClient(Client client) {
		this.client = client;
	}


	public int getPercentage() {
		return percentage;
	}


	public void setPercentage(int percentage) {
		this.percentage = percentage;
	}


	public LocalDate getEndDate() {
		return endDate;
	}


	public void setEndDate(LocalDate localDate) {
		this.endDate = localDate;
	}
	
	
	
}
