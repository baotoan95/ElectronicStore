<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th>ID</th>
			<th>Tên thể loại</th>
			<th>Dành cho</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="category" items="${requestScope.listCategories }">
			<tr style="height: 20px;">
				<td>${category.id }</td>
				<td>${category.brand.name }</td>
				<td>${category.intended.name }</td>
				<th><a href="categories?ac=w&id=${category.id }">Xem</a></th>
				<th><a href="#" onclick="delCate(${category.id}, this)">Xóa</a></th>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script type="text/javascript">
					function delCate(cateId, element) {
						var object = {ac: "del", cateId: cateId};
				  		
				  		$.get('categories', object, function(rsp){
				  			if(rsp === 'ok') {
				  				$(element).parent().parent().remove();
								notification("Cập nhật thành công", "", "default");
				  			} else {
				  				notification("Cập nhật chưa thành công", "", "default");
				  			}
						});
					}
				</script>
<div class="menu-right">
	<ul>${requestScope.pagination }</ul>
</div>
