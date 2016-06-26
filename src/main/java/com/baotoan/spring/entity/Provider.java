package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "providers")
public class Provider implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String desc;
	private String avatar;

	public Provider() {
	}

	public Provider(Integer id, String name, String desc, String avatar) {
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.avatar = avatar;
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

	@Override
	public String toString() {
		return "Provider [id=" + id + ", name=" + name + ", desc=" + desc
				+ ", avatar=" + avatar + "]";
	}

}
