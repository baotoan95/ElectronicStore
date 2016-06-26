<%@page import="com.baotoan.spring.entity.ShoppingCart"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeMap"%>
<%@page import="com.baotoan.spring.entity.CartItem"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- content -->
<div id="content" class="grid">
	<div class="row" id="cart">
		<div class="col-wd-12 col-md-12 col-sm-12">
			<div class="col">
				<c:if test="${empty carts }">Hiện giỏ hàng không có sản phẩm nào...</c:if>
				<c:if test="${not empty carts }">
				<table>
					<thead>
						<tr>
							<th>Hình ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá bán</th>
							<th>Giá tốt</th>
							<th>Tổng cộng</th>
						</tr>
					</thead>
					<tbody>
						<%
						ShoppingCart shopping = ((ShoppingCart)session.getAttribute("carts"));
						if(null != shopping) {
						Map<Integer, CartItem> carts = shopping.getCarts();
						Iterator<Integer> keys = carts.keySet().iterator();
						while(keys.hasNext()) {
							CartItem cartItem = carts.get(keys.next());
						%>
						<tr>
							<td>
								<img src="<c:url value='<%= cartItem.getProduct().getAvatar() %>'/>" />
							</td>
							<td><%=cartItem.getProduct().getName() %></td>
							<td>
								<input data="<%= cartItem.getProduct().getId() %>" type="number" min="0" value="<%= cartItem.getQuantity()%>"> 
							</td>
							<td><%= cartItem.getProduct().getPrice() %> đ</td>
							<td>0₫</td>
							<td class="payItem"><%= cartItem.getMonetized() %>₫</td>
						</tr>
						<%
						}
						}
						%>
						<tr>
							<td colspan="5">Tổng tiền đơn hàng (* Đã bao gồm VAT )</td>
							<td id="totalPay"><%= shopping != null ? shopping.getTotalPay() : 0%>₫</td>
						</tr>
						<tr>
							<td colspan="6" class="red">→ Miễn phí vận chuyển nội thành Hà Nội với đơn hàng trên 200.000 vnđ</td>
						</tr>
					</tbody>
				</table>
				<script type="text/javascript">
					$('input[type=number]').on('change blur', function(e) {
						var item = $(this);
						var value = $(this).val();
						var object = {prodId: $(this).attr('data'), quantity: value};
						if(value >= 100) {
				  			alert("Bạn chỉ được mua số lượng tối đa 99 cho mỗi sản phẩm");
				  			return;
				  		}
				  		$.get('cart.html/update', object, function(rsp){
				  			if(rsp.status === 'update') {
				  				item.parent().parent().find('.payItem').html(rsp.payItem + "₫");
				  				$('#totalPay').html(rsp.totalPay + "₫");
				  			} else if(rsp.status === 'delete') {
				  				item.parent().parent().remove();
				  				item.parent().parent().find('.payItem').html(rsp.totalPay + "₫");
				  				$('#totalPay').html(rsp.totalPay + "₫");
				  			} else {
				  				alert('Có lỗi');
				  			}
						});
					});
				</script>
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col">
						<a class="btn bg-green uppercase" href="${pageContext.request.contextPath}/order.html">Thực hiện đặt hàng</a>
					</div>
				</div>
				</c:if>
				<div class="col-wd-12 col-md-12 col-sm-12 line"></div>
				<div class="col-wd-12 col-md-12 col-sm-12">
						<p>
							Bạn cần hỗ trợ? Gọi Hotline <b>0904.881169</b> hoặc <b>1900.6619</b>
						</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end content -->