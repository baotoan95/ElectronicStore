package com.baotoan.spring.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "orders")
public class Order implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_user")
	private User orderUser;
	private Integer monetized;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "order_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
	private LocalDate orderDate;
	@Column(name = "descript")
	private String descript;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "payment")
	private Payment payment;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "delivery")
	private Delivery delivery;
	@Column(name = "pay_name")
	private String payName;
	@Column(name = "pay_phone")
	private String payPhone;
	@Column(name = "pay_address")
	private String payAddress;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pay_province")
	private Province payProvince;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pay_district")
	private Ward payDistrict;
	@Column(name = "recie_name")
	private String recieName;
	@Column(name = "recie_phone")
	private String reciePhone;
	@Column(name = "recie_address")
	private String recieAddress;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "recie_province")
	private Province recieProvince;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "recie_district")
	private Ward recieDistrict;
	private String status;
	@OneToMany(fetch = FetchType.LAZY, cascade = { CascadeType.ALL }, mappedBy = "order")
	private List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();

	public Order() {
	}

	public Order(Integer id, User orderUser, Integer monetized,
			LocalDate orderDate, String descript, Payment payment,
			Delivery delivery, String payName, String payPhone,
			String payAddress, Province payProvince, Ward payDistrict,
			String recieName, String reciePhone, String recieAddress,
			Province recieProvince, Ward recieDistrict, String status,
			List<OrderDetail> orderDetails) {
		this.id = id;
		this.orderUser = orderUser;
		this.monetized = monetized;
		this.orderDate = orderDate;
		this.descript = descript;
		this.payment = payment;
		this.delivery = delivery;
		this.payName = payName;
		this.payPhone = payPhone;
		this.payAddress = payAddress;
		this.payProvince = payProvince;
		this.payDistrict = payDistrict;
		this.recieName = recieName;
		this.reciePhone = reciePhone;
		this.recieAddress = recieAddress;
		this.recieProvince = recieProvince;
		this.recieDistrict = recieDistrict;
		this.status = status;
		this.orderDetails = orderDetails;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getOrderUser() {
		return orderUser;
	}

	public void setOrderUser(User orderUser) {
		this.orderUser = orderUser;
	}

	public Integer getMonetized() {
		return monetized;
	}

	public void setMonetized(Integer monetized) {
		this.monetized = monetized;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public Delivery getDelivery() {
		return delivery;
	}

	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public String getPayPhone() {
		return payPhone;
	}

	public void setPayPhone(String payPhone) {
		this.payPhone = payPhone;
	}

	public String getPayAddress() {
		return payAddress;
	}

	public void setPayAddress(String payAddress) {
		this.payAddress = payAddress;
	}

	public Province getPayProvince() {
		return payProvince;
	}

	public void setPayProvince(Province payProvince) {
		this.payProvince = payProvince;
	}

	public Ward getPayDistrict() {
		return payDistrict;
	}

	public void setPayDistrict(Ward payDistrict) {
		this.payDistrict = payDistrict;
	}

	public String getRecieName() {
		return recieName;
	}

	public void setRecieName(String recieName) {
		this.recieName = recieName;
	}

	public String getReciePhone() {
		return reciePhone;
	}

	public void setReciePhone(String reciePhone) {
		this.reciePhone = reciePhone;
	}

	public String getRecieAddress() {
		return recieAddress;
	}

	public void setRecieAddress(String recieAddress) {
		this.recieAddress = recieAddress;
	}

	public Province getRecieProvince() {
		return recieProvince;
	}

	public void setRecieProvince(Province recieProvince) {
		this.recieProvince = recieProvince;
	}

	public Ward getRecieDistrict() {
		return recieDistrict;
	}

	public void setRecieDistrict(Ward recieDistrict) {
		this.recieDistrict = recieDistrict;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", orderUser=" + orderUser + ", monetized="
				+ monetized + ", orderDate=" + orderDate + ", descript="
				+ descript + ", payment=" + payment + ", delivery=" + delivery
				+ ", payName=" + payName + ", payPhone=" + payPhone
				+ ", payAddress=" + payAddress + ", payProvince=" + payProvince
				+ ", payDistrict=" + payDistrict + ", recieName=" + recieName
				+ ", reciePhone=" + reciePhone + ", recieAddress="
				+ recieAddress + ", recieProvince=" + recieProvince
				+ ", recieDistrict=" + recieDistrict + ", status=" + status
				+ ", orderDetails=" + orderDetails + "]";
	}

}
