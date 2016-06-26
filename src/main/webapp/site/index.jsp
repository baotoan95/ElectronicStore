<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="col">
				<!-- sidebar -->
				<section class="sidebar col-wd-12 col-md-12 col-sm-12">
					<div class="sidebar-slider col-wd-12 col-sm-8">
						<div class="col">
							<img class="col-wd-12 col-sm-12" style="heigth: 100%; display: block;" src="resources/images/advers/2038_777x301.png" alt="banner" />
						</div>
					</div>
					<div class="box-non-title col-sm-4"style="margin: 0px;">
						<div class="col-sm-12">
							<div class="col">
								<div class="banner">
									<img alt="banner" src="resources/images/advers/2038_777x301.png">
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="col">
								<div class="banner-button bg-orange">
									<div class="title-banner">CRAZY SALES</div>
									<div class="desc-banner">Giá rẻ mỗi ngày</div>
									<div class="ricon-banner">
										<i class="fa fa-repeat"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="col">
								<div class="banner-button bg-green">
									<div class="title-banner">Đổi trả hàng</div>
									<div class="desc-banner">Thời gian đổi trả hàng lên đến
										30 ngày</div>
									<div class="ricon-banner">
										<i class="fa fa-repeat"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- end sidebar -->
			</div>

			<!-- show-list -->
			<section class="show-list col-wd-12 col-md-8 col-sm-8">
				<div class="col">
					<div class="show-list-title">Mua nhiều nhất</div>
					<div class="show-list-content">
						<c:forEach var="product" items="${products }">
						<!-- list-item -->
						<div class="col-wd-6 col-md-4 col-sm-4">
							<a href="product/${product.slug }">
								<div class="col list-item">
									<div class="avatar">
										<img class="img-responsive"
											src="<c:url value='/resources/images/products/medium_108495_may-giat-lg-wd-9600.jpg'/>"
											alt="product" />
									</div>
									<div class="new-icon">Mới</div>
									<div class="prom-icon">Quà tặng</div>
									<div class="desc">${product.name }</div>
									<div class="footer-item">${product.price } đ</div>
								</div>
							</a>
						</div>
						<!-- end list-item -->
						</c:forEach>
					</div>
				</div>
			</section>
			<!-- end show-list -->

			<!-- aside -->
			<aside id="left-side" class="col-wd-12 col-md-4 col-sm-4">
				<div class="col">
					<div class="box-title col-wd-12 col-md-12 col-sm-12">
						<div class="title">Bản tin</div>
						<div class="content">
							<div class="box-image">
								<img class="img-responsive"
									src="resources/images/advers/medium_4068_640x384.jpg"
									alt="banner" />
							</div>
							<div class="box-desc">Pico tặng tiền cho khách hàng mua sắm
							</div>
							<div class="box-link">
								<a href="#">Đọc tiếp -> </a>
							</div>
						</div>
					</div>

					<div class="box-title col-wd-12 col-md-12 col-sm-12">
						<div class="title">Tư vấn mua sắm</div>
						<div class="content">
							<div class="box-image">
								<img class="img-responsive"
									src="resources/images/advers/medium_4120_anhbaiprweb.jpg"
									alt="banner" />
							</div>
							<div class="box-desc">Pico tặng tiền cho khách hàng mua sắm
							</div>
							<div class="box-link">
								<a href="#">Đọc tiếp -> </a>
							</div>
						</div>
					</div>

					<div class="box-non-title col-wd-12 col-md-12 col-sm-12">

						<div class="col-wd-6 col-md-6 col-sm-6">
							<a href="${pageContext.request.contextPath }/mua-hang-tra-gop-tai-picovn.html">
							<div class="col">
								<div class="btn-redirect bg-green">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Trả góp</div>
									<div class="redir-desc">Mua hàng tại Pico.vn</div>
								</div>
							</div>
							</a>
						</div>
						<div class="col-wd-6">
							<a href="${pageContext.request.contextPath}/contact.html">
							<div class="col">
								<div class="btn-redirect bg-gray">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Khách hàng</div>
									<div class="redir-desc">Góp ý</div>
								</div>
							</div>
							</a>
						</div>
						<div class="col-wd-6 col-md-6 col-sm-6">
							<a href="${pageContext.request.contextPath }/the-thanh-vien.html">
							<div class="col">
								<div class="btn-redirect bg-purple">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Thẻ</div>
									<div class="redir-desc">Thành viên</div>
								</div>
							</div>
							</a>
						</div>
						<div class="col-wd-6 col-md-6 col-sm-6">
							<a href="${pageContext.request.contextPath}/post/news/1/">
							<div class="col">
								<div class="btn-redirect bg-orange">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Tin tức</div>
									<div class="redir-desc">Công nghệ và đời sống</div>
								</div>
							</div>
							</a>
						</div>
						<div class="col-wd-6 col-md-6 col-sm-6">
							<a href="${pageContext.request.contextPath }/thong-tin-tuyen-dung.html">
							<div class="col">
								<div class="btn-redirect bg-red">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Tuyển dụng</div>
									<div class="redir-desc">Nhân tài</div>
								</div>
							</div>
							</a>
						</div>
						<div class="col-wd-6 col-md-6 col-sm-6">
							<a href="${pageContext.request.contextPath}/dich-vu-thay-loi-nuoc-loc-tai-nha.html">
							<div class="col">
								<div class="btn-redirect bg-blue">
									<div class="redir-icon">
										<i class="glyphicon glyphicon-fire"></i>
									</div>
									<div class="redir-name">Dịch vụ</div>
									<div class="redir-desc">Sửa chữa chu đáo</div>
								</div>
							</div>
							</a>
						</div>

					</div>

					<div class="box-non-title col-wd-12 col-md-12 col-sm-12">
						<div class="banner">
							<img class="img-responsive"
								src="resources/images/advers/2047_banner_khai_truong_pico_tdt-01.jpg"
								atl="banner" />
						</div>
					</div>

					<div class="box-non-title col-wd-12 col-md-12 col-sm-12">
						<div class="banner">
							<img class="img-responsive"
								src="resources/images/advers/2047_banner_khai_truong_pico_tdt-01.jpg"
								atl="banner" />
						</div>
					</div>
				</div>
			</aside>
			<!-- end aside -->

			<!-- banner info -->
			<section class="row col-wd-12 col-md-12 col-sm-12">
				<div class="col">
					<div class="col-wd-12 col-md-4 col-sm-4">
						<a
							href="${pageContext.request.contextPath }/chinh-sach-van-chuyen-hang.html">
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
						</a>
					</div>

					<div class="col-wd-12 col-md-4 col-sm-4">
						<a
							href="${pageContext.request.contextPath }/quy-dinh-thanh-toan.html">
							<div class="col">
								<div class="banner-button bg-blue">
									<div class="icon-banner">
										<i class="fa fa-credit-card"></i>
									</div>
									<div class="title-banner">Thanh toán COD</div>
									<div class="desc-banner">Thanh toán trực tiếp khi nhận
										hàng</div>
									<div class="btn-banner bg-dblue">Xem</div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-wd-12 col-md-4 col-sm-4">
						<a
							href="${pageContext.request.contextPath }/chinh-sach-doi-hang.html">
							<div class="col">
								<div class="banner-button bg-gray">
									<div class="title-banner">Đổi trả hàng</div>
									<div class="desc-banner">Thời gian đổi trả hàng lên đến
										30 ngày</div>
									<div class="ricon-banner">
										<i class="fa fa-repeat"></i>
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
			</section>
			<!-- banner info -->
		</div>
	</div>
</div>
<!-- end content -->