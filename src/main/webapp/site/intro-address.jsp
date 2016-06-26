<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-12 col-sm-12 bg-white">
			<div class="col">
				<div class="page-content">
					<h3 id="title">HỆ THỐNG SIÊU THỊ ĐIỆN MÁY PICO ${post.name }</h3>
					<div class="col-wd-12 col-md-3 col-sm-3">
						<div class="box-title">
							<div class="content">
								<ul>
									<c:forEach var="address" items="${address }">
									<li><i class="glyphicon glyphicon-circle-arrow-right"></i>
										<a href="${pageContext.request.contextPath }/post/map/${address.slug}">${address.name }</a>
									</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-wd-12 col-md-9 col-sm-9">
						${post.content }
					</div>
				</div>
			</div>
		</div>
	</div>
</div>