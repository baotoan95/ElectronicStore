package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Category;

public interface CategoryService {
	Category getCategoryById(int id);
	Category getCategoryBySlug(String slug);
	List<Category> getCategoryByParentId(int parentId);
	boolean insertCategory(Category category);
	boolean deleteCategory(int id);
	boolean updateCategory(Category category);
}
