package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.CategoryDAO;
import com.baotoan.spring.entity.Category;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;

	public Category getCategoryById(int id) {
		return categoryDAO.getCategoryById(id);
	}

	public List<Category> getCategoryByParentId(int parentId) {
		return categoryDAO.getCategoryByParentId(parentId);
	}

	public boolean insertCategory(Category category) {
		return categoryDAO.insertCategory(category);
	}

	public boolean deleteCategory(int id) {
		return categoryDAO.deleteCategory(id);
	}

	public boolean updateCategory(Category category) {
		return categoryDAO.updateCategory(category);
	}

	public Category getCategoryBySlug(String slug) {
		return categoryDAO.getCategoryBySlug(slug);
	}
}
