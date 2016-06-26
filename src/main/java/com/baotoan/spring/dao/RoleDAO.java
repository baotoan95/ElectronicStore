package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Role;

public interface RoleDAO {
	List<Role> getAll();
	Role getRoleById(int id);
}
