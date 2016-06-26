package com.baotoan.spring.service;

import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.ContactDAO;
import com.baotoan.spring.entity.Contact;

@Service("contactService")
@Transactional
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactDAO contactDAO;
	
	public boolean insertContact(Contact contact) {
		return contactDAO.insertContact(contact);
	}

	public boolean deleteContact(int id) {
		return contactDAO.deleteContact(id);
	}

	public Contact getContactById(int id) {
		return contactDAO.getContactById(id);
	}

	public boolean updateContact(Contact contact) {
		return contactDAO.updateContact(contact);
	}

	public Map<String, Object> getContacts(int currentPage, int recordsPerPage,
			int showButton) {
		return contactDAO.getContacts(currentPage, recordsPerPage, showButton);
	}

	public Map<String, Object> getContactsReply(int currentPage,
			int recordsPerPage, int showButton) {
		return contactDAO.getContactsReply(currentPage, recordsPerPage, showButton);
	}

	public Map<String, Object> getContactsNotReply(int currentPage,
			int recordsPerPage, int showButton) {
		return contactDAO.getContactsNotReply(currentPage, recordsPerPage, showButton);
	}
	
	
	
}
