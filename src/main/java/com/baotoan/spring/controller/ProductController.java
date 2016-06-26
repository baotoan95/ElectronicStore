package com.baotoan.spring.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.baotoan.spring.entity.ImageProduct;
import com.baotoan.spring.entity.Product;
import com.baotoan.spring.entity.ProductDetail;
import com.baotoan.spring.service.CategoryService;
import com.baotoan.spring.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/gia-re-moi-ngay.html")
	public String price_sock(ModelMap model) {
		return "price_sock";
	}
	
	@RequestMapping(value = "/{slug}", method = RequestMethod.GET)
	public String listProducts(@PathVariable("slug") String slug, ModelMap model) {
		Product product = productService.getProductBySlug(slug + ".html");
		List<ProductDetail> details = new ArrayList<ProductDetail>(product.getProductDetails());
		Collections.sort(details, new Comparator<ProductDetail>() {
			public int compare(ProductDetail o1, ProductDetail o2) {
				return o1.getDigital().getGroupDigital().getName().compareToIgnoreCase(o2.getDigital().getGroupDigital().getName());
			}
		});
		List<ImageProduct> images = new ArrayList<ImageProduct>(product.getImageProducts());
		model.put("suggest", productService.getSuggests(product.getPrice(), 5));
		model.put("images", images);
		model.put("details", details);
		model.put("product", product);
		return "preview";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "search.html", method = RequestMethod.GET)
	public String search(@RequestParam(value = "key", required = false) String key,
			@RequestParam(value = "page", required = false) int page, ModelMap model) {
		Map<String, Object> result = productService.searchBy(ProductService.BY_SEARCH, key, page == 0 ? 1 : page, 30, 5);
		List<Product> products = (List<Product>)result.get("products");
		model.put("products", products);
		model.put("htmlCode", ((String)result.get("htmlCode")).replaceAll("#before", "search.html?page=").replaceAll("#after", "&key=" + key));
		model.put("key", key);
		return "result";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/{parentId}/{page}/", method = RequestMethod.GET)
	public String productsByCateParent(@PathVariable(value="parentId") int parentId, @PathVariable(value="page") int page, ModelMap model) {
		Map<String, Object> result = productService.searchBy(ProductService.BY_CATE_PARENT, parentId, page, 30, 5);
		List<Product> products = (List<Product>)result.get("products");
		model.put("products", products);
		model.put("htmlCode", ((String)result.get("htmlCode")).replaceAll("#before", "/ElectronicStore/product/" + parentId + "/").replaceAll("#after", "/"));
		model.put("key", categoryService.getCategoryById(parentId).getName());
		return "result";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/filter/{id}/{page}/", method = RequestMethod.GET)
	public String productsByCate(@PathVariable(value="id") int id, @PathVariable(value="page") int page, ModelMap model) {
		Map<String, Object> result = productService.searchBy(ProductService.BY_CATE, id, page, 30, 5);
		List<Product> products = (List<Product>)result.get("products");
		model.put("products", products);
		model.put("htmlCode", ((String)result.get("htmlCode")).replaceAll("#before", "/ElectronicStore/product/filter/" + id + "/").replaceAll("#after", "/"));
		model.put("key", categoryService.getCategoryById(id).getName());
		return "result";
	}
	
}
