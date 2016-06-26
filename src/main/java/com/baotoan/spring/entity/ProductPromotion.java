package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "product_promo")
public class ProductPromotion implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "promotionId")
	private Promotion promotion;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "productId")
	private Product product;

	public ProductPromotion() {
	}

	public ProductPromotion(Integer id, Promotion promotion, Product product) {
		this.id = id;
		this.promotion = promotion;
		this.product = product;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Promotion getPromotion() {
		return promotion;
	}

	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "ProductPromotion [id=" + id + ", promotion=" + promotion
				+ ", product=" + product + "]";
	}

}
