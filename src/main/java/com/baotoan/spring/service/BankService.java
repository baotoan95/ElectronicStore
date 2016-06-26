package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Bank;

public interface BankService {
	List<Bank> getAll();
	Bank getBankById(int id);
}
