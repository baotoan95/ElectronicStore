<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên sản phẩm</th>
			<th>Dung lượng</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<%
			//                 	ProductDAO proDAO = new ProductDAOImpl();
			//                 	Order order = (Order)request.getAttribute("order");
			//                 	List<OrderDetail> listOrderDetail = order.getListOrderDetails();
			//                 	int count = 1;
			//                 	for(OrderDetail ord : listOrderDetail) {
		%>
		<tr>
			<%--                     	<td><%= count++ %></td> --%>
			<%--                 		<td><%= proDAO.getProductById(ord.getProduct().getProductId()).getName() %></td> --%>
			<%--                 		<td><%= ord.getProduct().getCapacity() %></td> --%>
			<%--                 		<td><%= ord.getQuantity() %></td> --%>
			<%--                 		<td><%= ord.getPay() %></td> --%>
			<!--                         <th><a href="">Xem</a></th> -->
			<th>Xóa</th>
		</tr>
		<%
			//                 	}
		%>
	</tbody>
</table>
<div class="form-group">
	<label class="control-label" for="title">Tên</label> 
	<input type="text" class="form-control" id="title" name="title" value="">
</div>
<div class="form-group">
	<label class="control-label" for="author">Ngày giao</label> 
	<input type="text" class="form-control" id="author" name="author" value="">
</div>
<div class="form-group">
	<label class="control-label" for="author">Số điện thoại</label> 
	<input type="text" class="form-control" id="author" name="author" value="">
</div>
<div class="form-group">
	<label class="control-label" for="author">Địa chỉ</label> 
	<input type="text" class="form-control" id="author" name="author" value="">
</div>
<div class="form-group">
	<label class="control-label" for="author">Phương thức thanh toán</label> 
	<select class="form-control">
		<option>Trực tiếp với người giao hàng</option>
		<option>Tại cửa hàng</option>
		<option>Ngân lượng</option>
	</select>
</div>
<button id="save" class="btn btn-default">Lưu</button>
<span id="message"></span>
<script type="text/javascript">
			  	$('#save').click(function(e) {
			  		var content = CKEDITOR.instances.editor.getData();
			  		var name = $('#title').val();
			  		var status = $('#status').val();
			  		
			  		var object = {ac: "save", name: name, status: status, id:, content: content};
			  		
			  		$.post('infor', object, function(rsp){
						$('#message').html(rsp.message);
					});
			  	});
</script>