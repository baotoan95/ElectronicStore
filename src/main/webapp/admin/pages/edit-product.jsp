<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<form id="form-ajax" action="product" method="post"
	enctype="multipart/form-data">
	<div class="form-group">
		<label for="title">Tên</label> <input type="text" class="form-control"
			id="title" name="title" value="${requestScope.product.name }">
	</div>
	<div class="form-group">
		<label for="category">Thể loại</label> <select id="category"
			name="category" class="form-control">
			<c:forEach var="brand" items="${requestScope.listBrands }">
				<option value="${brand.id }">${brand.name }</option>
			</c:forEach>
		</select>
	</div>
	<div class="form-group">
		<label for="intended">Dành cho</label> <select id="intended"
			name="intended" class="form-control">
			<c:forEach var="intended" items="${requestScope.listIntendeds }">
				<option value="${intended.id }">${intended.name }</option>
			</c:forEach>
		</select>
	</div>
	<div class="form-group">
		<label for="promotion">Khuyến mãi</label> <select id="promotion"
			name="promotion" class="form-control">
			<option value="">Không áp dụng</option>
			<c:forEach var="promotion" items="${requestScope.listPromotions }">
				<option value="${promotion.id }">${promotion.title }</option>
			</c:forEach>
		</select>
	</div>
	<c:if test="${not empty requestScope.product.updateDay }">
		<div class="form-group">
			<label for="date">Ngày cập nhật</label> <input type="text"
				class="form-control" id="date" name="date"
				value="${requestScope.product.updateDay }" disabled="disabled">
		</div>
		<input type="hidden" value="add" name="ac">
	</c:if>
	<c:if test="${empty requestScope.product.updateDay }">
		<input type="hidden" value="edit" name="ac">
	</c:if>
	<div class="form-group">
		<label for="desc">Mô tả</label>
		<textarea class="ckeditor" name="desc"></textarea>
	</div>
	<div class="form-group">
		<label for="gift">Là bộ quà tặng</label> <select class="form-control"
			id="gift" name="gift">
			<option value="false">Không</option>
			<option value="true">Có</option>
		</select>
	</div>
	<div class="form-group">
		<label for="avatar">Hình ảnh</label> <input type="file" id="avatar"
			name="avatar" class="form-control">
	</div>
	<div class="form-group">
		<label>Loại sản phẩm</label>
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th>ID</th>
					<th>Hình mẫu</th>
					<th>Dung tích</th>
					<th>Giá TGNH</th>
					<th>Giá thị trường</th>
					<th>Xem/Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="proDetail"
					items="${requestScope.product.listDetail }">
					<tr>
						<td><input>${proDetail.id }</td>
						<td><img class="img-responsive img-small"
							src="${pageContext.request.contextPath }/resources/${proDetail.imageUrl}"></td>
						<td>${proDetail.capacity }</td>
						<td>${proDetail.price }</td>
						<td>${proDetail.market_price }</td>
						<th><a href="product?ac=w&id="><i
								class="glyphicon glyphicon-list-alt"></i></a></th>
						<th><a href=""><i class="glyphicon glyphicon-trash"></i></a></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="button" value="Thêm loại" onclick="addRow();">
	</div>
	<input onclick="submit" value="Hoàn thành" class="btn btn-default"><span
		id="message"></span>
</form>

<script type="text/javascript">
	function smForm() {
		$('#form-ajax').ajaxForm({
			success : function(msg) {
				alert("File has been uploaded successfully");
			},
			error : function(msg) {
				alert("Couldn't upload file");
			}
		});
	};
	function addRow() {
		var count = $('table tr').size();
		var row = "<tr>"
				+ "<td>"
				+ count
				+ "</td>"
				+ "<td><input name='avatar' type=\"file\"/></td>"
				+ "<td><input name='capacity'></td>"
				+ "<td><input name='price'></td>"
				+ "<td><input name='marketPrice'></td>"
				+ "<th><a href=\"product?ac=w&id=\"><i class=\"glyphicon glyphicon-list-alt\"></i></a></th>"
				+ "<th><a href=\"\"><i class=\"glyphicon glyphicon-trash\"></i></a></th>"
				+ "</tr>";
		$('table').append(row);
	}
</script>