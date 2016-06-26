package com.baotoan.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baotoan.spring.entity.Category;
import com.baotoan.spring.service.CategoryService;

@Controller
@RequestMapping("cate")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/{slug}", method = RequestMethod.GET)
	public String showSubCate(@PathVariable("slug") String slug, ModelMap model) {
		Category cate = categoryService.getCategoryBySlug(slug + ".html");
		List<Category> subCates = categoryService.getCategoryByParentId(cate.getCateId());
		model.put("categories", subCates);
		return "list_cate";
	}
}