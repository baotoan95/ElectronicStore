package com.baotoan.spring.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class UserLogin {
	@NotEmpty(message = "Bạn chưa nhập email")
	@Email(message = "Định dạng email chưa đúng")
	private String email;
	@NotEmpty(message = "Bạn chưa nhập password")
	private String password;
	private boolean remember;

	public UserLogin() {
	}

	public UserLogin(String email, String password, boolean remember) {
		this.email = email;
		this.password = password;
		this.remember = remember;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isRemember() {
		return remember;
	}

	public void setRemember(boolean remember) {
		this.remember = remember;
	}

	@Override
	public String toString() {
		return "UserLogin [email=" + email + ", password=" + password
				+ ", remember=" + remember + "]";
	}

}
