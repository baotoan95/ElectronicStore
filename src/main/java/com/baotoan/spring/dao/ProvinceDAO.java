package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Province;

public interface ProvinceDAO {
	Province getProvinceById(int id);
	List<Province> getAll();
}
