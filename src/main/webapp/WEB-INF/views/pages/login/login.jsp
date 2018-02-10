<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>RMS Sign In</title>
    <!-- Favicon-->
    <link rel="icon" href="../../favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="<c:url value="/static/plugins/bootstrap/css/bootstrap.css"/>" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="<c:url value="/static/plugins/node-waves/waves.css"/>" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="<c:url value="/static/plugins/animate-css/animate.css"/>" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="<c:url value="/static/css/style.css"/>" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">RMS <b>VNPOST</b></a>
            <small>Hệ thống quản lý yêu cầu</small>
        </div>
        <div class="card">
            <div class="body">
                <form autocomplete="off" name='login' action="<c:url value='/login' />" method='POST'>
                    <div class="msg">Đăng nhập</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="password" placeholder="Password" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 p-t-5">
                            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                            <label for="rememberme">Remember Me</label>
                        </div>
                        <div class="col-xs-4">
                            <input name="submit" type="submit" value="Sign in"
									class="btn btn-block bg-pink waves-effect" />
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            <a href="<c:url value='/signup'/>">Đăng ký!</a>
                        </div>
                        <div class="col-xs-6 align-right">
                            <a href="forgot-password.html">Quên mật khẩu?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="<c:url value="/static/plugins/jquery/jquery.min.js"/>"></script>

    <!-- Bootstrap Core Js -->
    <script src="<c:url value="/static/plugins/bootstrap/js/bootstrap.js"/>"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="<c:url value="/static/plugins/node-waves/waves.js"/>"></script>

    <!-- Validation Plugin Js -->
    <script src="<c:url value="/static/plugins/jquery-validation/jquery.validate.js"/>"></script>

    <!-- Custom Js -->
    <script src="<c:url value="/static/js/admin.js"/>"></script>
    <script src="<c:url value="/static/js/pages/examples/sign-in.js"/>"></script>
</body>

</html>