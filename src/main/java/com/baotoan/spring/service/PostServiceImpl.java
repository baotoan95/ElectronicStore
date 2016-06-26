package com.baotoan.spring.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.PostDAO;
import com.baotoan.spring.dao.PostTypeDAO;
import com.baotoan.spring.entity.Post;
import com.baotoan.spring.entity.PostType;

@Service("postService")
@Transactional
public class PostServiceImpl implements PostService {
	@Autowired
	private PostDAO postDAO;
	@Autowired
	private PostTypeDAO postTypeDAO;

	public Post getPostById(int id) {
		return postDAO.getPostById(id);
	}

	public List<Post> getAll() {
		return postDAO.getAll();
	}

	public boolean insertPost(Post post) {
		return postDAO.insertPost(post);
	}

	public boolean deletePost(int id) {
		return postDAO.deletePost(id);
	}

	public boolean updatePost(Post post) {
		return postDAO.updatePost(post);
	}

	public Map<String, Object> getPosts(int currentPage, int recordsPerPage, int showButton) {
		return postDAO.getPosts(currentPage, recordsPerPage, showButton);
	}

	public Post getPostBySlug(String slug) {
		return postDAO.getPostBySlug(slug);
	}

	public List<Post> getPostLatest(int numb) {
		return postDAO.getPostLatest(numb);
	}

	public List<Post> getPostsByType(int typeId) {
		return postDAO.getPostsByType(typeId);
	}

	public PostType getPostTypeById(int id) {
		return postTypeDAO.getPostTypeById(id);
	}

	
	
}
