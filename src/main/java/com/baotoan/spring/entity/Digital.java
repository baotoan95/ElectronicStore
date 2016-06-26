package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "digitals")
public class Digital implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String desc;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "group_digitalID")
	private GroupDigital groupDigital;

	public Digital() {
	}

	public Digital(Integer id, String name, String desc,
			GroupDigital groupDigital) {
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.groupDigital = groupDigital;
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

	public GroupDigital getGroupDigital() {
		return groupDigital;
	}

	public void setGroupDigital(GroupDigital groupDigital) {
		this.groupDigital = groupDigital;
	}

	@Override
	public String toString() {
		return "Digital [id=" + id + ", name=" + name + ", desc=" + desc
				+ ", groupDigital=" + groupDigital + "]";
	}

}
