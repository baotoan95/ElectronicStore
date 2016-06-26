<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<div class="form-group">
	<label for="name">Tên thể loại</label> <select class="form-control"
		id="brand" name="brand">
		<c:forEach var="brand" items="${requestScope.rands }">
			<option value="${brand.id }"
				${brand.id == requestScope.category.brand.id ? "selected" : "" }>${brand.name }</option>
		</c:forEach>
	</select> <input type="hidden" id="cateId" name="cateId"
		value="${requestScope.category.id }">
</div>
<div class="form-group">
	<label for="intended">Dành cho</label> <select class="form-control"
		id="intended" name="intended">
		<c:forEach var="intended" items="${requestScope.intendeds }">
			<option value="${intended.id }"
				${intended.id == requestScope.category.intended.id ? "selected" : "" }>${intended.name }</option>
		</c:forEach>
	</select>
</div>
<button id="save"
	action='${not empty requestScope.category ? "save" : "add" }'
	class="btn btn-default">Lưu</button>
<span id="message"></span>
<script type="text/javascript">
	$('#save').click(function(e) {
		var brand = $('#brand').val();
		var intended = $('#intended').val();
		var action = $(this).attr('action');
		var cateId = $('#cateId').val();

		var object = {
			ac : action,
			brand : brand,
			intended : intended,
			cateId : cateId
		};

		$.post('categories', object, function(rsp) {
			if (rsp === 'ok') {
				notification("Cập nhật thành công", "", "default");
			} else {
				notification("Cập nhật chưa thành công", "", "default");
			}
		});
	});
</script>