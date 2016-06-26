package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "post_type")
public class PostType implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int typeId;
	private String name;

	public PostType() {
	}

	public PostType(int typeId, String name) {
		this.typeId = typeId;
		this.name = name;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "PostType [typeId=" + typeId + ", name=" + name + "]";
	}

}
