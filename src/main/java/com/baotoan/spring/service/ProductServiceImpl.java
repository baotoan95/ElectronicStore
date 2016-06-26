package com.baotoan.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.ProductDAO;
import com.baotoan.spring.entity.Product;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	public Product getProductById(int id) {
		return productDAO.getProductById(id);
	}

	public boolean insertProduct(Product product) {
		return productDAO.insertProduct(product);
	}

	public boolean deleteProduct(int id) {
		return productDAO.deleteProduct(id);
	}

	public boolean updateProduct(Product product) {
		return productDAO.updateProduct(product);
	}

	public List<Product> getAll() {
		return productDAO.getAll();
	}

	public List<Product> getProductsBestSell(int numbOfRecord) {
		return productDAO.getProductsBestSell(numbOfRecord);
	}

	public Map<String, Object> searchBy(int getBy, Object key, int currentPage, int recordsPerPage, int showButton) {
		switch (getBy) {
		case ProductService.BY_CATE:
			return productDAO.getProductsByCateId(Integer.parseInt(String.valueOf(key)), currentPage, recordsPerPage, showButton);
		case ProductService.BY_SEARCH:
			return productDAO.getProductsByName((String)key, currentPage, recordsPerPage, showButton);
		case ProductService.BY_CATE_PARENT:
			return productDAO.getProductsByCateParent(Integer.parseInt(String.valueOf(key)), currentPage, recordsPerPage, showButton);
		}
		return new HashMap<String, Object>();
	}

	public Product getProductBySlug(String slug) {
		return productDAO.getProductBySlug(slug);
	}

	public List<Product> getSuggests(int price, int numOfRecord) {
		return productDAO.getSuggests(price, numOfRecord);
	}

}
