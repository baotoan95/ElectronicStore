package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "promotions")
public class Promotion implements Serializable {
	@Id
	@GeneratedValue
	@Column(name = "proId")
	private Integer id;
	private String name;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "start_Date", nullable = false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate startDate;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "end_Date", nullable = false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate endDate;
	private String content;
	private String value;
	private String desc;
	private String banner;

	public Promotion() {
	}

	public Promotion(Integer id, String name, LocalDate startDate,
			LocalDate endDate, String content, String value, String desc,
			String banner) {
		this.id = id;
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
		this.content = content;
		this.value = value;
		this.desc = desc;
		this.banner = banner;
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

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getBanner() {
		return banner;
	}

	public void setBanner(String banner) {
		this.banner = banner;
	}

	@Override
	public String toString() {
		return "Promotion [id=" + id + ", name=" + name + ", startDate="
				+ startDate + ", endDate=" + endDate + ", content=" + content
				+ ", value=" + value + ", desc=" + desc + ", banner=" + banner
				+ "]";
	}

}
