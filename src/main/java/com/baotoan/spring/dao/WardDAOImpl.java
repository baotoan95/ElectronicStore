package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Ward;

@Repository("wardDAO")
public class WardDAOImpl extends AbstractDAO<Integer, Ward> implements WardDAO {

	public Ward getWardById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Ward> getAll() {
		return (List<Ward>)createEntityCriteria().list();
	}

	@SuppressWarnings("unchecked")
	public List<Ward> getWardsByProvinceId(int provinceId) {
		Query q = getSession().createQuery("FROM Ward WHERE province=:id");
		q.setParameter("id", provinceId);
		return (List<Ward>)q.list();
	}

}
