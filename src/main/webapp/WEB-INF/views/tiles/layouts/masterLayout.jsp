<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Welcome To | Bootstrap Based Admin Template - Material
	Design</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link
	href="<c:url value="/static/plugins/bootstrap/css/bootstrap.css"/>"
	rel="stylesheet">

<!-- Waves Effect Css -->
<link href="<c:url value="/static/plugins/node-waves/waves.css"/>"
	rel="stylesheet" />

<!-- Animation Css -->
<link href="<c:url value="/static/plugins/animate-css/animate.css"/>"
	rel="stylesheet" />

<!-- Morris Chart Css-->
<link href="<c:url value="/static/plugins/morrisjs/morris.css"/>"
	rel="stylesheet" />

<!-- Custom Css -->
<link href="<c:url value="/static/css/style.css"/>" rel="stylesheet">

<!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="<c:url value="/static/css/themes/all-themes.css"/>"
	rel="stylesheet" />
</head>

<body class="theme-red">

	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="menu" />
	<section class="content">
		<div class="container-fluid">
			<tiles:insertAttribute name="body" />
		</div>
	</section>

	<tiles:insertAttribute name="footer" />

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--<script src="http://code.jquery.com/jquery.js"></script>-->
</body>
</html>