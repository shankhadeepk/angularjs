package org.cts.sample;



public class Product {
	
	private String productname;
	private int quantity;
	
	public Product()
	{}
	
	public Product(String productname, int quantity) {
		super();
		this.productname = productname;
		this.quantity = quantity;
	}
	
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Product [productname=" + productname + ", quantity=" + quantity
				+ "]";
	}
	
	
	

}
