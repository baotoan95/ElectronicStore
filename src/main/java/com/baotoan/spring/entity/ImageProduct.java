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
@Table(name = "imageproducts")
public class ImageProduct implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String url;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "prodID")
	private Product product;

	public ImageProduct() {
	}

	public ImageProduct(Integer id, String name, String url) {
		this.id = id;
		this.name = name;
		this.url = url;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "ImageProduct [id=" + id + ", name=" + name + ", url=" + url
				+ ", product=" + product + "]";
	}

}
