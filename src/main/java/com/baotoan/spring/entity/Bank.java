package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "banks")
public class Bank implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String accName;
	private String accNumb;
	private String desc;
	private String avatar;

	public Bank() {
	}

	public Bank(Integer id, String name, String accName, String accNumb,
			String desc, String avatar) {
		this.id = id;
		this.name = name;
		this.accName = accName;
		this.accNumb = accNumb;
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

	public String getAccName() {
		return accName;
	}

	public void setAccName(String accName) {
		this.accName = accName;
	}

	public String getAccNumb() {
		return accNumb;
	}

	public void setAccNumb(String accNumb) {
		this.accNumb = accNumb;
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
		return "Bank [id=" + id + ", name=" + name + ", accName=" + accName
				+ ", accNumb=" + accNumb + ", desc=" + desc + ", avatar="
				+ avatar + "]";
	}

}
