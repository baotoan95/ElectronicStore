package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "provinces")
public class Province implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String title;
	private String code;
	private Integer published;
	private Integer ordering;

	public Province() {
	}

	public Province(Integer id, String title, String code, Integer published, Integer ordering) {
		this.id = id;
		this.title = title;
		this.code = code;
		this.published = published;
		this.ordering = ordering;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getPublished() {
		return published;
	}

	public void setPublished(Integer published) {
		this.published = published;
	}

	public Integer getOrdering() {
		return ordering;
	}

	public void setOrdering(Integer ordering) {
		this.ordering = ordering;
	}

	@Override
	public String toString() {
		return "Province [id=" + id + ", title=" + title + ", code=" + code
				+ ", published=" + published + ", ordering=" + ordering + "]";
	}

}
