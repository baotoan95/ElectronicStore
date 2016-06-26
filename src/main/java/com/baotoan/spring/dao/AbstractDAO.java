package com.baotoan.spring.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractDAO<PK extends Serializable, T> {
	private final Class<T> persitentClass;
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public AbstractDAO() {
		this.persitentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	protected T getByKey(PK key) {
		try {
			return (T) getSession().get(persitentClass, key);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	protected boolean persist(T entity) {
		try {
			getSession().persist(entity);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	protected boolean delete(T entity) {
		try {
			getSession().delete(entity);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	protected Criteria createEntityCriteria() {
		try {
			return getSession().createCriteria(persitentClass);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
