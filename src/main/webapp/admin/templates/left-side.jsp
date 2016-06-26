<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img
					src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
					class="img-circle" alt="User Image" />
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search..." /> 
				<span class="input-group-btn">
					<button type="submit" name="search" id="search-btn" class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview">
				<a href="#"> 
					<i class="fa fa-dashboard"></i>
					<span>Quản lý sản phẩm</span> 
					<i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li class="active"><a href="${pageContext.request.contextPath }/admin/products.html"><i class="fa fa-circle-o"></i>Danh sách sản phẩm</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-product.html"><i class="fa fa-circle-o"></i>Thêm sản phẩm</a></li>
				</ul>
			</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i><span>Quản lý bài viết</span><i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath }/admin/posts.html"><i class="fa fa-circle-o"></i>Danh sách bài viết</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-post.html"><i class="fa fa-circle-o"></i>Viết bài</a></li>
				</ul>
			</li>
			<li class="treeview"><a href="#"><i class="fa fa-dashboard"></i><span>Quản lý người dùng</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li class="active"><a href="${pageContext.request.contextPath }/admin/users.html"><i class="fa fa-circle-o"></i>Danh sách người dùng</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-user.html"><i class="fa fa-circle-o"></i>Thêm người dùng</a></li>
				</ul>
			</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>Danh mục sản phẩm</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath }/admin/categories.html"><i class="fa fa-circle-o"></i>Danh sách danh mục</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-category.html"><i class="fa fa-circle-o"></i>Thêm danh mục</a></li>
				</ul>
			</li>

			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>Chính sách khuyến mãi</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath }/admin/promotions.html"><i class="fa fa-circle-o"></i>Danh sách khuyến mãi</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-promotion.html"><i class="fa fa-circle-o"></i>Thêm khuyến mãi</a></li>
				</ul>
			</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>Quản lý đơn hàng</span> <i class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath }/admin/orders.html"><i class="fa fa-circle-o"></i>Danh sách đơn hàng</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/edit-order.html"><i class="fa fa-circle-o"></i>Đơn hàng chưa duyệt</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/admin/contacts.html"> <i class="fa fa-th"></i> <span>Người dùng phản hồi</span> <small class="label pull-right bg-green">5</small></a>
			</li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>