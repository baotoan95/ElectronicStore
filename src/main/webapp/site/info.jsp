<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-12 col-sm-12">
			<div class="col">
				<!-- Aside -->
				<div class="col-wd-12 col-md-3 col-sm-3">
					<div class="col">
						<div class="box-title">
							<div class="title bg-green">${postType.name }</div>
							<div class="content">
								<ul>
									<c:forEach var="post" items="${posts }"> 
									<li><a href="${pageContext.request.contextPath }/post/${post.slug}">${post.name }</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- End aside -->
				<!-- Right content -->
				<div class="col-wd-12 col-md-9 col-sm-9">
					<div class="col">
						<div class="page-content">
							<h3 id="title">${post.name }</h3>
							<div class="line bg-black"></div>
							${post.content }
						</div>
					</div>
				</div>
				<!-- End right content -->
			</div>

			<!-- banner info -->
                    <section class="row col-wd-12 col-md-12 col-sm-12">
                        <div class="col">
                        <div class="col-wd-12 col-md-4 col-sm-4">
                        	<a href="${pageContext.request.contextPath }/post/chinh-sach-van-chuyen-hang.html">
                            <div class="col">
                            <div class="banner-button bg-orange">
                                <div class="icon-banner"><i class="fa fa-car"></i></div>
                                <div class="title-banner">Vận chuyển</div>
                                <div class="desc-banner">Miễn phí bán kính 200KM</div>
                                <div class="btn-banner bg-dorange">Xem</div>
                            </div>
                            </div>
                            </a>
                        </div>
                        
                        <div class="col-wd-12 col-md-4 col-sm-4">
                        	<a href="${pageContext.request.contextPath }/post/quy-dinh-thanh-toan.html">
                            <div class="col">
                            <div class="banner-button bg-blue">
                                <div class="icon-banner"><i class="fa fa-credit-card"></i></div>
                                <div class="title-banner">Thanh toán COD</div>
                                <div class="desc-banner">Thanh toán trực tiếp khi nhận hàng</div>
                                <div class="btn-banner bg-dblue">Xem</div>
                            </div>
                            </div>
                            </a>
                        </div>
                        <div class="col-wd-12 col-md-4 col-sm-4">
                        	<a href="${pageContext.request.contextPath }/post/chinh-sach-doi-hang.html">
                            <div class="col">
                            <div class="banner-button bg-gray">
                                <div class="title-banner">Đổi trả hàng</div>
                                <div class="desc-banner">Thời gian đổi trả hàng lên đến 30 ngày</div>
                                <div class="ricon-banner"><i class="fa fa-repeat"></i></div>
                            </div>
                            </div>
                            </a>
                        </div>
                        </div>
                    </section> <!-- banner info -->
		</div>
	</div>
</div>
