<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content="This is topic of techsoft"> 
<meta name="author" content="">
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/font-awesome.min.css'/>"/>
</head>
<body>
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=771854016252671";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<div id="wrapper">
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="body"/>
		<tiles:insertAttribute name="footer"/>
	</div>
	<script type="text/javascript" src="<c:url value='/resources/js/owl.carousel.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/jquery.themepunch.revolution.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/theme.js'/>"></script>
</body>
</html>