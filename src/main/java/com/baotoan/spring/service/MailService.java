package com.baotoan.spring.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailService {
	@Autowired
	private JavaMailSender mailSender;

	public boolean sender(String[] toAddress, String subject, String messageBody) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom("baotoan.95@gmail.com");
			helper.setTo(toAddress);
			helper.setSubject(subject);
			helper.setText(messageBody, true);
			mailSender.send(message);
			return true;
		} catch (MessagingException e) {
			return false;
		}
	}
	
	public static void main(String[] args) {
		new MailService().sender(new String[] {"baotoan1142@gmail.com"}, "Kiểm tra mail", "<b>Đây là thẻ b</b><br/><a href='#'>Link nè</a>");
	}
}
