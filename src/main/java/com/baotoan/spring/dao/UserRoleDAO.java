package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.UserRole;

public interface UserRoleDAO {
	List<UserRole> getUserRoleByEmail(String email);
	boolean insertUserRole(UserRole userRole);
	boolean deleteUserRole(int userRoleId);
	boolean deleteUserRoleByEmail(String email);
	boolean updateUserRole(UserRole userRole);
}
