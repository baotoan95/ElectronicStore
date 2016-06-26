<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-12 col-sm-12">
			<!-- show-list -->
			<section class="show-list col-wd-12 col-md-12 col-sm-12">
				<div class="col">
					<div class="show-list-title">Kết quả của: ${key }</div>
					<div class="show-list-content">
						<c:forEach var="product" items="${products }">
						<!-- list-item -->
						<div class="col-wd-6 col-md-3 col-sm-3">
							<a href="${pageContext.request.contextPath }/product/${product.slug }">
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
			<div class="col-wd-12 col-md-12 col-sm-12">
            	<div class="col">
                	<div class="pagination">
                    	<ul>
							<%= request.getAttribute("htmlCode") %>
                        </ul>
               		</div>
            	</div>
            </div>
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