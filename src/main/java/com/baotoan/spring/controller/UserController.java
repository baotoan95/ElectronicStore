package com.baotoan.spring.controller;

import java.beans.PropertyEditorSupport;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.baotoan.spring.entity.Bank;
import com.baotoan.spring.entity.Province;
import com.baotoan.spring.entity.User;
import com.baotoan.spring.entity.UserLogin;
import com.baotoan.spring.entity.UserRole;
import com.baotoan.spring.entity.Ward;
import com.baotoan.spring.service.BankService;
import com.baotoan.spring.service.MailService;
import com.baotoan.spring.service.PlaceService;
import com.baotoan.spring.service.RoleService;
import com.baotoan.spring.service.UserRoleService;
import com.baotoan.spring.service.UserService;
import com.baotoan.spring.utils.GenerateCaptcha;
import com.baotoan.spring.utils.GenerationCommon;

@Controller
@RequestMapping(value = "/user")
@SessionAttributes({"captcha", "provinces", "wards", "banks", "user"})
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private BankService bankService;
	@Autowired
	private UserRoleService userRoleService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private MailService mailService;
	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value = "/registry.html", method = RequestMethod.GET)
	public String registryPage(ModelMap model, HttpSession session) {
		User user = new User();
		String captcha = GenerationCommon.generateCode(5);
		String pathFile = session.getServletContext().getRealPath("/") + "resources/images/captcha.jpeg";
		GenerateCaptcha.createCaptcha(captcha, 150, 35, pathFile);
		model.put("captcha", captcha);
		session.setAttribute("captcha", captcha);
		session.setAttribute("provinces", placeService.getAllProvinces());
		session.setAttribute("wards", placeService.getWardsByProvinceId(65));
		session.setAttribute("banks", bankService.getAll());
		model.addAttribute("user", user);
		return "registry";
	}
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    binder.registerCustomEditor(Bank.class, "bank", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String bankId) {
		        Bank bank = bankService.getBankById(Integer.parseInt(bankId));
		        setValue(bank);
		    }
	    });
	    binder.registerCustomEditor(Province.class, "province", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String provinceId) {
		        Province province = placeService.getProvinceById(Integer.parseInt(provinceId));
		        setValue(province);
		    }
	    });
	    binder.registerCustomEditor(Province.class, "pay_province", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String provinceId) {
		        Province province = placeService.getProvinceById(Integer.parseInt(provinceId));
		        setValue(province);
		    }
	    });
	    binder.registerCustomEditor(Province.class, "recie_province", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String provinceId) {
		        Province province = placeService.getProvinceById(Integer.parseInt(provinceId));
		        setValue(province);
		    }
	    });
	    binder.registerCustomEditor(Ward.class, "ward", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String wardId) {
		        Ward ward = placeService.getWardById(Integer.parseInt(wardId));
		        setValue(ward);
		    }
	    });
	    binder.registerCustomEditor(Ward.class, "pay_district", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String wardId) {
		        Ward ward = placeService.getWardById(Integer.parseInt(wardId));
		        setValue(ward);
		    }
	    });
	    binder.registerCustomEditor(Ward.class, "recie_district", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String wardId) {
		        Ward ward = placeService.getWardById(Integer.parseInt(wardId));
		        setValue(ward);
		    }
	    });
	}
	
	@RequestMapping(value = "/registry.html", method = RequestMethod.POST)
	public String registry(@Valid @ModelAttribute User user, BindingResult result, HttpServletRequest request, 
			@ModelAttribute("captcha") String captcha, ModelMap model) {
		if(result.hasErrors()) {
			System.out.println("hasError");
			return "registry";
		}
		String passagain = request.getParameter("passagain");
		if(!passagain.equals(user.getPassword())) {
			model.put("passagain", "Mật mã xác nhận chưa chính xác");
			return "registry";
		}
		String recaptcha = request.getParameter("recaptcha");
		System.out.println(recaptcha + " " + captcha);
		if(!recaptcha.equals(captcha)) {
			model.put("error", "Captcha chưa chính xác");
			return "registry";
		}
		userRoleService.insertUserRole(new UserRole(0, user, roleService.getRoleById(1)));
		String code = GenerationCommon.generateCode(30);
		user.setStatus(code);
		user.setPassword(GenerationCommon.md5(user.getPassword()));
		user.setPay_name(user.getFirstName() + user.getLastName());
		user.setPay_address(user.getAddress());
		user.setPay_phone(user.getPhone());
		user.setPay_district(user.getWard());
		user.setPay_province(user.getProvince());
		user.setRecie_name(user.getPay_name());
		user.setRecie_address(user.getPay_address());
		user.setRecie_phone(user.getPay_phone());
		user.setRecie_district(user.getPay_district());
		user.setRecie_province(user.getPay_province());
		if(!userService.insertUser(user)) {
			model.addAttribute("error", "Thông báo: địa chỉ <b>" + user.getEmail() + "</b> đã tồn tại trong hệ thống của chúng tôi");
			return "registry";
		} else {
			String mailContent = "Bạn vừa đăng ký thành công tài khoản tại Pico!"
					+ "<br/>Vui lòng truy cập link bên dưới để kích hoạt tài khoản:"
					+ "<br/>http://localhost:8080/ElectronicStore/user/login/active/" + user.getEmail() + "/" + code + ".html";
			mailService.sender(new String[] {user.getEmail()}, "Tin nhắn kích hoạt tài khoản tại Pico", mailContent);
		}
		return "redirect:/index.html";
	}
	
	@RequestMapping(value = "/login/active/{email}/{code}.html", method = RequestMethod.GET)
	public String loginActive(@PathVariable("email") String email, @PathVariable("code") String code, ModelMap model) {
		User user = userService.findUserByEmail(email);
		if(user.getStatus().equals(code)) {
			user.setStatus("actived");
			if(userService.updateUser(user)) {
				return "redirect:/index.html";
			}
		}
		model.put("message", "Yêu cầu không có hiệu lực");
		return "login";
	}
	
	@RequestMapping(value = "quan-ly-tai-khoan.html")
	public String profile(ModelMap model, @RequestParam(value = "action") String action,
			@ModelAttribute("user") User user) {
		String actionPerform = "index";
		String title = "Quản lý tài khoản";
		if(action.equalsIgnoreCase("password")) {
			actionPerform = "password";
			title = "Đổi mật khẩu";
		} else if(action.equalsIgnoreCase("address")) {
			model.addAttribute("provinces", placeService.getAllProvinces());
			model.addAttribute("districts", placeService.getAllWards());
			actionPerform = "address";
			title = "Sửa địa chỉ";
		} else if(action.equalsIgnoreCase("edit")) {
			model.addAttribute("banks", bankService.getAll());
			actionPerform = "edit";
			title = "Chỉnh sửa tài khoản";
		}
		model.addAttribute("action", actionPerform);
		model.addAttribute("title", title);
		model.addAttribute("user", user);
		return "profile";
	}
	
	@RequestMapping(value = "/quan-ly-tai-khoan.html", method = RequestMethod.POST)
	public String updateProfile(ModelMap model, @RequestParam(value = "action", required = true) String action,
			@ModelAttribute("user") User user, HttpServletRequest request) {
		String check = "Cập nhật chưa thành công";
		if(action.equalsIgnoreCase("password")) {
			String newPass = request.getParameter("passNew");
			String oldPass = request.getParameter("passOld");
			check = userService.updatePassword(user.getEmail(), oldPass, newPass);
		} else if(action.equalsIgnoreCase("address")) {
			if(userService.updateUser(user)) {
				check = "success";
			}
			model.addAttribute("provinces", placeService.getAllProvinces());
			model.addAttribute("districts", placeService.getAllWards());
		} else if(action.equalsIgnoreCase("edit")) {
			if(userService.updateUser(user)) {
				check = "success";
			}
		}
		if(check.equals("success")) {
			model.addAttribute("message", "Cập nhật " + action + " thành công");
		} else {
			model.addAttribute("error", check);
		}
		model.addAttribute("action", action);
		model.addAttribute("user", userService.findUserByEmail(user.getEmail()));
		return "profile";
	}
	
	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String loginPage(ModelMap model) {
		model.addAttribute("userLogin", new UserLogin());
		return "login";
	}
	
	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public String login(@Valid @ModelAttribute("userLogin") UserLogin userLogin, 
			BindingResult result, ModelMap model, HttpSession session, HttpServletResponse response) {
		if(result.hasErrors()) {
			return "login";
		}
		String check = userService.checkLogin(userLogin.getEmail(), userLogin.getPassword());
		if(check.equals("success")) {
			User user = userService.findUserByEmail(userLogin.getEmail());
			session.setAttribute("user", user);
			if(userLogin.isRemember()) {
				Cookie cookie = new Cookie("pico_user", user.getEmail());
				cookie.setMaxAge(5000);
				response.addCookie(cookie);
			}
			model.addAttribute("user", user);
			return (String) (session.getAttribute("returnTo") != null ? "redirect:/"+session.getAttribute("returnTo")+".html" : "redirect:/user/quan-ly-tai-khoan.html?action=index");
		} else {
			model.addAttribute("error", check);
			return "login";
		}
		
	}
	
	@RequestMapping(value = "logout.html")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response, SessionStatus status) {
		session.removeAttribute("user");
		status.setComplete();
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		return "redirect:/index.html";
	}
}
