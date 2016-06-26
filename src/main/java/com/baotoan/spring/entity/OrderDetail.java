package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "orderdetails")
public class OrderDetail implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "orderId", nullable = false)
	private Order order;
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product", nullable = false)
	private Product product;
	private Integer quantity;
	private Integer monetized;

	public OrderDetail() {
	}

	public OrderDetail(Integer id, Integer quantity, Integer monetized) {
		this.id = id;
		this.quantity = quantity;
		this.monetized = monetized;
	}

	public OrderDetail(Integer id, Order order, Product product,
			Integer quantity, Integer monetized) {
		this.id = id;
		this.order = order;
		this.product = product;
		this.quantity = quantity;
		this.monetized = monetized;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getMonetized() {
		return monetized;
	}

	public void setMonetized(Integer monetized) {
		this.monetized = monetized;
	}

	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", order=" + order + ", product="
				+ product + ", quantity=" + quantity + ", monetized="
				+ monetized + "]";
	}

}
