package com.baotoan.spring.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartItem implements Serializable {
	private Product product;
	private int quantity;
	private int monetized;

	public CartItem() {
	}

	public CartItem(Product product, int quantity) {
		this.product = product;
		this.quantity = quantity;
	}
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getMonetized() {
		return quantity * product.getPrice();
	}

	public void setMonetized(int monetized) {
		this.monetized = monetized;
	}

	@Override
	public String toString() {
		return "CartItem [product=" + product + ", quantity=" + quantity
				+ ", monetized=" + monetized + "]";
	}

}
