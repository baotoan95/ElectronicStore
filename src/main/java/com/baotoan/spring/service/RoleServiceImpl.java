package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.RoleDAO;
import com.baotoan.spring.entity.Role;

@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleDAO roleDAO;

	public List<Role> getAll() {
		return roleDAO.getAll();
	}

	public Role getRoleById(int id) {
		return roleDAO.getRoleById(id);
	}
	
}
