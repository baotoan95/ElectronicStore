package com.baotoan.spring.service;

import java.util.Map;

import com.baotoan.spring.entity.Contact;

public interface ContactService {
	boolean insertContact(Contact contact);
	boolean deleteContact(int id);
	boolean updateContact(Contact contact);
	Contact getContactById(int id);
	Map<String, Object> getContacts(int currentPage, int recordsPerPage, int showButton);
	Map<String, Object> getContactsReply(int currentPage, int recordsPerPage, int showButton);
	Map<String, Object> getContactsNotReply(int currentPage, int recordsPerPage, int showButton);
}
