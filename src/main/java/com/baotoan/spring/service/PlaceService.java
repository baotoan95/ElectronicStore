package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Province;
import com.baotoan.spring.entity.Ward;

public interface PlaceService {
	Province getProvinceById(int id);
	List<Province> getAllProvinces();
	Ward getWardById(int id);
	List<Ward> getAllWards();
	List<Ward> getWardsByProvinceId(int provinceId);
}
