<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- content -->
<div id="content" class="grid">
	<div id="registry" class="row">
		<div class="col-wd-12 col-md-8">
			<div class="col" style="display: ${not empty requestScope.message ? 'block;' : 'none;'}">
				<div class="box-title">
					<div class="bg-green" style="padding: 10px;">${requestScope.message }</div>
				</div>
			</div>
			<div class="col" style="display: ${not empty requestScope.error ? 'block;' : 'none;'}">
				<div class="box-title">
					<div class="bg-red" style="padding: 10px;">${requestScope.error }</div>
				</div>
			</div>
			<div class="col">
				<div class="box-title">
					<div class="title bg-green">Bản tin</div>
					<div class="content col-wd-12 col-md-12">
						<form:form action="registry.html" method="POST" id="registryForm" style="overflow: hidden;" modelAttribute="user">
							<div class="col-wd-12 col-md-12">
								<div class="col">
									<h3>Thông tin đăng nhập</h3>
								</div>
							</div>
							<div class="col-wd-12 col-md-12">
								<div class="col">
									<form:input path="email" placeholder="Địa chỉ email" class="required"></form:input>
									<form:errors path="email" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:password path="password" placeholder="Mật khẩu" class="required"></form:password>
									<form:errors path="password" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<input type="password" name="passagain" placeholder="Nhập lại mật khẩu" class="required">
									<div class="error">${requestScope.passagain }</div>
								</div>
							</div>
							<div class="col-wd-12">
								<div class="col">
									<h3>Thông tin cá nhân</h3>
								</div>
							</div>
							<div class="col-wd-12 col-md-2">
								<div class="col">
									<form:select path="gender">
										<form:option value="1">Nam</form:option>
										<form:option value="0">Nữ</form:option>
									</form:select>
								</div>
							</div>
							<div class="col-wd-12 col-md-5">
								<div class="col">
									<form:input path="firstName" placeholder="Họ" class="required"></form:input>
								</div>
							</div>
							<div class="col-wd-12 col-md-5">
								<div class="col">
									<form:input path="lastName" placeholder="Tên" class="required"></form:input>
								</div>
							</div>
							<div class="col-wd-12 col-md-2">
								<div class="col">
									<p class="2">Ngày sinh:</p>
								</div>
							</div>
							<div class="col-wd-12 col-md-10">
								<div class="col-wd-12 col-md-4">
									<div class="col">
										<select name="day">
											<%for(int i = 1; i < 32; i++) {%>
												<option value="<%= i %>"><%= i %></option>
											<%} %>
										</select>
									</div>
								</div>
								<div class="col-wd-12 col-md-4">
									<div class="col">
										<select name="month">
											<%for(int i = 1; i < 13; i++) {%>
											<option value="<%= i %>"><%= i %></option>
											<%} %>
										</select>
									</div>
								</div>
								<div class="col-wd-12 col-md-4">
									<div class="col">
										<select name="year">
											<%for(int i = 1980; i < 2016; i++) {%>
											<option value="<%= i %>"><%= i %></option>
											<%} %>
										</select>
									</div>
								</div>
							</div>

							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:select path="bank">
										<form:options items="${sessionScope.banks }" itemLabel="name" itemValue="id"/>
									</form:select>
									<form:errors path="bank"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:select path="career">
										<form:option value="Doctor">Bác sĩ</form:option>
										<form:option value="Actor">Diễn viên</form:option>
										<form:option value="Developer">Lập trình viên</form:option>
										<form:option value="Enginer">Kỹ sư</form:option>
										<form:option value="Other">Khác</form:option>
									</form:select>
									<form:errors path="career"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:input path="phone" placeholder="Di động" class="required"></form:input>
									<form:errors path="phone" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:input path="cellPhone" placeholder="Điện thoại nhà" class="required"></form:input>
									<form:errors path="cellPhone"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:select path="province">
										<form:options items="${sessionScope.provinces }" itemLabel="title" itemValue="id"/>
									</form:select>
									<form:errors path="province"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-6">
								<div class="col">
									<form:select path="ward">
										<form:options items="${sessionScope.wards }" itemLabel="title" itemValue="id"/>
									</form:select>
									<form:errors path="ward"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-12">
								<div class="col">
									<form:input path="address" placeholder="Địa chỉ nhà bạn" class="required"></form:input>
									<form:errors path="address" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-9">
								<div class="col">
									<input type="text" name="recaptcha" placeholder="Nhập mã bảo vệ" class="required">
									<form:errors path="role"></form:errors>
								</div>
							</div>
							<div class="col-wd-12 col-md-3">
								<div class="col">
									<img src="<c:url value='/resources/images/captcha.jpeg'/>">
								</div>
							</div>
							<div class="box-link col-wd-12">
								<div class="col">
									<input type="submit" class="btn bg-green" value="Đăng ký">
								</div>
							</div>
							<form:hidden path="birth" id="birth"/>
						</form:form>
						<script type="text/javascript">
							$('#registryForm').submit(function() {
								var day = $('select[name=day]').val();
								var month = $('select[name=month]').val();
								var year = $('select[name=year]').val();
								$('#birth').attr('value', year + "-" + month + "-" + day);
							});
						</script>
					</div>
				</div>
			</div>
		</div>

		<aside>
		<div class="col-wd-12 col-md-4">
			<div class="col">
				<div class="box-title">
					<div class="title bg-green">Đăng nhập tài khoản</div>
					<div class="content col-wd-12">
						<a href="${pageContext.request.contextPath }/user/login.html">
						<div class="col">
							Nếu bạn đã có tài khoản<br />
							<div class="btn bg-blue btn-larger">Đăng nhập ngay</div>
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="col-wd-12 col-md-4">
			<div class="col">
				<div class="box-title">
					<div class="title bg-green">Câu hỏi thường gặp</div>
					<div class="content col-wd-12">
						<div class="col">
							<ul>
								<li>
									<i class="glyphicon glyphicon-hand-right"></i> 
									<a href="#">Hướng dẫn mở Tài khoản</a></li>
								<li>
									<i class="glyphicon glyphicon-hand-right"></i> 
									<a href="#">Không nhận được mail xác nhận kích hoạt tài khoản, tôi phải làm gì?</a>
								</li>
								<li>
									<i class="glyphicon glyphicon-hand-right"></i> 
									<a href="#">Làm thế nào tôi có thể thay đổi, cập nhật thông tin tài khoản sau khi đăng ký thành công?</a>
								</li>
								<li>
									<i class="glyphicon glyphicon-hand-right"></i> 
									<a href="#">Quên mật khẩu tài khoản, làm cách nào tôi phục hồi lại được?</a>
								</li>
								<li>
									<i class="glyphicon glyphicon-hand-right"></i> 
									<a href="#">Làm thế nào để tôi xem được điểm thẻ, cách liên kết thẻ điện tử với thẻ thành viên nhựa?</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		</aside>

		<!-- banner info -->
		<section class="row col-wd-12 col-md-12 col-sm-12">
			<div class="col">
				<div class="col-wd-12 col-md-4 col-sm-4">
					<div class="col">
						<div class="banner-button bg-orange">
							<div class="icon-banner">
								<i class="fa fa-car"></i>
							</div>
							<div class="title-banner">Vận chuyển</div>
							<div class="desc-banner">Miễn phí bán kính 200KM</div>
							<div class="btn-banner bg-dorange">Xem</div>
						</div>
					</div>
				</div>

				<div class="col-wd-12 col-md-4 col-sm-4">
					<div class="col">
						<div class="banner-button bg-blue">
							<div class="icon-banner">
								<i class="fa fa-credit-card"></i>
							</div>
							<div class="title-banner">Thanh toán COD</div>
							<div class="desc-banner">Thanh toán trực tiếp khi nhận hàng</div>
							<div class="btn-banner bg-dblue">Xem</div>
						</div>
					</div>
				</div>
				<div class="col-wd-12 col-md-4 col-sm-4">
					<div class="col">
						<div class="banner-button bg-gray">
							<div class="title-banner">Đổi trả hàng</div>
							<div class="desc-banner">Thời gian đổi trả hàng lên đến 30 ngày</div>
							<div class="ricon-banner">
								<i class="fa fa-repeat"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- banner info -->
	</div>
</div>
<!-- end content -->