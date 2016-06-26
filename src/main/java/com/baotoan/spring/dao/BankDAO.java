package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Bank;

public interface BankDAO {
	List<Bank> getAll();
	Bank getBankById(int id);
}
