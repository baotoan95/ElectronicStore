package com.baotoan.spring.propertiesEditor;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;

import com.baotoan.spring.entity.Payment;
import com.baotoan.spring.service.PaymentService;

public class PaymentEditor extends PropertyEditorSupport {
	@Autowired
	private PaymentService paymentService;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		System.out.println(text);
		Payment payment = paymentService.getPaymentById(Integer.parseInt(text));
		setValue(payment);
	}
}
