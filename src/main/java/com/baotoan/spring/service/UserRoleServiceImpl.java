package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.UserRoleDAO;
import com.baotoan.spring.entity.UserRole;

@Service("userRoleService")
@Transactional
public class UserRoleServiceImpl implements UserRoleService {
	@Autowired
	private UserRoleDAO userRoleDAO;

	public List<UserRole> getUserRoleByEmail(String email) {
		return userRoleDAO.getUserRoleByEmail(email);
	}

	public boolean insertUserRole(UserRole userRole) {
		return userRoleDAO.insertUserRole(userRole);
	}

	public boolean deleteUserRole(int userRoleId) {
		return userRoleDAO.deleteUserRole(userRoleId);
	}

	public boolean deleteUserRoleByEmail(String email) {
		return userRoleDAO.deleteUserRoleByEmail(email);
	}

	public boolean updateUserRole(UserRole userRole) {
		return userRoleDAO.updateUserRole(userRole);
	}

}
