package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "users")
public class User implements Serializable {
	@Id
	@Column(name = "email", nullable = false)
	@NotEmpty(message = "Nhập địa chỉ email của bạn")
	@Email(message = "Địa chỉ email không đúng định dạng")
	private String email;
	@Column(name = "password", nullable = false)
	@NotEmpty(message = "Nhập mật khẩu mong muốn")
	private String password;
	private Integer gender;
	private String firstName;
	private String lastName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "birth", nullable = false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate birth;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bank")
	private Bank bank;
	private String career;
	@Column(name = "phone", nullable = false)
	@NotEmpty(message = "Nhập số điện thoại của bạn")
	private String phone;
	private String cellPhone;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "province")
	private Province province;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "district")
	private Ward ward;
	@NotEmpty(message = "Nhập địa chỉ của bạn")
	private String address;
	private String pay_name;
	private String pay_address;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "pay_province")
	private Province pay_province;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "pay_district")
	private Ward pay_district;
	private String pay_phone;
	private String recie_name;
	private String recie_address;
	private String recie_phone;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "recie_province")
	private Province recie_province;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "recie_district")
	private Ward recie_district;
	private String status;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "role")
	private Role role;

	public User() {
	}

	public User(String email, String password, Integer gender,
			String firstName, String lastName, LocalDate birth, Bank bank,
			String career, String phone, String cellPhone, Province province,
			Ward ward, String address, String pay_name, String pay_address,
			Province pay_province, Ward pay_district, String pay_phone,
			String recie_name, String recie_address, String recie_phone,
			Province recie_province, Ward recie_district, String status,
			Role role) {
		super();
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birth = birth;
		this.bank = bank;
		this.career = career;
		this.phone = phone;
		this.cellPhone = cellPhone;
		this.province = province;
		this.ward = ward;
		this.address = address;
		this.pay_name = pay_name;
		this.pay_address = pay_address;
		this.pay_province = pay_province;
		this.pay_district = pay_district;
		this.pay_phone = pay_phone;
		this.recie_name = recie_name;
		this.recie_address = recie_address;
		this.recie_phone = recie_phone;
		this.recie_province = recie_province;
		this.recie_district = recie_district;
		this.status = status;
		this.role = role;
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

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public LocalDate getBirth() {
		return birth;
	}

	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}

	public Bank getBank() {
		return bank;
	}

	public void setBank(Bank bank) {
		this.bank = bank;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public Ward getWard() {
		return ward;
	}

	public void setWard(Ward ward) {
		this.ward = ward;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPay_name() {
		return pay_name;
	}

	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}

	public String getPay_address() {
		return pay_address;
	}

	public void setPay_address(String pay_address) {
		this.pay_address = pay_address;
	}

	public Province getPay_province() {
		return pay_province;
	}

	public void setPay_province(Province pay_province) {
		this.pay_province = pay_province;
	}

	public Ward getPay_district() {
		return pay_district;
	}

	public void setPay_district(Ward pay_district) {
		this.pay_district = pay_district;
	}

	public String getPay_phone() {
		return pay_phone;
	}

	public void setPay_phone(String pay_phone) {
		this.pay_phone = pay_phone;
	}

	public String getRecie_name() {
		return recie_name;
	}

	public void setRecie_name(String recie_name) {
		this.recie_name = recie_name;
	}

	public String getRecie_address() {
		return recie_address;
	}

	public void setRecie_address(String recie_address) {
		this.recie_address = recie_address;
	}

	public String getRecie_phone() {
		return recie_phone;
	}

	public void setRecie_phone(String recie_phone) {
		this.recie_phone = recie_phone;
	}

	public Province getRecie_province() {
		return recie_province;
	}

	public void setRecie_province(Province recie_province) {
		this.recie_province = recie_province;
	}

	public Ward getRecie_district() {
		return recie_district;
	}

	public void setRecie_district(Ward recie_district) {
		this.recie_district = recie_district;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + ", gender="
				+ gender + ", firstName=" + firstName + ", lastName="
				+ lastName + ", birth=" + birth + ", bank=" + bank
				+ ", career=" + career + ", phone=" + phone + ", cellPhone="
				+ cellPhone + ", province=" + province + ", ward=" + ward
				+ ", address=" + address + ", pay_name=" + pay_name
				+ ", pay_address=" + pay_address + ", pay_province="
				+ pay_province + ", pay_district=" + pay_district
				+ ", pay_phone=" + pay_phone + ", recie_name=" + recie_name
				+ ", recie_address=" + recie_address + ", recie_phone="
				+ recie_phone + ", recie_province=" + recie_province
				+ ", recie_district=" + recie_district + ", status=" + status
				+ ", role=" + role + "]";
	}

}
