<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-6">
			<div class="col">
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
				<div class="box-title">
					<div class="title bg-green">Bản tin</div>
					<div class="content col-wd-12">
						<div class="col-wd-12">
							<div class="col">Nếu bạn đã có tài khoản, vui lòng đăng
								nhập</div>
						</div>
						<form:form
							action="${pageContext.request.contextPath }/user/login.html"
							method="POST" modelAttribute="userLogin"
							style="overflow: hidden;" cssClass="col-wd-12">
							<div class="col-wd-12">
								<div class="col">
									<form:input path="email" placeholder="Email" class="required"></form:input>
									<form:errors path="email" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12">
								<div class="col">
									<form:password path="password" placeholder="Mật khẩu"
										class="required"></form:password>
									<form:errors path="password" cssClass="error"></form:errors>
								</div>
							</div>
							<div class="col-wd-12">
								<div class="col">
									<form:checkbox path="remember" />
									Remember me
								</div>
							</div>
							<div class="box-link col-wd-12">
								<div class="col-wd-10">
									<div class="col">
										<a href="#">Quên mật khẩu?</a><br /> <a href="#">Yêu cầu
											kích hoạt tài khoản?</a>
									</div>
								</div>
								<input type="submit" class="btn bg-green" value="Đăng nhập" />
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

		<div class="col-wd-12 col-md-6">
			<div class="col">
				<div class="box-title">
					<div class="title bg-orange">Đăng ký thành viên</div>
					<div class="content col-wd-12">
						<ul>
							<li><i class="glyphicon glyphicon-check"></i> Quản lý và
								kiểm tra trạng thái đơn hàng thật dễ dàng</li>
							<li><i class="glyphicon glyphicon-check"></i> Quản lý điểm
								thẻ tích lũy khi mua hàng</li>
							<li><i class="glyphicon glyphicon-check"></i> Quản lý những
								sản phẩm yêu thích đã lưu lại</li>
							<li>Còn chờ gì nữa! Bạn hãy tạo ngay 1 tài khoản dễ dàng chỉ
								trong vài phút</li>
						</ul>
						<div class="box-link col-wd-12">
							<a href="${pageContext.request.contextPath }/user/registry.html"
								class="btn bg-blue">Đăng ký ngay</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end content -->