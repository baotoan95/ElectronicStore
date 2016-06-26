package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "wards")
public class Ward implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String title;
	@Column(name = "province")
	private Integer province;
	private String code;
	private Integer published;
	private Integer ordering;

	public Ward() {
	}

	public Ward(Integer id, String title, String code, Integer published, Integer ordering) {
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

	public Integer getProvince() {
		return province;
	}

	public void setProvince(Integer province) {
		this.province = province;
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
		return "Ward [id=" + id + ", title=" + title + ", province=" + province
				+ ", code=" + code + ", published=" + published + ", ordering="
				+ ordering + "]";
	}

}
