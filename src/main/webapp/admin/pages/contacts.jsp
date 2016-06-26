<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty requestScope.contacts }">
	<div class="error">Không có phản hồi nào</div>
</c:if>
<c:if test="${not empty requestScope.contacts }">
	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>Tên</th>
				<th>Email</th>
				<th>Điện thoại</th>
				<th>Ngày gửi</th>
				<th>Xem</th>
				<th>Xóa</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="contact" items="${requestScope.contacts }">
				<tr>
					<td>${contact.name }</td>
					<td>${contact.email }</td>
					<td>${contact.phone }</td>
					<td>${contact.sentDate }</td>
					<th><a href="contacts?ac=view&id=${contact.id }"><i class="glyphicon glyphicon-list-alt"></i></a></th>
					<th><i id="${contact.id }" onclick="del(this)" class="glyphicon glyphicon-trash delete"></i></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script type="text/javascript">
		function del(element) {
			var object = {
				id : $(element).attr('id'),
				ac : 'del'
			};
			$
					.get(
							'contacts',
							object,
							function(rsp) {
								if (rsp == 'success') {
									$(element).parent().parent().remove();
									if ($('table').size() == 1) {
										$('table').remove();
										$('.menu-right').remove();
										$('.content')
												.append(
														"<div class='error'>Không có phản hồi nào</div>")
									}
								} else {
									notification("Lỗi hệ thống", "", "default");
								}
							});
		}
	</script>
	<div class="menu-right">
		<ul>
			<%=request.getAttribute("pagination")%>
		</ul>
	</div>
</c:if>