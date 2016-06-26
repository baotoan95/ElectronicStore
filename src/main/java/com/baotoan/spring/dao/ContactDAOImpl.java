package com.baotoan.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Contact;
import com.baotoan.spring.utils.Pagination;

@Repository("contactDAO")
public class ContactDAOImpl extends AbstractDAO<Integer, Contact> implements ContactDAO {
	@Autowired
	private Pagination pagination;
	
	public boolean insertContact(Contact contact) {
		return getSession().merge(contact) != null;
	}

	public boolean deleteContact(int id) {
		Contact contact = getContactById(id);
		return delete(contact);
	}

	public Contact getContactById(int id) {
		return getByKey(id);
	}

	public boolean updateContact(Contact contact) {
		Contact contactOld = getContactById(contact.getId());
		if(null != contactOld) {
			contactOld.setName(contact.getName());
			contactOld.setEmail(contact.getEmail());
			contactOld.setPhone(contact.getPhone());
			contactOld.setContent(contact.getContent());
			contactOld.setDate(contact.getDate());
			contactOld.setStatus(contact.getStatus());
			contactOld.setReply(contact.getReply());
			return true;
		}
		return false;
	}
	
	public Map<String, Object> getContacts(int currentPage, int recordsPerPage, int showButton) {
		Query query = getSession().createQuery("from Contact c order by c.status");
		return getResult(query, currentPage, recordsPerPage, showButton);
	}
	
	public Map<String, Object> getContactsReply(int currentPage, int recordsPerPage, int showButton) {
		Query query = getSession().createQuery("from Contact c where c.reply is not null");
		return getResult(query, currentPage, recordsPerPage, showButton);
	}
	
	public Map<String, Object> getContactsNotReply(int currentPage, int recordsPerPage, int showButton) {
		Query query = getSession().createQuery("from Contact c where c.reply is null");
		return getResult(query, currentPage, recordsPerPage, showButton);
	}
	
	@SuppressWarnings({ "unchecked", "static-access" })
	private Map<String, Object> getResult(Query query, int currentPage, int recordsPerPage, int showButton) {
		try {
			int totalRecord = query.list().size();
			int recordStart = ((currentPage - 1) * recordsPerPage);
			if(recordsPerPage > totalRecord) {
				recordStart = 0;
				currentPage = 1;
			}
			query.setFirstResult(recordStart);
			query.setMaxResults(recordsPerPage);
			List<Contact> contacts = query.list();
			String htmlCode = (String) pagination.generateHTML(totalRecord, showButton, recordsPerPage, currentPage, Pagination.GRID_PAGE);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("contacts", contacts);
			result.put("htmlCode", htmlCode);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return new HashMap<String, Object>();
		}
	}
	
}
