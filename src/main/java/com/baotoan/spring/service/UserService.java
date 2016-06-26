package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.User;

public interface UserService {
	User findUserByEmail(String email);
	boolean insertUser(User user);
	boolean deleteUserByEmail(String email);
	boolean updateUser(User user);
	String checkLogin(String email, String password);
	String activeAccount(String email, String code);
	String updatePassword(String email, String oldPass, String newPass);
	List<User> findAllUser();
}
