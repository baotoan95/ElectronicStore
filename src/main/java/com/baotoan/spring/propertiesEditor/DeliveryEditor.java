package com.baotoan.spring.propertiesEditor;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;

import com.baotoan.spring.entity.Delivery;
import com.baotoan.spring.service.DeliverService;

public class DeliveryEditor extends PropertyEditorSupport {
	@Autowired
	private DeliverService deliverService;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
	    System.out.println(text);
		Delivery delivery = deliverService.getDeliveryById(Integer.parseInt(text));
		setValue(delivery);
	}
}
