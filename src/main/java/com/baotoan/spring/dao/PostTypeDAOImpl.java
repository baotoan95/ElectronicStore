package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.PostType;

@Repository("postTypeDAO")
public class PostTypeDAOImpl extends AbstractDAO<Integer, PostType> implements PostTypeDAO {

	public PostType getPostTypeById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<PostType> getAll() {
		Criteria criteria = createEntityCriteria();
		return criteria.list();
	}

	public boolean insertPostType(PostType postType) {
		return persist(postType);
	}

	public boolean deletePostType(int id) {
		PostType postType = getPostTypeById(id);
		return delete(postType);
	}

	public boolean updatePostType(PostType postType) {
		PostType postTypeOld = getPostTypeById(postType.getTypeId());
		if(null != postTypeOld) {
			postTypeOld.setName(postType.getName());
			return true;
		}
		return false;
	}

}
