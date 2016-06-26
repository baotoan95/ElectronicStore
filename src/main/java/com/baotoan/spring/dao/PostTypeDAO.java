package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.PostType;


public interface PostTypeDAO {
	int SERVICE = 7;
	int NEWS = 1;
	int TERMS_REGULATION = 2;
	int ADDRESS = 6;
	int POLICY = 3;
	int SUPPORT = 4;
	
	PostType getPostTypeById(int id);
	List<PostType> getAll();
	boolean insertPostType(PostType postType);
	boolean deletePostType(int id);
	boolean updatePostType(PostType postType);
}
