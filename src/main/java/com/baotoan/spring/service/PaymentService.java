package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Payment;

public interface PaymentService {
	Payment getPaymentById(int id);
	List<Payment> getAll();
}
