<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Spring MVC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/static/plugins/bootstrap/css/bootstrap.css" />"
          rel="stylesheet">
    <link
            href="<c:url value="/static/plugins/node-waves/waves.css" />"
            rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/static/plugins/animate-css/animate.css"/>"
            rel="stylesheet">
    <link
            href="<c:url value="/static/css/style.css"/>"
            rel="stylesheet">
</head>
<body class="signup-page">
    <div class="signup-box">
        <div class="logo">
            <a href="javascript:void(0);">RMS <b>VNPOST</b></a>
            <small>Hệ thống quản lý yêu cầu</small>
        </div>
        <div class="card">
            <div class="body">
                <form autocomplete="off" name='signup' action="<c:url value='/signup' />" method='POST'>
                <div class="msg">Register a new membership</div>
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                    <div class="form-line">
                        <input type="text" class="form-control" name="name" placeholder="Id" required autofocus>
                    </div>
                </div>
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                    <div class="form-line">
                        <input type="text" class="form-control" name="fullName" placeholder="Full Name" required
                               autofocus>
                    </div>
                </div>
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                    <div class="form-line">
                        <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                    </div>
                </div>
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                    <div class="form-line">
                        <input type="password" class="form-control" name="password" minlength="6" placeholder="Password"
                               required>
                    </div>
                </div>
                <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                    <div class="form-line">
                        <input type="password" class="form-control" name="confirm" minlength="6"
                               placeholder="Confirm Password" required>
                    </div>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="terms" id="terms" class="filled-in chk-col-pink">
                    <label for="terms">I read and agree to the <a href="javascript:void(0);">terms of usage</a>.</label>
                </div>

                <button class="btn btn-block btn-lg bg-pink waves-effect" type="submit">SIGN UP</button>

                <div class="m-t-25 m-b--5 align-center">
                    <a href="<c:url value='/login'/>">You already have a membership?</a>
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
<script src="<c:url value="/static/js/pages/examples/sign-up.js"/>"></script>
</body>
</html>