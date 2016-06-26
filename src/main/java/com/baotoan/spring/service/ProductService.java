package com.baotoan.spring.service;

import java.util.List;
import java.util.Map;

import com.baotoan.spring.entity.Product;

public interface ProductService {
	public static final int BY_SEARCH = 1;
	public static final int BY_CATE = 2;
	public static final int BY_CATE_PARENT = 3;
	
	Product getProductById(int id);
	Product getProductBySlug(String slug);
	boolean insertProduct(Product product);
	boolean deleteProduct(int id);
	boolean updateProduct(Product product);
	List<Product> getAll();
	List<Product> getProductsBestSell(int numbOfRecord);
	List<Product> getSuggests(int price, int numOfRecord);
	Map<String, Object> searchBy(int getBy, Object key, int currentPage, int recordsPerPage, int showButton);
}
