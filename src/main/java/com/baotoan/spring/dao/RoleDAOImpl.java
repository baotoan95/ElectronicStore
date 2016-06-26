package com.baotoan.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Role;

@Repository("roleDAO")
public class RoleDAOImpl extends AbstractDAO<Integer, Role> implements RoleDAO {

	@SuppressWarnings("unchecked")
	public List<Role> getAll() {
		try {
			return (List<Role>) createEntityCriteria().list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public Role getRoleById(int id) {
		try {
			return getByKey(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
