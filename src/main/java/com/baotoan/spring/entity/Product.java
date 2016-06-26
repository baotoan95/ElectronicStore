package com.baotoan.spring.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "products")
public class Product implements Serializable {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	@Column(name = "name", nullable = false)
	private String name;
	@Column(name = "price", nullable = false)
	private Integer price;
	private String avatar;
	private String slug;
	private Integer views;
	private Integer sells;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category")
	private Category category;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "post")
	private Post post;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "provider")
	private Provider provider;
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "product")
	private Set<ProductDetail> productDetails = new HashSet<ProductDetail>();
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private Set<ImageProduct> imageProducts = new HashSet<ImageProduct>();
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private Set<ProductPromotion> listPromotions = new HashSet<ProductPromotion>();
	
	public Product() {
	}

	public Product(Integer id, String name, Integer price, String avatar,
			String slug, Integer views, Integer sells, Category category,
			Post post, Provider provider) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.avatar = avatar;
		this.slug = slug;
		this.views = views;
		this.sells = sells;
		this.category = category;
		this.post = post;
		this.provider = provider;
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public Integer getSells() {
		return sells;
	}

	public void setSells(Integer sells) {
		this.sells = sells;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

	public Set<ProductDetail> getProductDetails() {
		return productDetails;
	}

	public void setProductDetails(Set<ProductDetail> productDetails) {
		this.productDetails = productDetails;
	}

	public Set<ImageProduct> getImageProducts() {
		return imageProducts;
	}

	public void setImageProducts(Set<ImageProduct> imageProducts) {
		this.imageProducts = imageProducts;
	}

	public Set<ProductPromotion> getListPromotions() {
		return listPromotions;
	}

	public void setListPromotions(Set<ProductPromotion> listPromotions) {
		this.listPromotions = listPromotions;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price="
				+ price + ", avatar=" + avatar + ", slug=" + slug + ", views="
				+ views + ", sells=" + sells + ", category=" + category
				+ ", post=" + post + ", provider=" + provider
				+ ", productDetails=" + productDetails + ", imageProducts="
				+ imageProducts + ", listPromotions=" + listPromotions + "]";
	}

}
