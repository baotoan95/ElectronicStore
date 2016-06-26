package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.PaymentDAO;
import com.baotoan.spring.entity.Payment;

@Service("paymentService")
@Transactional
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDAO paymentDAO;
	
	public Payment getPaymentById(int id) {
		return paymentDAO.getPaymentById(id);
	}

	public List<Payment> getAll() {
		return paymentDAO.getAll();
	}

}
