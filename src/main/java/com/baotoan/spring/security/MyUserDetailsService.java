//package com.baotoan.spring.security;
//
//import java.util.ArrayList;
//import java.util.HashSet;
//import java.util.List;
//import java.util.Set;
//
//import javax.transaction.Transactional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import com.baotoan.spring.dao.UserDAO;
//import com.baotoan.spring.entity.UserRole;
//
//@Service("userDetailsService")
//@Transactional
//public class MyUserDetailsService implements UserDetailsService {
//	@Autowired
//	private UserDAO userDAO;
//
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		com.baotoan.spring.entity.User user = null;
//		List<GrantedAuthority> authorities = null;
//		try {
//			user = userDAO.findUserByEmail(username);
//			System.out.println(user);
//			authorities = buildUserAuthority(user.getUserRoles());
//		} catch (Exception e) {}
//		return buildUserForAuthentication(user, authorities);
//	}
//	
//	public User buildUserForAuthentication(com.baotoan.spring.entity.User user, List<GrantedAuthority> authorities) {
//		try {
//			return new User(user.getEmail(), user.getPassword(), true, true, true, true, authorities);
//		} catch(Exception e) {
//			return null;
//		}
//	}
//	
//	public List<GrantedAuthority> buildUserAuthority(Set<UserRole> userRoles) {
//		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
//		for (UserRole userRole : userRoles) {
//			setAuths.add(new SimpleGrantedAuthority(userRole.getRole().getName()));
//		}
//		List<GrantedAuthority> result = new ArrayList<GrantedAuthority>(setAuths);
//		return result;
//	}
//
//}
