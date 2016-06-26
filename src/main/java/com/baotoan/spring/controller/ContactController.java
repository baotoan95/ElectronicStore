package com.baotoan.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.joda.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.baotoan.spring.entity.Contact;
import com.baotoan.spring.service.ContactService;
import com.baotoan.spring.utils.GenerateCaptcha;
import com.baotoan.spring.utils.GenerationCommon;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value = "contact.html", method = RequestMethod.GET)
	public String contactPage(ModelMap model, @RequestParam("page") int page, HttpSession session) {
		String captcha = GenerationCommon.generateCode(5);
		String pathFile = session.getServletContext().getRealPath("/") + "resources/images/captcha.jpeg";
		GenerateCaptcha.createCaptcha(captcha, 150, 35, pathFile);
		session.setAttribute("captcha", captcha);
		model.addAttribute("contact", new Contact());
		Map<String, Object> result = contactService.getContactsReply(page, 10, 5);
		model.addAttribute("contacts", result.get("contacts"));
		model.addAttribute("pagination", ((String)result.get("htmlCode")).replaceAll("#before", "contact.html?page=").replaceAll("#after", ""));
		return "contact";
	}
	
	@RequestMapping(value = "contact.html", method = RequestMethod.POST)
	public String contact(@Valid @ModelAttribute("contact") Contact contact, BindingResult result, 
			@RequestParam("recaptcha") String captcha, HttpSession session, ModelMap model) {
		if(result.hasErrors()) {
			return "contact";
		}
		String realCaptcha = (String) session.getAttribute("captcha");
		if(!realCaptcha.equals(captcha)) {
			model.addAttribute("error", "Nhập captcha chưa chính xác");
			return "contact";
		}
		contact.setStatus("Chưa xem");
		contact.setId(1);
		contact.setDate(new LocalDateTime());
		if(contactService.insertContact(contact)) {
			model.addAttribute("message", "Cảm ơn bạn đã đóng góp ý kiến!");
		} else {
			model.addAttribute("error", "Có lỗi, vui lòng báo cáo cho chúng tôi");
		}
		return "contact";
	}
}
