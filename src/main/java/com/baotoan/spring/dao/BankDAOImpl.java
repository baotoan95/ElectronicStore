package com.baotoan.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Bank;

@Repository("bankDAO")
public class BankDAOImpl extends AbstractDAO<Integer, Bank> implements BankDAO {

	@SuppressWarnings("unchecked")
	public List<Bank> getAll() {
		try {
			return (List<Bank>) createEntityCriteria().list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public Bank getBankById(int id) {
		try {
			return getByKey(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
