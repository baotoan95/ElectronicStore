package com.baotoan.spring.dao;

import java.util.List;
import java.util.Map;

import com.baotoan.spring.entity.Post;

public interface PostDAO {
	Post getPostById(int id);
	Post getPostBySlug(String slug);
	List<Post> getAll();
	List<Post> getPostLatest(int numb);
	boolean insertPost(Post post);
	boolean deletePost(int id);
	boolean updatePost(Post post);
	Map<String, Object> getPosts(int currentPage, int recordsPerPage, int showButton);
	List<Post> getPostsByType(int id);
}
