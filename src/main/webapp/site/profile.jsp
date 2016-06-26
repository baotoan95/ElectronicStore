<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<!-- Left side -->
		<aside class="col-wd-12 col-md-3 col-sm-3">
			<div class="col">
				<div class="box-title">
					<div class="title bg-orange">Tài khoản của bạn</div>
					<div class="content">
						<ul>
							<li><a href="${pageContext.request.contextPath }/user/quan-ly-tai-khoan.html?action=index">Quản lý tài khoản</a></li>
							<li><a href="${pageContext.request.contextPath }/user/quan-ly-tai-khoan.html?action=edit">Thông tin tài khoản</a></li>
							<li><a href="${pageContext.request.contextPath }/user/quan-ly-tai-khoan.html?action=address">Sổ địa chỉ</a></li>
							<li><a href="${pageContext.request.contextPath }/transaction?action=index">Lịch sử giao dịch</a></li>
						</ul>
					</div>
				</div>
			</div>
		</aside>
		<!-- End left side -->

		<section class="col-wd-12 col-md-9 col-sm-9">
			<div class="col">
				<h4 class="uppercase">${title }</h4>
				<div class="line bg-black"></div>
				<!-- Start account index page -->
				<c:if test="${action eq 'index' }">
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col">
					Xin chào, <b>${user.lastName }</b><br />
					Trong mục quản lý tài
					khoản, bạn có thể xem các hoạt động gần đây của bạn cũng như quản
					lý thông tin tài khoản. Chọn một link bên dưới để xem hay chỉnh sửa
					thông tin.
					</div>
				</div>
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div class="box-title">
								<div class="title bg-blue">Thông tin liên hệ</div>
								<div class="content">
									Họ tên: ${user.firstName } ${user.lastName }<br/>
									Email: ${user.email }<br/>
									<a href="quan-ly-tai-khoan.html?action=password">Thay đổi mật khẩu</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div class="box-title">
								<div class="title bg-blue">Nhận bản tin</div>
								<div class="content">
									
								</div>
							</div>
						</div>
					</div>
					</div>
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div class="box-title">
								<div class="title bg-red">Địa chỉ thanh toán mặc định</div>
								<div class="content">
									Người thanh toán: ${user.pay_name }<br/>
									Điện thoại: ${user.pay_phone }<br/>
									Địa chỉ: ${user.pay_address }<br/>
									Huyện/Tỉnh: ${user.pay_district.title } - ${user.pay_province.title }
									<p class="align-right"><a href="user/quan-ly-tai-khoan.html?action=address">Chỉnh sửa</a></p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div class="box-title">
								<div class="title bg-red">Địa chỉ giao hàng mặc định</div>
								<div class="content">
									Người nhận: ${user.recie_name }<br/>
									Điện thoại: ${user.recie_phone }<br/>
									Địa chỉ: ${user.recie_address }<br/>
									Huyện/Tỉnh: ${user.recie_district.title } - ${user.recie_province.title }
									<p class="align-right"><a href="quan-ly-tai-khoan.html?action=address">Chỉnh sửa</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<!-- End account index page -->
				
				<!-- Start account edit address -->
				<c:if test="${action eq 'address' }">
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div style="display: ${not empty requestScope.message ? 'block;' : 'none;'}">
						<div class="box-title">
							<div class="bg-green" style="padding: 10px;">${requestScope.message }</div>
						</div>
					</div>
					<div
						style="display: ${not empty requestScope.error ? 'block;' : 'none;'}">
						<div class="box-title">
							<div class="bg-red" style="padding: 10px;">${requestScope.error }</div>
						</div>
					</div>
					<form:form action="quan-ly-tai-khoan.html" method="POST" modelAttribute="user">
					<input type="hidden" name="action" value="${action }"/>
					<div class="col">
						<div class="page-content">
							<b>Địa chỉ thanh toán mặc định</b>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Tên đầy đủ</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="pay_name"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Điện thoại</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="pay_phone"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Địa chỉ</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="pay_address"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Tỉnh/Thành phố</label>
									<div class="col-md-9 col-sm-9 custom-label">
										<form:select path="pay_province">
											<form:options items="${provinces }" itemLabel="title" itemValue="id"/>
										</form:select>
									</div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Quận/Huyện</label>
									<div class="col-md-9 col-sm-9 custom-label">
										<form:select path="pay_district">
											<form:options items="${districts }" itemLabel="title" itemValue="id"/>
										</form:select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="page-content">
							<b>Địa chỉ giao hàng mặc định</b>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Tên đầy đủ</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="recie_name"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Điện thoại</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="recie_phone"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Địa chỉ</label>
									<div class="col-md-9 col-sm-9 custom-label"><form:input path="recie_address"/></div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Tỉnh/Thành phố</label>
									<div class="col-md-9 col-sm-9 custom-label">
										<form:select path="recie_province">
											<form:options items="${provinces }" itemLabel="title" itemValue="id"/>
										</form:select>
									</div>
								</div>
							</div>
							<div class="col-wd-12 col-md-12 col-sm-12">
								<div class="col">
									<label class="col-md-3 col-sm-3 custom-label">Quận/Huyện</label>
									<div class="col-md-9 col-sm-9 custom-label">
										<form:select path="recie_district">
											<form:options items="${districts }" itemLabel="title" itemValue="id"/>
										</form:select>
									</div>
								</div>
							</div>
							<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
							<div class="col">
								<input type="submit" value="LƯU THÔNG TIN" class="btn bg-orange">
							</div>
						</div>
					</div>
					</form:form>
				</div>
				</c:if>
				<!-- End account edit address -->
				
				<c:if test="${action eq 'trans' }">
				<!-- Start history order -->
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div id="cart">
						<table>
							<tr>
								<td colspan="3" class="red"><b>${numOfOrders } đơn hàng</b></td>
							</tr>
							<c:forEach var="order" items="${orders }">
							<tr>
								<td>Đơn hàng #: ${order.id }</td>
								<td class="align-center"><a href="${pageContext.request.contextPath }/transaction?action=view&k=${order.id}">Xem đơn hàng</a> | <a href="#">In đơn hàng</a></td>
								<td class="align-center">Ngày ${order.orderDate }</td>
							</tr>
							</c:forEach>
						</table>
					</div>					
				</div>
				<!-- End history order -->
				</c:if>
				
				<c:if test="${action eq 'trans_view' }">
				<!-- View trans -->
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col">
						<div id="cart" class="box-title">
							<div class="title bg-blue">Thông tin đơn hàng</div>
							<table>
								<tr>
									<td width="20%" class="bg-dgray">Đơn hàng</td>
									<td>#${order.id }</td>
								</tr>
								<tr>
									<td class="bg-dgray">Đặt hàng lúc</td>
									<td>${order.orderDate }</td>
								</tr>
								<tr>
									<td class="bg-dgray">Trạng thái đơn hàng</td>
									<td>${order.status }</td>
								</tr>
								<tr>
									<td class="bg-dgray">HT thanh toán</td>
									<td>${order.payment.name }</td>
								</tr>
								<tr>
									<td class="bg-dgray">HT vận chuyển</td>
									<td>${order.delivery.name }</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div id="cart" class="box-title">
								<div class="title bg-blue">Địa chỉ thanh toán</div>
								<table>
									<tr>
										<td width="30%" class="bg-dgray">Họ tên</td>
										<td>${order.payName }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Điện thoại</td>
										<td>${order.payPhone }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Địa chỉ</td>
										<td>${order.payAddress }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Tỉnh/Thành phố</td>
										<td>${order.payProvince.title }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Quận/Huyện</td>
										<td>${order.payDistrict.title }</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-wd-12 col-md-6 col-sm-6">
						<div class="col">
							<div id="cart" class="box-title">
								<div class="title bg-blue">Thông tin nhận hàng</div>
								<table>
									<tr>
										<td width="30%" class="bg-dgray">Họ tên</td>
										<td>${order.recieName }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Điện thoại</td>
										<td>${order.reciePhone }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Địa chỉ</td>
										<td>${order.recieAddress }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Tỉnh/Thành phố</td>
										<td>${order.recieProvince.title }</td>
									</tr>
									<tr>
										<td class="bg-dgray">Quận/Huyện</td>
										<td>${order.recieDistrict.title }</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div id="cart" class="col">
						<table>
							<thead>
								<tr>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá bán</th>
									<th>Tổng cộng</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="orderDetail" items="${order.orderDetails }">
								<tr>
									<td>${orderDetail.product.name }</td>
									<td>${orderDetail.quantity }</td>
									<td>${orderDetail.product.price } đ</td>
									<td>${orderDetail.monetized } ₫</td>
								</tr>
								</c:forEach>
								<tr>
									<td colspan="3">Tổng tiền đơn hàng (* Đã bao gồm VAT )</td>
									<td class="red">${order.monetized } ₫</td>
								</tr>
								<tr>
									<td colspan="4" class="red">→ Miễn phí vận chuyển nội thành Hà Nội với đơn hàng trên 200.000 vnđ</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- End view trans -->
				</c:if>
				
				<c:if test="${!(action eq 'index') and !(action eq 'address') and !(action eq 'trans') and !(action eq 'trans_view')}">
					<div class="col-wd-12 col-md-12 col-sm-12">
						<div style="display: ${not empty requestScope.message ? 'block;' : 'none;'}">
						<div class="box-title">
							<div class="bg-green" style="padding: 10px;">${requestScope.message }</div>
						</div>
					</div>
					<div style="display: ${not empty requestScope.error ? 'block;' : 'none;'}">
						<div class="box-title">
							<div class="bg-red" style="padding: 10px;">${requestScope.error }</div>
						</div>
					</div>
					<div class="page-content">
					<form:form action="quan-ly-tai-khoan.html" method="POST" modelAttribute="user">
					<input type="hidden" name="action" value="${action }"/>
					<!-- Start account edit password -->
					<c:if test="${action eq 'password' }">
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<label class="col-md-2 col-sm-2 custom-label">Mật khẩu cũ</label>
							 	<div class="col-md-10 col-sm-10"><input type="password" name="passOld"></div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<label class="col-md-2 col-sm-2 custom-label">Mật khẩu mới</label>
							 	<div class="col-md-10 col-sm-10"><input type="password" name="passNew"></div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<label class="col-md-2 col-sm-2 custom-label">Nhập lại mật khẩu</label>
							 	<div class="col-md-10 col-sm-10"><input type="password" name="passNewAgain"></div>
						 	</div>
						</div>
						<br/><br/><br/><br/><br/><br/><br/><br/>
						<div class="col">
							<input type="submit" value="LƯU MẬT KHẨU" class="btn bg-orange">
						</div>
					</c:if>
					<!-- End account edit password -->
					
					<!-- Start account edit address -->
					<c:if test="${action eq 'edit' }">
						<div class="col-wd-12 col-md-12 col-sm-12">
							<label class="col-md-3 col-sm-3 custom-label">Email liên hệ</label>
						 	<div class="col-md-9 col-sm-9 custom-label">&ensp;<b>${user.email }</b></div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col-md-3 col-sm-3 custom-label">Họ và tên</div>
							<div class="col-wd-12 col-md-9 col-sm-9">
							 	<div class="col-md-6 col-sm-6"><div class="col"><form:input path="firstName"/></div></div>
							 	<div class="col-md-6 col-sm-6"><div class="col"><form:input path="lastName"/></div></div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<label class="col-md-3 col-sm-3 custom-label">Giới tính</label>
						 	<div class="col-md-9 col-sm-9">
						 		<div class="col">
						 		<form:select path="gender">
						 			<form:option value="0">Nữ</form:option>
						 			<form:option value="1">Nam</form:option>
						 		</form:select>
						 		</div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<label class="col-md-3 col-sm-3 custom-label">Sử dụng thẻ ngân hàng</label>
						 	<div class="col-md-9 col-sm-9">
						 		<div class="col">
						 		<form:select path="bank">
						 			<form:options items="${ banks}" itemLabel="name" itemValue="id"/>
						 		</form:select>
						 		</div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<label class="col-md-3 col-sm-3 custom-label">Nghề nghiệp</label>
						 	<div class="col-md-9 col-sm-9">
						 		<div class="col">
						 		<form:select path="career">
									<form:option value="Doctor">Bác sĩ</form:option>
									<form:option value="Actor">Diễn viên</form:option>
									<form:option value="Developer">Lập trình viên</form:option>
									<form:option value="Enginer">Kỹ sư</form:option>
									<form:option value="Other">Khác</form:option>
								</form:select>
						 		</div>
						 	</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<label class="col-md-3 col-sm-3 custom-label">Ngày tháng năm sinh</label>
						 	<div class="col-md-3 col-sm-3">
						 		<div class="col">
						 			<select name="day">
										<%for(int i = 1; i < 32; i++) {%>
											<option value="<%= i %>"><%= i %></option>
										<%} %>
									</select>
						 		</div>
						 	</div>
						 	<div class="col-md-3 col-sm-3">
						 		<div class="col">
						 			<select name="month">
										<%for(int i = 1; i < 13; i++) {%>
										<option value="<%= i %>"><%= i %></option>
										<%} %>
									</select>
						 		</div>
						 	</div>
						 	<div class="col-md-3 col-sm-3">
						 		<div class="col">
						 			<select name="year">
										<%for(int i = 1980; i < 2016; i++) {%>
										<option value="<%= i %>"><%= i %></option>
										<%} %>
									</select>
						 		</div>
						 	</div>
						</div>
						<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
						<input type="submit" value="LƯU MẬT KHẨU" class="btn bg-orange">
					</c:if>
					<!-- End account edit address -->
					</form:form>
					</div>
				</div>
				</c:if>
			</div>
		</section>
	</div>
</div>
<!-- end content -->