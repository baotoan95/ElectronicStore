package com.baotoan.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Product;
import com.baotoan.spring.utils.Pagination;

@Repository("productDAO")
public class ProductDAOImpl extends AbstractDAO<Integer, Product> implements ProductDAO {
	@Autowired
	private Pagination pagination;
	
	public Product getProductById(int id) {
		Product p = getByKey(id);
		Hibernate.initialize(p.getCategory());
		Hibernate.initialize(p.getImageProducts());
		Hibernate.initialize(p.getListPromotions());
		Hibernate.initialize(p.getPost());
		Hibernate.initialize(p.getProductDetails());
		Hibernate.initialize(p.getProvider());
		return p;
	}

	public boolean insertProduct(Product product) {
		return persist(product);
	}

	public boolean deleteProduct(int id) {
		Product product = getProductById(id);
		return delete(product);
	}

	public boolean updateProduct(Product product) {
		Product productOld = getProductById(product.getId());
		if(null != productOld) {
			productOld.setName(product.getName());
			productOld.setPrice(product.getPrice());
			productOld.setAvatar(product.getAvatar());
			productOld.setSlug(product.getSlug());
			productOld.setViews(product.getViews());
			productOld.setSells(product.getSells());
			productOld.setSlug(product.getSlug());
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAll() {
		return createEntityCriteria().list();
	}


	@SuppressWarnings("unchecked")
	public List<Product> getProductsBestSell(int numbOfRecord) {
		try {
			Query query = getSession().createQuery("FROM Product ORDER BY sells DESC");
			query.setFirstResult(1);
			query.setMaxResults(numbOfRecord);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings({ "unchecked", "static-access" })
	public Map<String, Object> getProductsByCateId(int categoryId, int currentPage, int recordsPerPage, int showButton) {
		try {
			Query query = getSession().createQuery("FROM Product p where p.category.cateId=:categoryId");
			query.setParameter("categoryId", categoryId);
			int totalRecord = query.list().size();
			int recordStart = ((currentPage - 1) * recordsPerPage);
			if(recordsPerPage > totalRecord) {
				recordStart = 0;
				currentPage = 1;
			}
			query.setParameter("categoryId", categoryId);
			query.setFirstResult(recordStart);
			query.setMaxResults(recordsPerPage);
			List<Product> products = query.list();
			String htmlCode = (String) pagination.generateHTML(totalRecord, showButton, recordsPerPage, currentPage, Pagination.GRID_PAGE);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("products", products);
			result.put("htmlCode", htmlCode);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			return new HashMap<String, Object>();
		}
	}
	
	@SuppressWarnings({ "unchecked", "static-access" })
	public Map<String, Object> getProductsByName(String name, int currentPage, int recordsPerPage, int showButton) {
		try {
			Query query = getSession().createQuery("FROM Product WHERE name LIKE (:name1) OR name LIKE (:name2) OR name LIKE (:name3)");
			query.setParameter("name1", "%" + name + "%");
			query.setParameter("name2", "%" + name);
			query.setParameter("name3", name + "%");
			int totalRecord = query.list().size();
			int recordStart = ((currentPage - 1) * recordsPerPage);
			if(recordsPerPage > totalRecord) {
				recordStart = 0;
				currentPage = 1;
			}
			query.setFirstResult(recordStart);
			query.setMaxResults(recordsPerPage);
			List<Product> products = query.list();
			String htmlCode = (String) pagination.generateHTML(totalRecord, showButton, recordsPerPage, currentPage, Pagination.GRID_PAGE);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("products", products);
			result.put("htmlCode", htmlCode);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			return new HashMap<String, Object>();
		}
	}

	@SuppressWarnings({ "static-access", "unchecked" })
	public Map<String, Object> getProductsByCateParent(int parentId, int currentPage, int recordsPerPage, int showButton) {
		try {
			Query query = getSession().createQuery("select p from Product as p inner join p.category as c where c.parent=:parentId");
			query.setParameter("parentId", parentId);
			int totalRecord = query.list().size();
			int recordStart = ((currentPage - 1) * recordsPerPage);
			if(recordsPerPage > totalRecord) {
				recordStart = 0;
				currentPage = 1;
			}
			query.setFirstResult(recordStart);
			query.setMaxResults(recordsPerPage);
			List<Product> products = query.list();
			String htmlCode = (String) pagination.generateHTML(totalRecord, showButton, recordsPerPage, currentPage, Pagination.GRID_PAGE);
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("products", products);
			result.put("htmlCode", htmlCode);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			return new HashMap<String, Object>();
		}
	}

	public Product getProductBySlug(String slug) {
		try {
			Query query = getSession().createQuery("from Product where slug=:slug");
			query.setParameter("slug", slug);
			Product p = (Product) query.uniqueResult();
			Hibernate.initialize(p.getCategory());
			Hibernate.initialize(p.getImageProducts());
			Hibernate.initialize(p.getListPromotions());
			Hibernate.initialize(p.getPost());
			Hibernate.initialize(p.getProductDetails());
			Hibernate.initialize(p.getProvider());
			return p;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Product> getSuggests(int price, int numOfRecord) {
		try {
			Query query = getSession().createQuery("from Product where price <= :price");
			query.setParameter("price", price);
			query.setFirstResult(1);
			query.setMaxResults(numOfRecord);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
