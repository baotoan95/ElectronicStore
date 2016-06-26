package com.baotoan.spring.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "categories")
public class Category implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer cateId;
	private String name;
	private String desc;
	private String avatar;
	private Integer parent;
	private Boolean container;
	private String slug;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	private Set<Product> products = new HashSet<Product>();

	public Category() {
	}

	public Category(Integer cateId, String name, String desc, String avatar,
			Integer parent, Boolean container, String slug) {
		this.cateId = cateId;
		this.name = name;
		this.desc = desc;
		this.avatar = avatar;
		this.parent = parent;
		this.container = container;
	}

	public Integer getCateId() {
		return cateId;
	}

	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Integer getParent() {
		return parent;
	}

	public void setParent(Integer parent) {
		this.parent = parent;
	}

	public Boolean getContainer() {
		return container;
	}

	public void setContainer(Boolean container) {
		this.container = container;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Category [cateId=" + cateId + ", name=" + name + ", desc="
				+ desc + ", avatar=" + avatar + ", parent=" + parent
				+ ", container=" + container + ", slug=" + slug + ", products="
				+ products + "]";
	}

}
