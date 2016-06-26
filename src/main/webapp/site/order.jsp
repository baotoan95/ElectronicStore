<%@page import="java.util.Iterator"%>
<%@page import="com.baotoan.spring.entity.CartItem"%>
<%@page import="java.util.Map"%>
<%@page import="com.baotoan.spring.entity.ShoppingCart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-7 col-sm-7">
			<div class="col">
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="page-content">
						<h3>Thanh toán đơn hàng</h3>
						<div class="line bg-black"></div>
						Bạn sẽ được thông báo về tình trạng đơn hàng qua email và tin
						nhắn.
						<form:form action="order.html" id="orderForm" method="POST" modelAttribute="order">
						<h4>→ Chọn Phương thức vận chuyển</h4>
						<c:forEach var="deliver" items="${delivers }">
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:radiobutton path="delivery" value="${deliver.id }" cssClass="option"/> ${deliver.name }
								<div class="desc-highlight hidden">${deliver.desc }</div>
							</div>
						</div>
						</c:forEach>						
						<div class="line"></div>
						<h4>→ Chọn Hình thức thanh toán</h4>
						<c:forEach var="payment" items="${payments }">
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:radiobutton path="payment" value="${payment.id }" cssClass="option"/> ${payment.name }
								<div class="desc-highlight hidden">${payment.desc }</div>
							</div>
						</div>
						</c:forEach>
						<div class="line"></div>
						<h4>→ Ghi chú cho đơn hàng</h4>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:textarea path="descript" rows="10"/>
							</div>
						</div>
					</form:form>
					<script type="text/javascript">
						$('.option').on('change', function() {
							$('.desc-highlight').attr('class', 'desc-highlight hidden');
							$('.option').filter(':checked').next().attr('class', 'desc-highlight open');
							$('.option').filter(':checked').css('color', 'red');
						});
					</script>
					</div>
				</div>
			</div>
		</div>
		<div class="col-wd-12 col-sm-5 col-md-5">
			<div class="col">
				<div class="box-title">
            		<div class="title bg-green">Thông tin đơn hàng</div>
            		<div class="content" id="cart">
	                	<table>
							<thead>
								<tr>
									<th>Sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá bán</th>
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
									<td><%=cartItem.getProduct().getName() %></td>
									<td><%= cartItem.getQuantity()%></td>
									<td><%= cartItem.getMonetized() %>₫</td>
								</tr>
								<%
								}
								}
								%>
								<tr>
									<td colspan="3"><center>Tổng tiền đơn hàng (* Đã bao gồm VAT ): <%= shopping != null ? shopping.getTotalPay() : 0%>₫</center></td>
								</tr>
								<tr>
									<td colspan="3" class="bg-white"><a href="${pageContext.request.contextPath }/cart.html">Sửa lại</a> đơn hàng, 
									nếu quý khách có nhu cầu đặt thêm hàng hoặc bỏ bớt hàng</td>
								</tr>
							</tbody>
						</table>
					</div>
            	</div>
			</div>
		</div>
		<div class="col-wd-12 col-sm-5 col-md-5">
			<div class="col">
				<div class="box-title">
            		<div class="title bg-green">Giao hàng đến</div>
            		<div class="content">
            			Tên người nhận: ${user.recie_name }<br/>
            			Địa chỉ: ${user.recie_address }<br/>
            			Điện thoại: ${user.recie_phone }<br/>
            			Tỉnh/Thành phố: ${user.recie_province.title }<br/>
            			Xã/Huyện: ${user.recie_district.title }<br/>
            		</div>
            	</div>
        	</div>
		</div>
		<button onclick="javascript:orderForm.submit()" class="btn bg-orange">ĐẶT HÀNG</button>
	</div>
</div>
<!-- end content -->