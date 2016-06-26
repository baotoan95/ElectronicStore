package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl extends AbstractDAO<Integer, Category> implements CategoryDAO {

	public Category getCategoryById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Category> getCategoryByParentId(int parentId) {
		Query query = getSession().createQuery("FROM Category WHERE parent = :parent");
		query.setParameter("parent", parentId);
		return query.list();
	}

	public boolean insertCategory(Category category) {
		return persist(category);
	}

	public boolean deleteCategory(int id) {
		Category category = getCategoryById(id);
		return delete(category);
	}

	public boolean updateCategory(Category category) {
		Category categoryOld = getCategoryById(category.getCateId());
		if(null != categoryOld) {
			categoryOld.setAvatar(category.getAvatar());
			categoryOld.setContainer(category.getContainer());
			categoryOld.setDesc(category.getDesc());
			categoryOld.setName(category.getName());
			categoryOld.setParent(category.getParent());
			return true;
		}
		return false;
	}

	public Category getCategoryBySlug(String slug) {
		try {
			Query query = getSession().createQuery("FROM Category WHERE slug=:slug");
			query.setParameter("slug", slug);
			return (Category)query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
