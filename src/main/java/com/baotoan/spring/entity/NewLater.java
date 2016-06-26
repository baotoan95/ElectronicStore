package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "newlaters")
public class NewLater implements Serializable {
	@Id
	@GeneratedValue
	private Integer id;
	private String email;

	public NewLater() {
	}

	public NewLater(Integer id, String email) {
		this.id = id;
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "NewLater [id=" + id + ", email=" + email + "]";
	}

}
