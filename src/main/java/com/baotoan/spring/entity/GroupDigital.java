package com.baotoan.spring.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "groupDigitals")
public class GroupDigital implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String desc;
	@OneToMany(fetch = FetchType.LAZY)
	private Set<Digital> listDigitals = new HashSet<Digital>();

	public GroupDigital() {
	}

	public GroupDigital(Integer id, String name, String desc) {
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

	public Set<Digital> getListDigitals() {
		return listDigitals;
	}

	public void setListDigitals(Set<Digital> listDigitals) {
		this.listDigitals = listDigitals;
	}

	@Override
	public String toString() {
		return "GroupDigital [id=" + id + ", name=" + name + ", desc=" + desc
				+ ", listDigitals=" + listDigitals + "]";
	}

}
