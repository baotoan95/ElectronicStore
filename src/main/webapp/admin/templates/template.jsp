<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<!-- jQuery 2.1.4 -->
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.4 -->
<link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
<!-- FontAwesome 4.3.0 -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons 2.0.0 -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<c:url value='/resources/dist/css/AdminLTE.min.css'/>" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link href="<c:url value='/resources/dist/css/skins/_all-skins.min.css'/>" rel="stylesheet" type="text/css" />
<!-- iCheck -->
<link href="<c:url value='/resources/plugins/iCheck/flat/blue.css'/>" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="<c:url value='/resources/plugins/morris/morris.css'/>" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="<c:url value='/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css'/>" rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="<c:url value='/resources/plugins/datepicker/datepicker3.css'/>" rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link href="<c:url value='/resources/plugins/daterangepicker/daterangepicker-bs3.css'/>" rel="stylesheet" type="text/css" />
<!-- bootstrap wysijsp5 - text editor -->
<link href="<c:url value='/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css'/>" rel="stylesheet" type="text/css" />
<!-- ajax submit form plug-in -->
<script type="text/javascript" src="<c:url value='/resources/js/jquery.form.min.js'/>"></script>

<link href="<c:url value='/resources/css/admin-style.css'/>" rel="stylesheet" type="text/css" />
<!-- Notification -->
<script type="text/javascript" src="<c:url value='/resources/js/notification.js'/>"></script>
<link href="<c:url value='/resources/css/notification.css'/>" rel="stylesheet" type="text/css"/>
	
<!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="<c:url value='/resources/plugins/ckfinder/ckfinder.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/plugins/ckeditor/ckeditor.js'/>"></script>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
    	<!-- Left side column. contains the logo and sidebar -->
    	<tiles:insertAttribute name="left_side"></tiles:insertAttribute>
      	<!-- Content Wrapper. Contains page content -->
      	<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          	<h1>
            	Dashboard
            <small>Control panel</small>
          	</h1>
          	<ol class="breadcrumb">
            	<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            	<li class="active">Dashboard</li>
          	</ol>
        </section>

        <!-- Main content -->
        <section class="content">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
    </div><!-- ./wrapper -->
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js" type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script type="text/javascript">
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<%-- <script src="<c:url value='/resources/plugins/morris/morris.min.js" type="text/javascript"></script> --%>
<!-- Sparkline -->
<script src="<c:url value='/resources/plugins/sparkline/jquery.sparkline.min.js'/>" type="text/javascript"></script>
<!-- jvectormap -->
<script src="<c:url value='/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'/>" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="<c:url value='/resources/plugins/knob/jquery.knob.js'/>" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
<script src="<c:url value='/resources/plugins/daterangepicker/daterangepicker.js'/>" type="text/javascript"></script>
<!-- datepicker -->
<script src="<c:url value='/resources/plugins/datepicker/bootstrap-datepicker.js'/>" type="text/javascript"></script>
<!-- Bootstrap WYSIjsp5 -->
<script src="<c:url value='/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js'/>" type="text/javascript"></script>
<!-- Slimscroll -->
<script src="<c:url value='/resources/plugins/slimScroll/jquery.slimscroll.min.js'/>" type="text/javascript"></script>
<!-- FastClick -->
<script src="<c:url value='/resources/plugins/fastclick/fastclick.min.js'/>" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="<c:url value='/resources/dist/js/app.min.js'/>" type="text/javascript"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<c:url value='/resources/dist/js/pages/dashboard.js'/>" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value='/resources/dist/js/demo.js'/>" type="text/javascript"></script>
</body>
</html>