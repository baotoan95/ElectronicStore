package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.UserDAO;
import com.baotoan.spring.entity.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	public User findUserByEmail(String email) {
		return userDAO.findUserByEmail(email);
	}

	public boolean insertUser(User user) {
		return userDAO.insertUser(user);
	}

	public boolean deleteUserByEmail(String email) {
		return userDAO.deleteUserByEmail(email);
	}

	public boolean updateUser(User user) {
		return userDAO.updateUser(user);
	}

	public List<User> findAllUser() {
		return userDAO.findAllUser();
	}
	
	public String checkLogin(String email, String password) {
		return userDAO.checkLogin(email, password);
	}

	public String activeAccount(String email, String code) {
		return userDAO.activeAccount(email, code);
	}

	public String updatePassword(String email, String oldPass, String newPass) {
		return userDAO.updatePassword(email, oldPass, newPass);
	}

}
