<%@page import="com.baotoan.spring.entity.ShoppingCart"%>
<%@page import="com.baotoan.spring.service.CategoryServiceImpl"%>
<%@page import="com.baotoan.spring.service.CategoryService"%>
<%@page import="com.baotoan.spring.entity.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->
<header class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-3 col-sm-3">
			<div id="header-left">
				<div id="logo">
					<a href="${pageContext.request.contextPath }/index.html">
						<img src="<c:url value='/resources/images/logo.png'/>">
					</a>
				</div>
				<div id="main-menu" data="close">
					<i class="glyphicon glyphicon-list"></i> Danh mục mặt hàng
				</div>
				<div id="menu-content">
					${sessionScope.main_menu }
				</div>
				<script>
					$('#main-menu').click(function() {
						var status = $(this).attr('data');
						if (status == 'close') {
							$('#menu-content').fadeIn(100);
							$(this).attr('data', 'open');
						} else {
							$('#menu-content').fadeOut(100);
							$(this).attr('data', 'close');
						}
					});
				</script>
			</div>
		</div>
		<div class="col-wd-12 col-md-9 col-sm-9">
			<div id="header-right">
				<nav id="menu-hover" class="col-sm-12">
					<ul>
						<li>
							<i class="glyphicon glyphicon-envelope"></i> 
							<a href="${pageContext.request.contextPath}/contact.html?page=1">Góp ý</a>
						</li>
						<li>
							<i class="glyphicon glyphicon-cog"></i> 
							<a href="${pageContext.request.contextPath}/post/dich-vu-thay-loi-nuoc-loc-tai-nha.html">Dịch vụ</a>
						</li>
						<li>
							<i class="glyphicon glyphicon-list-alt"></i> 
							<a href="${pageContext.request.contextPath}/post/news/1/">Tin tức</a>
						</li>
						<li>
							<i class="glyphicon glyphicon-map-marker"></i> 
							<a href="${pageContext.request.contextPath }/post/map/he-thong-sieu-thi.html">Tìm siêu thị</a>
						</li>
					</ul>
				</nav>
				<div id="search-form" class="col-wd-12 col-md-7 col-sm-7">
					<form action="${pageContext.request.contextPath }/product/search.html" method="get">
						<input type="hidden" name="page" value="1"/>
						<input type="text" name="key" placeholder="Nhập nội dung tìm kiếm..." />
						<button id="sbm-search">
							<i class="glyphicon glyphicon-search icon"></i>
						</button>
					</form>
				</div>
				<div id="notify-box" class="col-wd-12 col-md-5 col-sm-5">
					<ul>
						<li class="cart-box">
							<a href="${pageContext.request.contextPath }/cart.html">
								<div class="icon-notify">
								<%
								ShoppingCart shopping = ((ShoppingCart)session.getAttribute("carts"));
								%>
									<span id="count_shopping_cart" style="font-size: 1.2em; color: red;"><%= shopping != null ? shopping.getQuantity() : 0 %></span>
									<i class="glyphicon glyphicon-shopping-cart"></i>
								</div> Giỏ hàng
							</a>
						</li>
						<li class="help-box"><a
							href="${pageContext.request.contextPath }/post/huong-dan-mua-hang.html">
								<div class="icon-notify">
									<i class="glyphicon glyphicon-book"></i>
								</div> Hướng dẫn
						</a></li>
						<li class="support-box"><a
							href="${pageContext.request.contextPath }/post/chinh-sach-ho-tro.html">
								<div class="icon-notify">
									<i class="glyphicon glyphicon-phone-alt"></i>
								</div> Hỗ trợ
						</a></li>
					</ul>
				</div>
				<div id="contact-row" class="col-sm-12">
					<div class="col">
						<ul>
							<li>
								<c:if test="${empty sessionScope.user }">
								<a href="${pageContext.request.contextPath}/user/login.html"><b>Đăng nhập</b></a> hoặc 
								<a href="${pageContext.request.contextPath}/user/registry.html"><b>Đăng ký</b></a>
								</c:if>
								<c:if test="${not empty sessionScope.user }">
									Xin chào 
									<a href="${pageContext.request.contextPath}/user/quan-ly-tai-khoan.html?action=index">
										<b style="color: blue;">${sessionScope.user.lastName }</b>
									</a> | <a href="${pageContext.request.contextPath}/user/logout.html">Đăng xuất</a> 
								</c:if>
							</li>
							<li><i class="glyphicon glyphicon-earphone"></i> 1900.6619 - 0904.881169 (8h15 - 17h30)</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- end header -->