package com.baotoan.spring.dao;

import java.util.List;
import java.util.Map;

import com.baotoan.spring.entity.Product;

public interface ProductDAO {
	Product getProductById(int id);
	Product getProductBySlug(String slug);
	boolean insertProduct(Product product);
	boolean deleteProduct(int id);
	boolean updateProduct(Product product);
	List<Product> getAll();
	List<Product> getProductsBestSell(int numbOfRecord);
	List<Product> getSuggests(int price, int numOfRecord);
	Map<String, Object> getProductsByCateId(int categoryId, int currentPage, int recordsPerPage, int showButton);
	Map<String, Object> getProductsByCateParent(int parentId, int currentPage, int recordsPerPage, int showButton);
	Map<String, Object> getProductsByName(String name, int currentPage, int recordsPerPage, int showButton);
	
}
