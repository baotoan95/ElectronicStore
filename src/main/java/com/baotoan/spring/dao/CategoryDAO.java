package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Category;

public interface CategoryDAO {
	Category getCategoryById(int id);
	Category getCategoryBySlug(String slug);
	List<Category> getCategoryByParentId(int parentId);
	boolean insertCategory(Category category);
	boolean deleteCategory(int id);
	boolean updateCategory(Category category);
}
