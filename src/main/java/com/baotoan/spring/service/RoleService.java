package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Role;

public interface RoleService {
	List<Role> getAll();
	Role getRoleById(int id);
}
