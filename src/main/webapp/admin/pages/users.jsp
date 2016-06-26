<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<table class="table table-striped table-bordered table-hover table-condensed">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên</th>
			<th>Thành phố</th>
			<th>Điện thoại</th>
			<th>Trạng thái</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="user" items="${requestScope.listUsers }">
			<tr>
				<td>${user.username }</td>
				<td>${user.name }</td>
				<td>${user.city }</td>
				<td>${user.phone }</td>
				<td>${user.status }</td>
				<th><a href="users?ac=edit&u=${user.username }">Xem</a></th>
				<th><a href="#" onclick="delUser('${user.username}', this)">Xóa</a></th>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script type="text/javascript">
	function delUser(user, element) {
		var object = {
			ac : 'del',
			username : user
		};
		$.post('users', object, function(rsp) {
			if (rsp === 'success') {
				$(element).parent().parent().remove();
				notification("Cập nhật thành công!!!", "", "default");
			} else {
				notification("Cập nhật chưa thành công!!!", "", "default");
			}
		});
	}
</script>
<div class="menu-right">
	<ul>${requestScope.pagination }</ul>
</div>