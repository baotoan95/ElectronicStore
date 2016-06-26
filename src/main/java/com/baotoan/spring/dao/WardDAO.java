package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Ward;

public interface WardDAO {
	Ward getWardById(int id);
	List<Ward> getAll();
	List<Ward> getWardsByProvinceId(int provinceId);
}
