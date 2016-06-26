package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.ProvinceDAO;
import com.baotoan.spring.dao.WardDAO;
import com.baotoan.spring.entity.Province;
import com.baotoan.spring.entity.Ward;

@Service("placeService")
@Transactional
public class PlaceServiceImpl implements PlaceService {
	@Autowired
	private ProvinceDAO provinceDAO;
	@Autowired
	private WardDAO wardDAO;

	public Province getProvinceById(int id) {
		return provinceDAO.getProvinceById(id);
	}

	public List<Province> getAllProvinces() {
		return provinceDAO.getAll();
	}

	public Ward getWardById(int id) {
		return wardDAO.getWardById(id);
	}

	public List<Ward> getAllWards() {
		return wardDAO.getAll();
	}

	public List<Ward> getWardsByProvinceId(int provinceId) {
		return wardDAO.getWardsByProvinceId(provinceId);
	}

}
