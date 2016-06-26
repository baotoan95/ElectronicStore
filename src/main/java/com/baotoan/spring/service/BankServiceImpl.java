package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.BankDAO;
import com.baotoan.spring.entity.Bank;

@Service("bankService")
@Transactional
public class BankServiceImpl implements BankService {
	@Autowired
	private BankDAO bankDAO;

	public List<Bank> getAll() {
		return bankDAO.getAll();
	}

	public Bank getBankById(int id) {
		return bankDAO.getBankById(id);
	}

}
