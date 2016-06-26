package com.baotoan.spring.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDateTime;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "contacts")
public class Contact implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	@NotEmpty(message = "Nhập tên của bạn")
	private String name;
	@NotEmpty(message = "Nhập địa chỉ email của bạn")
	@Email(message = "Định dạng email chưa đúng")
	private String email;
	private String phone;
	@NotEmpty(message = "Nhập nội dung bạn muốn góp ý tới chúng tôi")
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "date", nullable = false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDateTime")
	private LocalDateTime date;
	private String status;
	private String reply;

	public Contact() {

	}

	public Contact(Integer id, String name, String email, String phone,
			String content, LocalDateTime date, String status, String reply) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.content = content;
		this.date = date;
		this.status = status;
		this.reply = reply;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", content=" + content + ", date="
				+ date + ", status=" + status + ", reply=" + reply + "]";
	}

}
