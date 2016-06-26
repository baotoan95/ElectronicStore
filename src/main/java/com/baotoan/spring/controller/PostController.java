package com.baotoan.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baotoan.spring.dao.PostTypeDAO;
import com.baotoan.spring.entity.Post;
import com.baotoan.spring.entity.PostType;
import com.baotoan.spring.service.PostService;

@Controller
@RequestMapping("post")
public class PostController {
	@Autowired
	private PostService postService;
	
	// GET LIST POST WITH TYPE NEWS (1)
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/news/{page}/", method = RequestMethod.GET)
	public String postPage(@PathVariable("page") int page, ModelMap model) {
		Map<String, Object> result = postService.getPosts(page, 5, 4); 
		List<Post> posts = (List<Post>) result.get("posts");
		String htmlCode = ((String) result.get("htmlCode")).replaceAll("#before", "/ElectronicStore/post/news/").replaceAll("#after", "/");
		model.addAttribute("posts", posts);
		model.addAttribute("htmlCode", htmlCode);
		return "news";
	}
	
	// READE NEWS
	@RequestMapping(value = "/read/{slug}")
	public String readNews(@PathVariable("slug") String slug, ModelMap model) {
		Post post = postService.getPostBySlug(slug + ".html");
		model.addAttribute("post", post);
		model.addAttribute("suggest", postService.getPostLatest(5));
		return "readnews";
	}
	
	// READ INFO
	@RequestMapping(value = "/{slug}")
	public String info(@PathVariable("slug") String slug, ModelMap model) {
		Post post = postService.getPostBySlug(slug + ".html");
		model.addAttribute("post", post);
		if(post != null && post.getPostType().getTypeId() != 1) {
			PostType postType = postService.getPostTypeById(post.getPostType().getTypeId());
			List<Post> posts = postService.getPostsByType(post.getPostType().getTypeId());
			model.addAttribute("postType", postType);
			model.addAttribute("posts", posts);
		}
		return "info";
	}
	
	// READ MAP
	@RequestMapping(value = {"map/{slug}"})
	public String intro_address(@PathVariable("slug") String slug, ModelMap model) {
		Post post = postService.getPostBySlug(slug + ".html");
		List<Post> address = postService.getPostsByType(PostTypeDAO.ADDRESS);
		model.addAttribute("address", address);
		model.addAttribute("post", post);
		return "intro-address";
	}
}
