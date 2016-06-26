package com.baotoan.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baotoan.spring.service.CategoryService;
import com.baotoan.spring.service.ProductService;

@Controller
@RequestMapping("/")
public class RedirectController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;

	@RequestMapping({ "/", "index.html" })
	public String index(ModelMap model) {
		model.put("products", productService.getProductsBestSell(15));
		return "index";
	}

	@RequestMapping("gioi-thieu.html")
	public String intro() {
		return "intro";
	}

	@RequestMapping("thong-tin-tuyen-dung.html")
	public String recruit() {
		return "recruit";
	}

	@RequestMapping("the-thanh-vien.html")
	public String member_cart() {
		return "member_cart";
	}

	@RequestMapping({ "cart" })
	public String cart() {
		return "cart";
	}

	@RequestMapping({ "contact" })
	public String contact() {
		return "contact";
	}

	@RequestMapping({ "login" })
	public String login() {
		return "login";
	}

	@RequestMapping({ "preview" })
	public String preview() {
		return "preview";
	}

}