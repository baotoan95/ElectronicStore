package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.User;
import com.baotoan.spring.service.MailService;
import com.baotoan.spring.utils.GenerationCommon;

@Repository("userDAO")
public class UserDAOImpl extends AbstractDAO<String, User> implements UserDAO {
	@Autowired
	private MailService mailService;

	public User findUserByEmail(String email) {
		try {
			User user = getByKey(email);
			Hibernate.initialize(user.getBank());
			Hibernate.initialize(user.getPay_district());
			Hibernate.initialize(user.getPay_province());
			Hibernate.initialize(user.getProvince());
			Hibernate.initialize(user.getWard());
			Hibernate.initialize(user.getRecie_district());
			Hibernate.initialize(user.getRecie_province());
			return user;
		} catch (Exception e) {
			return null;
		}
	}

	public boolean insertUser(User user) {
		return persist(user);
	}

	public boolean deleteUserByEmail(String email) {
		User user = (User) findUserByEmail(email);
		return delete(user);
	}

	public boolean updateUser(User user) {
		try {
			User userOld = (User) findUserByEmail(user.getEmail());
			if (null != userOld) {
				userOld.setPassword(user.getPassword());
				userOld.setGender(user.getGender());
				userOld.setFirstName(user.getFirstName());
				userOld.setLastName(user.getLastName());
				userOld.setBirth(user.getBirth());
				userOld.setBank(user.getBank());
				userOld.setCareer(user.getCareer());
				userOld.setPhone(user.getPhone());
				userOld.setCellPhone(user.getCellPhone());
				userOld.setProvince(user.getProvince());
				userOld.setWard(user.getWard());
				userOld.setAddress(user.getAddress());
				userOld.setPay_name(user.getPay_name());
				userOld.setPay_address(user.getPay_address());
				userOld.setPay_district(user.getPay_district());
				userOld.setPay_phone(user.getPay_phone());
				userOld.setPay_province(user.getPay_province());
				userOld.setRecie_address(user.getRecie_address());
				userOld.setRecie_district(user.getRecie_district());
				userOld.setRecie_name(user.getRecie_name());
				userOld.setRecie_phone(user.getRecie_phone());
				userOld.setRecie_province(user.getRecie_province());
				userOld.setStatus(user.getStatus());
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUser() {
		Criteria criteria = createEntityCriteria();
		return (List<User>) criteria.list();
	}

	public String checkLogin(String email, String password) {
		try {
			User user = findUserByEmail(email);
			if(null != user && user.getPassword().equals(GenerationCommon.md5(password))) {
				if(user.getStatus().indexOf("actived") == 0) {
					return "success";
				} else {
					return "Tài khoản chưa được kích hoạt";
				}
			}
		} catch (Exception e) {}
		return "Email hoặc mật khẩu chưa chính xác";
	}
	
	public String activeAccount(String email, String code) {
		try {
			User user = findUserByEmail(email);
			if(null != user) {
				if(user.getStatus().equals(code)) {
					user.setStatus("actived");
					return "Tài khoản đã được kích hoạt";
				} else {
					return "Mã kích hoạt không hợp lệ";
				}
			}
		} catch (Exception e) {}
		return "Email không tồn tại trong hệ thống";
	}

	public String updatePassword(String email, String oldPass, String newPass) {
		try {
			User user = findUserByEmail(email);
			if(null != user) {
				if(user.getPassword().equals(GenerationCommon.md5(oldPass))) {
					user.setPassword(GenerationCommon.md5(newPass));
					String message = "Chào bạn, " + user.getLastName() + "<br/>Chúng tôi đã nhận được yêu cầu và đã đổi mật khẩu cho bạn<br/>Nếu có thắc mắc vui lòng liên lạc với chúng tôi.<br/><br/>Pico";
					mailService.sender(new String[] {email}, "Pico - Đổi mật khẩu", message);
					return "success";
				} else {
					return "Mật khẩu chưa chính xác";
				}
			}
		} catch (Exception e) {}
		return "Có lỗi, vui lòng đăng nhập và thử lại sau";
	}

}
