package model;


public class CartItem {

	private Pizza pizza;
	private Double itemPrice;
	private int quantity;
	private String Size;
	
	
	public CartItem() {
		
	}
	
	public CartItem(Pizza pizza, Double itemPrice, int quantity, String size) {
		super();
		this.pizza = pizza;
		this.itemPrice = itemPrice;
		this.quantity = quantity;
		Size = size;
	}
	
	public Pizza getPizza() {
		return pizza;
	}
	public void setPizza(Pizza pizza) {
		this.pizza = pizza;
	}
	public Double getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(Double itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	
	
}
