<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<table
	class="table table-striped table-bordered table-hover table-condensed">
	<thead>
		<tr>
			<th>ID</th>
			<th>Tiêu đề</th>
			<th>Ngày cập nhật</th>
			<th>Tình trạng</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="post" items="${requestScope.listPosts }">
			<tr>
				<td>${post.id }</td>
				<td>${post.title }</td>
				<td>${post.publishDate }</td>
				<td>${post.status }</td>
				<th><a href="">Xem</a></th>
				<th>Xóa</th>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="menu-right">
	<ul>${requestScope.pagination }</ul>
</div>