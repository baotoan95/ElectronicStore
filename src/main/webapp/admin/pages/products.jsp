<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
			<table class="table table-striped table-bordered table-hover table-condensed">
            	<thead>
                	<tr>
                    	<th>ID</th>
                        <th>Hình mẫu</th>
                        <th>Tên</th>
                        <th>Ngày cập nhật</th>
                        <th>Lượt xem</th>
                        <th>Lượt mua</th>
                        <th>Xem/Sửa</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody>
                <%
//                 	List<Product> listProduct = (List<Product>)request.getAttribute("listProduct");
//                 	for(Product product : listProduct) {
                %>
                	<tr>
<%-- 			<td><%= product.getId() %></td> --%>
<!-- 			<td><img class="img-responsive img-small" -->
<%-- 				src="${pageContext.request.contextPath }/resources/<%= product.getAvatar() %>"></td> --%>
<%-- 			<td><%=product.getName()%></td> --%>
<%-- 			<td><%=product.getUpdateDay()%></td> --%>
<%-- 			<td><%=product.getViews()%></td> --%>
<%-- 			<td><%=product.getSellCount()%></td> --%>
<%-- 			<th><a href="product?ac=w&id=<%=product.getId()%>"><i --%>
<!-- 					class="glyphicon glyphicon-list-alt"></i></a></th> -->
			<th><a href=""><i class="glyphicon glyphicon-trash"></i></a></th>
               		</tr>
               	<%
//                 	}
               	%>
               	</tbody>
            </table>
            <div class="menu-right">
				<ul>
					<%= request.getAttribute("pagination") %>
				</ul>
			</div>