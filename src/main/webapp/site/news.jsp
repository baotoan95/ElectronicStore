<%@page import="java.util.List"%>
<%@page import="com.baotoan.spring.entity.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-7 col-sm-7" style="margin-top: 10px;">
			<%
				@SuppressWarnings("unchecked")
				List<Post> posts = (List<Post>) request.getAttribute("posts");
				for (Post post : posts) {
			%>
			<div class="col-wd-12 col-md-12 col-sm-12">
				<div class="col">
					<div class="news-box">
						<div class="news-banner">
							<img src="<c:url value='<%=post.getBanner()%>' />" />
						</div>
						<div class="news-content">
							<div class="news-title">
								<a
									href='${pageContext.request.contextPath}/post/read/<%= post.getSlug() %>'><%=post.getName()%></a>
							</div>
							<div class="date">
								<i class="glyphicon glyphicon-time"></i>
								<%=post.getPublishesDate()%>
							</div>
							<div class="news-desc">
								<%=post.getDesc()%>
							</div>
							<div class="news-redir">
								<a
									href='${pageContext.request.contextPath}/post/read/<%= post.getSlug() %>'>Đọc
									tiếp →</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>
			<div class="col-wd-12 col-md-12 col-sm-12">
				<div class="col">
					<div class="pagination">
						<ul>
							<%=request.getAttribute("htmlCode")%>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="col-wd-12 col-md-5 col-sm-5">
			<div class="box-non-title">
				<div class="col-wd-6 col-md-6 col-sm-6">
					<a
						href="${pageContext.request.contextPath }/post/mua-hang-tra-gop-tai-picovn.html">
						<div class="col">
							<div class="btn-redirect bg-green">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Trả góp</div>
								<div class="redir-desc">Mua hàng tại Pico.vn</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-wd-6">
					<a href="${pageContext.request.contextPath}/contact.html">
						<div class="col">
							<div class="btn-redirect bg-gray">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Khách hàng</div>
								<div class="redir-desc">Góp ý</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-wd-6 col-md-6 col-sm-6">
					<a href="${pageContext.request.contextPath }/the-thanh-vien.html">
						<div class="col">
							<div class="btn-redirect bg-purple">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Thẻ</div>
								<div class="redir-desc">Thành viên</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-wd-6 col-md-6 col-sm-6">
					<a href="${pageContext.request.contextPath}/post/news/1/">
						<div class="col">
							<div class="btn-redirect bg-orange">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Tin tức</div>
								<div class="redir-desc">Công nghệ và đời sống</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-wd-6 col-md-6 col-sm-6">
					<a
						href="${pageContext.request.contextPath }/thong-tin-tuyen-dung.html">
						<div class="col">
							<div class="btn-redirect bg-red">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Tuyển dụng</div>
								<div class="redir-desc">Nhân tài</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-wd-6 col-md-6 col-sm-6">
					<a
						href="${pageContext.request.contextPath}/post/dich-vu-thay-loi-nuoc-loc-tai-nha.html">
						<div class="col">
							<div class="btn-redirect bg-blue">
								<div class="redir-icon">
									<i class="glyphicon glyphicon-fire"></i>
								</div>
								<div class="redir-name">Dịch vụ</div>
								<div class="redir-desc">Sửa chữa chu đáo</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end content -->