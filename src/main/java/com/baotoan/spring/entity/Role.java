package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "roles")
public class Role implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String desc;

	public Role() {
	}

	public Role(Integer id, String name, String desc) {
		this.id = id;
		this.name = name;
		this.desc = desc;
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

	@Override
	public String toString() {
		return "id [id=" + id + ", name=" + name + ", desc=" + desc + "]";
	}

}
