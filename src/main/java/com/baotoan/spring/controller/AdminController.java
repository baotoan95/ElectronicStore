package com.baotoan.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@RequestMapping(value = {"/", "/index.html"})
	public String adminIndex() {
		return "ad_index";
	}
	
	@RequestMapping(value = "contacts.html", method = RequestMethod.GET)
	public String contactAdmin(ModelMap model, HttpSession session) {
		return "ad_contacts";
	}
	
	@RequestMapping(value = "edit-contact.html", method = RequestMethod.GET)
	public String ediContactAdmin(ModelMap model, HttpSession session) {
		return "ad_edit_contact";
	}
	
	@RequestMapping(value = "posts.html")
	public String postAdmin(ModelMap model) {
		return "ad_posts";
	}
	
	@RequestMapping(value = "edit-post.html")
	public String editPostAdmin(ModelMap model) {
		return "ad_edit_post";
	}
	
	@RequestMapping(value = "products.html")
	public String listProduct() {
		return "ad_products";
	}
	@RequestMapping(value = "edit-product.html")
	public String editProductAdmin() {
		return "ad_edit_product";
	}
	
	@RequestMapping(value = "users.html")
	public String listUser() {
		return "ad_users";
	}
	@RequestMapping(value = "edit-user.html")
	public String editUserAdmin() {
		return "ad_edit_user";
	}
	
	@RequestMapping(value = "categories.html")
	public String listCategories() {
		return "ad_categories";
	}
	@RequestMapping(value = "edit-category.html")
	public String editCategory() {
		return "ad_edit_category";
	}
	
	@RequestMapping(value = "orders.html")
	public String listOrders() {
		return "ad_orders";
	}
	@RequestMapping(value = "edit-order.html")
	public String editOrderAdmin() {
		return "ad_edit_order";
	}
	
	@RequestMapping(value = "promotions.html")
	public String listPromotions() {
		return "ad_promotions";
	}
	@RequestMapping(value = "edit-promotion.html")
	public String editPromotionAdmin() {
		return "ad_edit_promotion";
	}
}
