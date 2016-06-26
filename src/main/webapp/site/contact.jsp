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
						<h3>Hỏi đáp - góp ý</h3>
						<div class="line bg-black"></div>
						Với mục đích nâng cao chất lượng phục vụ ngày càng tốt hơn, Siêu
						thị điện máy Pico mong muốn nhận được những ý kiến đóng góp phản
						ánh của quý khách về chất lượng sản phẩm, dịch vụ khi mua hàng tại
						Pico. Sau khi nhận được ý kiến đóng góp chúng tôi sẽ chuyển thông
						tin đến các bộ phận có liên quan để giải quyết và trả lời lời Quý
						khách trong thời gian sớm nhất.<br />
						<br /> Trong nội dung phản ảnh xin Quý khách vui lòng để lại thông
						tin liên hệ (Họ tên, Số điện thoại, email, số chứng từ..) để chúng
						tôi có thể chuyển đến các bộ phận có liên quan giải quyết cũng như
						thuận tiện trong việc liên hệ trả lời Quý khách. Nếu quý khách
						không cung cấp đầy đủ thông tin chúng tôi sẽ không thể chuyển
						thông tin đến các bộ phận có liên quan để giải quyết cho Quý
						khách.<br />
						<br /> Trân trọng cám ơn !
					</div>
				</div>
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="page-content">
						<h4>Khách hàng góp ý</h4>
						<div class="line bg-black"></div>
					</div>
				</div>
				<c:forEach var="cont" items="${contacts }">
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="page-content">
						<div class="contact-box">
							<b class="uppercase">${cont.name }</b> ( ${cont.email } - ${cont.phone } )<br/>
							<i class="date">Gửi lúc: ${cont.date }</i><br/>
							${cont.content }
						</div>
						<div class="contact-box">
							<b>PICO - 1900.6699:</b><br/>
							<i class="date">Trả lời: 22/12/2015 08:57</i><br/>
							Xin chào bạn<br/>
							${cont.reply }<br/>
							Cảm ơn bạn đã sử dụng sản phẩm và dịch vụ của Pico.
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<div class="col-wd-12">
				<div class="col">
					<div class="pagination">
						${pagination }
					</div>
				</div>
			</div>
		</div>

		<aside class="col-wd-12 col-md-5 col-sm-5">
			<div class="col">
				<div class="page-content">
					<div class="col">Tạo thư góp ý</div>
					<form:form action="contact.html" method="post"
						modelAttribute="contact">
						<div class="col"
							style="display: ${not empty requestScope.message ? 'block;' : 'none;'}">
							<div class="box-title">
								<div class="bg-green" style="padding: 10px;">${requestScope.message }</div>
							</div>
						</div>
						<div class="col"
							style="display: ${not empty requestScope.error ? 'block;' : 'none;'}">
							<div class="box-title">
								<div class="bg-red" style="padding: 10px;">${requestScope.error }</div>
							</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:input path="name" placeholder="Quý danh" class="required"></form:input>
								<form:errors path="name" cssClass="error"></form:errors>
							</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:input path="email" placeholder="Địa chỉ email"
									class="required"></form:input>
								<form:errors path="email" cssClass="error"></form:errors>
							</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:input path="phone" placeholder="Điện thoại"
									class="required"></form:input>
								<form:errors path="phone" cssClass="error"></form:errors>
							</div>
						</div>
						<div class="col-wd-12 col-md-12 col-sm-12">
							<div class="col">
								<form:textarea path="content" style="min-height: 200px;"
									class="required"></form:textarea>
								<form:errors path="content" cssClass="error"></form:errors>
							</div>
						</div>
						<div class="col-wd-12 col-md-8 col-sm-8">
							<div class="col">
								<input name="recaptcha" type="text" placeholder="Nhập mã bảo vệ"
									class="required" />
							</div>
						</div>
						<div class="col-wd-12 col-md-4 col-sm-4">
							<div class="col">
								<img alt="captcha"
									src="<c:url value='/resources/images/captcha.jpeg'/>" />
							</div>
						</div>
						<div class="col-wd-12 col-md-4 col-sm-4">
							<div class="col">
								<input type="submit" class="btn bg-green" value="Gửi yêu cầu">
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</aside>
	</div>
</div>
<!-- end content -->