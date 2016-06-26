package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Payment;

public interface PaymentDAO {
	Payment getPaymentById(int id);
	List<Payment> getAll();
}
