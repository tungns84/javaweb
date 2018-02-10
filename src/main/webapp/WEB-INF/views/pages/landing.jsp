<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bưu điện Việt Nam</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/static/plugins/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Theme CSS -->
    <link href="<c:url value="/static/css/freelancer.min.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/static/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" class="index">
    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Bưu điện Việt Nam</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Danh mục dịch vụ</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">Về chúng tôi</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Liên hệ</a>
                    </li>
					<li class="page-scroll">
                        <a href="<c:url value='/login' />">Sign In</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="<c:url value="/static/images/profile.png"/>" alt="">
                    <div class="intro-text">
                        <span class="name">Bưu điện Việt Nam</span>
                        <hr class="star-light">
                        <span class="skills">Bưu chính chuyển phát - Tài chính bưu chính - Phân phối - Truyền thông</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Bưu chính chuyển phát</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive" alt="">
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>THÔNG TIN LIÊN HỆ</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-left col-lg-offset-3">
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i> Số 5 Phạm Hùng, Mỹ Đình 2, Nam Từ Liêm, TP. Hà Nội</p>
                </div>
				<div class="col-lg-12 text-left col-lg-offset-3">
                    <p><i class="fa fa-phone-square" aria-hidden="true"></i> 1900 54 54 81</p>
                </div>
			</div>
            <div class="row">
                <div class="col-lg-12 text-left col-lg-offset-3">
                    <p><i class="fa fa-envelope" aria-hidden="true"></i> vanphong@vnpost.vn</p>
                </div>
				<div class="col-lg-12 text-left col-lg-offset-3">
                    <p><i class="fa fa-link" aria-hidden="true"></i> <a href="http://www.vnpost.vn/vi-vn">Bưu điện Việt Nam</a></p>
                </div>
            </div>              
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Liên hệ với chúng tôi</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Họ và tên</label>
                                <input type="text" class="form-control" placeholder="Nguyễn Sơn Tùng" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email</label>
                                <input type="email" class="form-control" placeholder="Địa chỉ Email" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Điện thoại</label>
                                <input type="tel" class="form-control" placeholder="098x xxx xxx" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Lời nhắn</label>
                                <textarea rows="5" class="form-control" placeholder="Để lại lời nhắn..." id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Gửi</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Địa điểm</h3>
                        <p>Số 5 Phạm Hùng
                            <br>Mỹ Đình 2 - Nam Từ Liêm - Hà Nội - Việt Nam</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Mục tiêu</h3>
                        <p>Make <a href="http://www.vnpost.vn/vi-vn">VNPost</a> Come to </p><p class="vnpost">GREAT!</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>VẬN CHUYỂN HÀNG NẶNG QUỐC TẾ</h2>
                            <hr class="star-primary">
                            <img src="<c:url value="/static/images/portfolio/portfolio1.jpg"/>" class="img-responsive img-centered" alt="">
                            <p>Nhằm đáp ứng yêu cầu ngày càng đa dạng của khách hàng, bên cạnh các dịch vụ chuyển phát bưu phẩm, bưu kiện trong nước và quốc tế, Bưu điện Việt Nam đã triển khai dịch vụ vận chuyển hàng nặng quốc tế tại 63 tỉnh, thành phố.</p>
                            <ul class="list-inline item-details">
                                <li>Phạm vi cung cấp dịch vụ:
                                    <strong>63 Bưu điện tỉnh, thành phố</strong>
                                </li>
                                <li>Quy định về khối lượng / kích thước:
                                    <strong>Trọng lượng tối thiểu một đơn hàng: 50kg/đơn hàng.
                                    </strong>
                                </li>
                                <li>Dịch vụ cộng thêm:
                                    <strong>Làm thủ tục thông quan ở Việt Nam và nước nhận hàng hóa</strong>
									<strong>Thu gom hàng tại chỉ của quý khách</strong>
									<strong>Hỗ trợ bọc, gia cố, bốc xếp, nâng hạ</strong>
									<strong>Giao hàng tại địa chỉ của người nhận</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="<c:url value="/static/plugins/jquery/jquery.min.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/static/plugins/bootstrap/js/bootstrap.min.js"/>"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<c:url value="/static/js/jqBootstrapValidation.js"/>"></script>
    <script src="<c:url value="/static/js/contact_me.js"/>"></script>

    <!-- Theme JavaScript -->
    <script src="<c:url value="/static/js/freelancer.min.js"/>"></script>

</body>

</html>
