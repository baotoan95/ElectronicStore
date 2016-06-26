package com.baotoan.spring.filter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.baotoan.spring.entity.Category;
import com.baotoan.spring.service.CategoryService;

public class MenuGenerateFilter implements HandlerInterceptor {
	@Autowired
	private CategoryService categoryService;
	String nav = "";

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object, Exception modelAndView)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object object, ModelAndView modelAndView) throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		HttpSession session = request.getSession();
		String menu = (String)session.getAttribute("main_menu");
		if(menu == null) {
			nav = "";
			getMenu(0, 0);
			session.setAttribute("main_menu", nav.substring(0, nav.length() - 5));
		}
		return true;
	}
	
	private void getMenu(int parentID, int level) {
		List<Category> rs = categoryService.getCategoryByParentId(parentID);
		level++;
		if (rs.size() > 0) {
			nav += "<ul class='level-" + (level - 1) + "'>";
			for (Category item : rs) {
				String cless = "";
				cless = "item-level-" + (level - 1);
				if(level-1 == 0) {
					List<Category> list = categoryService.getCategoryByParentId(item.getCateId());
					String childrent = "";
					if(rs.size() <= 2) {
						for (int i = 0; i < list.size(); i++) {
							childrent += "<a href='/ElectronicStore/product/" + list.get(i).getCateId() + "/1/'>"+list.get(i).getName()+"</a> ";
						}
					} else {
						for (int i = 0; i < 2; i++) {
							childrent += "<a href='/ElectronicStore/product/" + list.get(i).getCateId() + "/1/'>" + list.get(i).getName()+"</a> ";
						}
					}
					
					nav += "<li class='" + cless + "'>";
					nav += "<div class='icon'><img src=\"/ElectronicStore"+ item.getAvatar() +"\"></div>"
						+ "<div class='name'><a href='/ElectronicStore/cate/"+ item.getSlug() +"'>" + item.getName() + "</a></div>"
						+ "<div class='desc'>" + (rs.get(0) != null ? childrent : "") + "</div>";
				} else {
					if(level - 1 == 1) {
						nav += "<li class='" + cless + "'><a href='/ElectronicStore/product/" + item.getCateId() + "/1/'>" + item.getName() + "</a>";
					} else {
						nav += "<li class='" + cless + "'><a href='/ElectronicStore/product/filter/" + item.getCateId() + "/1/'>" + item.getName() + "</a>";
					}
				}
				getMenu(item.getCateId(), level);
			}
			nav += "</ul></li>";
		} else {
			nav += "</li>";
		}
	}

}
