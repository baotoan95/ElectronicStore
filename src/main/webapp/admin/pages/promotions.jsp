<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<table
	class="table table-striped table-bordered table-hover table-condensed">
	<thead>
		<tr>
			<th>ID</th>
			<th>Banner</th>
			<th>Tiêu đề</th>
			<th>Ngày bắt đầu</th>
			<th>Ngày kết thúc</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="promotion" items="${requestScope.listPromotions }">
			<tr>
				<td>${promotion.id }</td>
				<td><img class="img-responsive img-small"
					src="resources/${promotion.imageUrl }"></td>
				<td>${promotion.title }</td>
				<td>${promotion.startDate }</td>
				<td>${promotion.endDate }</td>
				<th><a href="promotions?ac=w&id=${promotion.id }">Xem</a></th>
				<th><a href="">Xóa</a></th>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="menu-right">
	<ul>${requestScope.pagination }</ul>
</div>