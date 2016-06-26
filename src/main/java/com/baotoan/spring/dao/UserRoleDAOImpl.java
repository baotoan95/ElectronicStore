package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.UserRole;

@Repository("userRoleDAO")
public class UserRoleDAOImpl extends AbstractDAO<Integer, UserRole> implements UserRoleDAO {
	@Autowired
	private UserDAO userDAO;

	@SuppressWarnings("unchecked")
	public List<UserRole> getUserRoleByEmail(String email) {
		Query query = getSession().createQuery("FROM UserRole WHERE email=:email");
		query.setParameter("email", email);
		return query.list();
	}

	public boolean insertUserRole(UserRole userRole) {
		return persist(userRole);
	}

	public boolean deleteUserRole(int userRoleId) {
		boolean check = false;
		UserRole userRole = getByKey(userRoleId);
		check = delete(userRole);
		if(getUserRoleByEmail(userRole.getUser().getEmail()).size() == 0) {
			userDAO.deleteUserByEmail(userRole.getUser().getEmail());
		}
		return check;
	}

	public boolean updateUserRole(UserRole userRole) {
		UserRole userRoleOld = getByKey(userRole.getId());
		if(userRoleOld != null) {
			userRoleOld.setRole(userRole.getRole());
			userRoleOld.setUser(userRole.getUser());
			return true;
		}
		return false;
	}

	public boolean deleteUserRoleByEmail(String email) {
		Query query = getSession().createQuery("FROM User WHERE email=:email");
		query.setParameter("email", email);
		query.executeUpdate();
		return userDAO.deleteUserByEmail(email);
	}

}
