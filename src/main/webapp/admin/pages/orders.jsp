<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<%
// 	if (((List<Order>) request.getAttribute("listOrders")).size() > 0) {
%>
<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th>ID</th>
			<th>Tên</th>
			<th>Số điện thoại</th>
			<th>Ngày đặt</th>
			<th>Tổng tiền</th>
			<th>Trạng thái</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="order" items="${requestScope.listOrders }">
			<tr>
				<td>${order.id }</td>
				<td>${order.name }</td>
				<td>${order.phone }</td>
				<td>${order.createDate }</td>
				<td>${order.totalPay }VND</td>
				<td>${order.status.name }</td>
				<th><a
					href="${pageContext.request.contextPath }/admin/orders?ac=edit&id=${order.id}">Xem</a></th>
				<th>Xóa</th>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="menu-right">
	<ul>${requestScope.pagination }</ul>
</div>
<%
// 	} else {
%>
<div class="error">Trống</div>
<%
// 	}
%>