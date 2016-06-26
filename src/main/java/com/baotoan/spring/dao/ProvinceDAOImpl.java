package com.baotoan.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Province;

@Repository("provinceDAO")
public class ProvinceDAOImpl extends AbstractDAO<Integer, Province> implements ProvinceDAO {

	public Province getProvinceById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Province> getAll() {
		return (List<Province>)createEntityCriteria().list();
	}
	
}
