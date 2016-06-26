<%@page import="com.baotoan.spring.entity.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- content -->
<div id="content" class="grid">
	<div class="row">
		<div class="col-wd-12 col-md-8 col-sm-8">
			<div class="col">
				<div class="col-wd-12 col-md-12 col-sm-12">
					<div class="page-content">
						<h3 id="title">${post.name }</h3>
						<script type="text/javascript">
							$('title').html($('#title').html());
						</script>
						<div class="line bg-black"></div>
						<div class="date">
                        	<i class="glyphicon glyphicon-time"></i> ${post.publishesDate }
                        </div>
                        <div class="fb-like" data-href="https://www.facebook.com/picoelectronicstore/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                        <br/>
                        ${post.content }
						<div class="news-redir" style="text-align: right;">Nguồn: <b>${post.author }</b></div>
					</div>
				</div>
				<div class="col-wd-12 col-md-12 col-sm-12" style="margin: 20px 0px 100px">
					<div class="fb-comments" data-href="https://www.facebook.com/picoelectronicstore/" data-width="100%" data-numposts="5"></div>
				</div>
			</div>
		</div>
		<aside class="col-wd-12 col-md-4 col-sm-4">
        	<div class="col">
            	<div class="box-title">
            		<div class="title bg-green">Tin mới</div>
            		<div class="content">
                	<div class="col">
                    	<ul>
                    		<%
	                    	@SuppressWarnings("unchecked")
	                    	List<Post> posts = (List<Post>)request.getAttribute("suggest");
	                    	for(Post post : posts) {
	                    	%>
                    		<li>
	                    		<a href='${pageContext.request.contextPath}/post/read/<%= post.getSlug() %>'>
	                    			<i class="glyphicon glyphicon-circle-arrow-right"></i> <%= post.getName() %>
	                    		</a>
                    		</li>
                    		<%
	                    	}
                    		%>
                    	</ul>
					</div>
					</div>
            	</div>
        	</div>
        </aside>
	</div>
</div>