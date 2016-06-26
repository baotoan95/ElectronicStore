package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "productdetails")
public class ProductDetail implements Serializable, Comparable<ProductDetail> {
	@Id
	@GeneratedValue
	private Integer id;
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "digitalID")
	private Digital digital;
	private String value;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "productID")
	private Product product;
	@Column(name = "represent")
	private Boolean represent;

	public ProductDetail() {
	}

	public ProductDetail(Integer id, String value, Boolean represent) {
		this.id = id;
		this.value = value;
		this.represent = represent;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Digital getDigital() {
		return digital;
	}

	public void setDigital(Digital digital) {
		this.digital = digital;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Boolean getRepresent() {
		return represent;
	}

	public void setRepresent(Boolean represent) {
		this.represent = represent;
	}

	@Override
	public String toString() {
		return "ProductDetail [id=" + id + ", digital=" + digital + ", value="
				+ value + ", product=" + product + ", represent=" + represent
				+ "]";
	}

	public int compareTo(ProductDetail o) {
		return this.getDigital().getGroupDigital().getName().compareToIgnoreCase(o.getDigital().getGroupDigital().getName());
	}

}
