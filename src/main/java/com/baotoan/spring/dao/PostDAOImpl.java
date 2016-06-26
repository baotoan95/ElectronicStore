package com.baotoan.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Post;
import com.baotoan.spring.utils.Pagination;

@Repository("postDAO")
public class PostDAOImpl extends AbstractDAO<Integer, Post> implements PostDAO {
	@Autowired
	private Pagination pagination;
	
	public Post getPostById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Post> getAll() {
		return createEntityCriteria().list();
	}

	public boolean insertPost(Post post) {
		return persist(post);
	}

	public boolean deletePost(int id) {
		Post post = getPostById(id);
		return delete(post);
	}

	public boolean updatePost(Post post) {
		Post postOld = getPostById(post.getId());
		if(null != postOld) {
			postOld.setAuthor(post.getAuthor());
			postOld.setBanner(post.getBanner());
			postOld.setContent(post.getContent());
			postOld.setDesc(post.getDesc());
			postOld.setName(post.getName());
			postOld.setPublishesDate(post.getPublishesDate());
			postOld.setSlug(post.getSlug());
			postOld.setPostType(post.getPostType());
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public List<Post> getPosts(int start, int limit) {
		try {
			Query query = getSession().createQuery("FROM Post p ORDER BY p.id");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public int totalRecord() {
		try {
			return getAll().size();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@SuppressWarnings("static-access")
	public Map<String, Object> getPosts(int currentPage, int recordsPerPage, int showButton) {
		try {
			int totalRecord = totalRecord();
			int recordStart = ((currentPage - 1) * recordsPerPage);
			if(recordsPerPage > totalRecord) {
				recordStart = 0;
				currentPage = 1;
			}
		List<Post> posts = getPosts(recordStart, recordsPerPage);
		String htmlCode = pagination.generateHTML(totalRecord, showButton, recordsPerPage, currentPage, Pagination.GRID_PAGE);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("posts", posts);
		result.put("htmlCode", htmlCode);
		return result;
		} catch(Exception e) {
			e.printStackTrace();
			return new HashMap<String, Object>();
		}
	}

	public Post getPostBySlug(String slug) {
		try {
			Query query = getSession().createQuery("FROM Post p WHERE p.slug=:slug");
			query.setParameter("slug", slug);
			return ((Post)query.list().get(0));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Post> getPostLatest(int numb) {
		try {
			Query query = getSession().createQuery("FROM Post ORDER BY publishesDate DESC");
			query.setFirstResult(1);
			query.setMaxResults(numb);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Post> getPostsByType(int id) {
		try {
			Query query = getSession().createQuery("FROM Post p WHERE p.postType.typeId=:typeId");
			query.setParameter("typeId", id);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
