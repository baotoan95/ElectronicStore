<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.baotoan.spring.entity.ImageProduct"%>
<%@page import="com.baotoan.spring.entity.ProductDetail"%>
<%@page import="java.util.Set"%>
<%@page import="com.baotoan.spring.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-7 col-sm-8">
			<div class="col">
				<div class="page-content">
					<div class="col-wd-12 col-md-12 col-sm-6">
						<div class="col">
							<h4 class="uppercase">${product.name }</h4>
							<div class="product-view">
								<div class="product-img-box">
									<div class="image-main">
										<img src="<c:url value='${product.avatar }'/>"
											alt="Product demo" />
									</div>
									<div class="click-quick-view">&nbsp;</div>
									<div id="galary-image" class="carousel slide"
										data-ride="carousel">
										<!-- Wrapper for slides -->
										<% 
										@SuppressWarnings("unchecked")
										List<ImageProduct> imageProducts = (ArrayList<ImageProduct>)request.getAttribute("images"); 
										%>
										<div class="carousel-inner" role="listbox">
											<div class="item active">
											<% 
											for(int i = 0; i < imageProducts.size(); i++) {
												if(i >= 3) {
													break;
												}
												ImageProduct imgp = imageProducts.get(i);
											%>
												<div class="sub-item">
													<img src="<c:url value='<%= imgp.getUrl() %>'/>">
												</div>
											<%} %>
											</div>

											<div class="item">
											<%
											for(int i = 3; i < imageProducts.size(); i++) {
 												ImageProduct imgp = imageProducts.get(i);
  											%>
												<div class="sub-item">
													<img src="<c:url value='<%= imgp.getUrl() %>'/>">
												</div>
											<%}%>
											</div>
										</div>

										<!-- Left and right controls -->
										<a class="left carousel-control" href="#galary-image" role="button" data-slide="prev"> 
											<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> 
										<a class="right carousel-control" href="#galary-image" role="button" data-slide="next"> 
											<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>

									<div class="image-quick-view no-display">
										<div class="content">
											<span class="close">x</span> 
											<img src="resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg"
												alt="" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-wd-12 col-md-12 col-sm-6">
						<div class="col">
							<div class="tbl-desc-product">
								<table>
								<c:forEach var="prodDetail" items="${product.productDetails }">
								<c:if test="${prodDetail.represent == true}">
								<tr>
                                    <td>${prodDetail.digital.name }</td>
                                    <td>${prodDetail.value }</td>
                                </tr>
                                </c:if>
                                </c:forEach>
								</table>
							</div>
						</div>
					</div>

					<div class="col-wd-12 col-md-12 col-sm-12">
						<div id="features">
							<h3>Đặc điểm nổi bật</h3>
<!-- 							<div class="col-wd-12 col-md-12 col-sm-6"> -->
<!-- 								<div class="col"> -->
<!-- 									<div class="features-of-product"> -->
<!-- 										<div class="avatar"> -->
<!-- 											<img src="resources/images/products/150181_tivi-led-sony-kdl-40r350c-40-inch-5.jpg" alt="avatar" /> -->
<!-- 										</div> -->
<!-- 										<div class="title">Thiết kế sành điệu</div> -->
<!-- 										<div class="content">Samsung Galaxy J7 J700 thiết kế -->
<!-- 											siêu mỏng nhẹ đầy tinh tế và sành điệu với lớp ánh kim sáng -->
<!-- 											bóng ôm trọn thân máy giúp máy toát lên vẻ sang trọng đầy -->
<!-- 											quyến rũ. Kích thước vừa vặn kết hợp với các góc và mặt sau -->
<!-- 											bo tròn không những mang lại cho bạn một chiếc điện thoại vừa -->
<!-- 											mềm mại vừa cá tính mà còn cho cảm giác cực thoải mái khi cầm -->
<!-- 											nắm cùng như sử dụng.</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							${product.post.content }
						</div>
					</div>

					<div class="col-wd-12 col-md-12 col-sm-12">
						<div id="digital-product">
							<h3>Thông số kỹ thuật</h3>
							<table width="100%">
							<%= ((List)request.getAttribute("details")).size() == 0 ? "Đang cập nhật..." : "" %>
							<c:set var="currentGroup" value="0"/>
							<c:forEach var="detail" items="${details }">
								<c:if test="${detail.digital.groupDigital.id != currentGroup }">
								<tr class="table-group">
									<td colspan="2">${detail.digital.groupDigital.name }</td>
									<c:set var="currentGroup" value="${detail.digital.groupDigital.id }"></c:set>
								</tr>
								</c:if>
								<tr>
									<td>${ detail.digital.name}</td>
									<td>${ detail.value}</td>
								</tr>
							</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-wd-12 col-md-5 col-sm-4">
			<div class="col">
				<div class="page-content">
					<p class="stt-prod">Còn hàng</p>
					<p class="price-prod">${product.price }₫</p>
					<p class="red">Quà tặng khuyến mại:</p>
					<div class="part-promotion">
						<ul>
							<c:forEach var="prom_prod" items="${product.listPromotions }">
							<li>${prom_prod.promotion.content } (Áp dụng: ${prom_prod.promotion.startDate } - ${prom_prod.promotion.endDate })</li>
							</c:forEach>
						</ul>
					</div>
<!-- 					<div class="col-wd-12 col-md-12 col-sm-12"> -->
<!-- 						<div class="btn bg-green" style="display: block;"> -->
<!-- 							<h5>MUA NGAY, GIAO HÀNG TẬN NƠI</h5> -->
<!-- 							(Xem hàng, không mua không sao) -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="col-wd-12 col-md-12 col-sm-12">
						<div class="btn bg-blue" style="display: block;" id="btn-add" data="${product.id }">
							<h5>THÊM SẢN PHẨM VÀO GIỎ HÀNG</h5>
							(dành cho mua cùng lúc nhiều mặt hàng)
						</div>
					</div>
					<script type="text/javascript">
						$('#btn-add').click(function(e) {
							var object = {prodId: $(this).attr('data')};
					  		$.get('/ElectronicStore/cart.html/add', object, function(rsp){
					  			if(rsp === 'fail') {
					  				alert('Sản phẩm đã có trong giỏ hàng');
					  			} else {
					  				alert('Đã thêm vào giỏ hàng');
					  				$('#count_shopping_cart').html(rsp);
					  			}
							});
						});
					</script>
					<div class="call-support">Gọi mua hàng: 0904.881169 -
						1900.6619 (từ 8h15 đến 17h15 hàng ngày)</div>
					<p class="red">Bạn quan tâm? Chương trình áp dụng:</p>
					<div class="part-promotion">
						<ul>
							<li><i class="glyphicon glyphicon-circle-arrow-right blue"></i>
								Tặng Phiếu Mua Hàng Lên Đến 2.000.000Đ Cho Các Sản Phẩm Tivi Led
								Sony model 2015 Khi Mua Online ( Chi Tiết Liên Hệ :0904881185 -
								19006619 nhánh 1 )</li>
							<li><i class="glyphicon glyphicon-circle-arrow-right blue"></i>
								Tặng Phiếu Mua Hàng 800.000Đ Cho Tivi Led SamSung,LG trên 50"
								model 2015 Khi Mua Hàng Online ( 0904881185 - 19001169 nhánh 1 )</li>
							<li><i class="glyphicon glyphicon-circle-arrow-right blue"></i>
								Tặng Phiếu Mua Hàng 300.000Đ Cho Tivi Led SamSung,LG 32" Đến 49"
								Model 2015 Khi Mua Hàng Online ( 0904881185 - 19006619 nhánh 1 )</li>
							<li><i class="glyphicon glyphicon-circle-arrow-right blue"></i>
								Trả góp kỳ hạn lên đến 12 tháng khi mua sắm tại Pico [ Xem thêm
								→ ]</li>
						</ul>
					</div>
					<p class="black">Hàng có tại siêu thị:</p>
					<div class="part-promotion">
						<ul>
							<li><i class="glyphicon glyphicon-check green"></i> 76
								Nguyễn Trãi, Thanh Xuân [ Bản đồ ]</li>
							<li><i class="glyphicon glyphicon-check green"></i> 173 Xuân
								Thủy, Cầu Giấy [ Bản đồ ]</li>
							<li><i class="glyphicon glyphicon-check green"></i> 324 Tây
								Sơn, Đống Đa [ Bản đồ ]</li>
							<li><i class="glyphicon glyphicon-check green"></i> 148
								Giảng Võ, Ba Đình [ Bản đồ ]</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<aside class="col-wd-12 col-md-5 col-sm-4">
			<div class="col">
				<h4>→ Có thể bạn quan tâm</h4>
				<div class="show-list-vert">
					<c:forEach var="prod" items="${suggest }">
					<div class="list-item">
						<div class="avatar">
							<img src="<c:url value='${prod.avatar }'/>">
						</div>
						<div class="desc">
							<div class="name">
								<a href="${pageContext.request.contextPath }/product/${prod.slug}">${prod.name }</a>
							</div>
							<i class="btn bg-orange promotion glyphicon glyphicon-gift"></i>
							<div id="price" class="price red">${prod.price }₫</div>
						</div>
					</div>
					</c:forEach>
				</div>
				<!-- Format number -->
				<script type="text/javascript">
					$(document).ready(function(){
						$('#price').number( true, 0,',','.' ); 
					});
				</script>
				<h4>→ Mẹo vặt hay</h4>
				<div class="news-box">
					<div class="news-banner">
						<img src="resources/images/upload/big_4236_may_giat_hong.jpg" />
					</div>
					<div class="news-content">
						<div class="news-title">
							<a href="#">Vạch mặt 5 thói quen xấu khiến máy giặt của bạn nhanh hỏng</a>
						</div>
						<div class="date">
							<i class="glyphicon glyphicon-time"></i> Thứ hai, 21/12/2015 00:00 AM
						</div>
					</div>
				</div>

				<div class="news-box-mini">
					<div class="avatar">
						<img
							src="resources/images/products/HTB1UMD_IpXXXXXmXpXXq6xXFXXX7.jpg">
					</div>
					<div class="desc">
						<a href="#">Xu hướng thiết bị âm thanh nào cho bạn?</a>
						<div class="date">Đăng 10/10/2015 12:00</div>
					</div>
				</div>
				<div class="news-box-mini">
					<div class="avatar">
						<img
							src="resources/images/products/HTB1UMD_IpXXXXXmXpXXq6xXFXXX7.jpg">
					</div>
					<div class="desc">
						<a href="#">Xu hướng thiết bị âm thanh nào cho bạn?</a>
						<div class="date">Đăng 10/10/2015 12:00</div>
					</div>
				</div>
				<div class="news-box-mini">
					<div class="avatar">
						<img
							src="resources/images/products/HTB1UMD_IpXXXXXmXpXXq6xXFXXX7.jpg">
					</div>
					<div class="desc">
						<a href="#">Xu hướng thiết bị âm thanh nào cho bạn?</a>
						<div class="date">Đăng 10/10/2015 12:00</div>
					</div>
				</div>

				<div class="aside-footer">
					<a href="#">Xem thêm mẹo vặt khác →</a>
				</div>
			</div>
		</aside>
	</div>
</div>
<!-- end content -->