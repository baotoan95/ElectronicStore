package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "posts")
public class Post implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String content;
	private String desc;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "publishes_date", nullable = false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate publishesDate;
	private String author;
	private String banner;
	private String slug;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "postType")
	private PostType postType;

	public Post() {
	}

	public Post(Integer id, String name, String content, String desc,
			LocalDate publishesDate, String author, String banner, String slug,
			PostType postType) {
		this.id = id;
		this.name = name;
		this.content = content;
		this.desc = desc;
		this.publishesDate = publishesDate;
		this.author = author;
		this.banner = banner;
		this.slug = slug;
		this.postType = postType;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public LocalDate getPublishesDate() {
		return publishesDate;
	}

	public void setPublishesDate(LocalDate publishesDate) {
		this.publishesDate = publishesDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getBanner() {
		return banner;
	}

	public void setBanner(String banner) {
		this.banner = banner;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public PostType getPostType() {
		return postType;
	}

	public void setPostType(PostType postType) {
		this.postType = postType;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", name=" + name + ", content=" + content
				+ ", desc=" + desc + ", publishesDate=" + publishesDate
				+ ", author=" + author + ", banner=" + banner + ", slug="
				+ slug + ", postType=" + postType + "]";
	}

}
