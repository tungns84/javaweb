<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<section>
	<!-- Left Sidebar -->
	<aside id="leftsidebar" class="sidebar">
		<!-- User Info -->
		<div class="user-info">
			<div class="image">
				<img src="<c:url value="/static/images/user.png"/>" width="48" height="48" alt="User" />
			</div>
			<div class="info-container">
				<div class="name" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">TungNS</div>
				<div class="email">${pageContext.request.userPrincipal.name}</div>
				<div class="btn-group user-helper-dropdown">
					<i class="material-icons" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:void(0);"><i
								class="material-icons">person</i>Profile</a></li>
						<li role="seperator" class="divider"></li>
						<li><a href="javascript:void(0);"><i
								class="material-icons">group</i>Followers</a></li>
						<li><a href="javascript:void(0);"><i
								class="material-icons">shopping_cart</i>Sales</a></li>
						<li><a href="javascript:void(0);"><i
								class="material-icons">favorite</i>Likes</a></li>
						<li role="seperator" class="divider"></li>
						<li><a href="javascript:void(0);"><i
								class="material-icons">input</i>Sign Out</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- #User Info -->
		<!-- Menu -->
		<div class="menu">
			<ul class="list">
				<li class="header">MAIN NAVIGATION</li>
				<li class="active"><a href="index.html"> <i
						class="material-icons">home</i> <span>Home</span>
				</a></li>
				
				<sec:authorize access="hasAuthority('01000000')">
				<li><a href="javascript:void(0);" class="menu-toggle" > <i
						class="material-icons">assignment</i> <span>Quản lý yêu cầu</span>
				</a>
					<ul class="ml-menu">
					
						<sec:authorize access="hasAuthority('01010000')"><li><a href="/order/create" >Tạo mới</a></li></sec:authorize>
						
						<sec:authorize access="hasAuthority('01020000')"><li><a href="/order/manage" >Theo dõi yêu cầu</a></li></sec:authorize>
					</ul></li>
				</sec:authorize>
				<sec:authorize access="hasAuthority('02000000')"><li><a href="javascript:void(0);" class="menu-toggle"> <i
						class="material-icons">trending_down</i> <span>More Functions...</span>
				</a>
					<ul class="ml-menu">
						<sec:authorize access="hasAuthority('02010000')"><li><a href="javascript:void(0);"> <span>Function 1 - Role User</span>
						</a></li></sec:authorize>
						<sec:authorize access="hasAuthority('02020000')"><li><a href="javascript:void(0);"> <span>Function 2 - Role Admin</span>
						</a></li></sec:authorize>
						<sec:authorize access="hasAuthority('02030000')"><li><a href="javascript:void(0);" class="menu-toggle"> <span>Function 3 - Role User/Admin</span>
						</a>
							<ul class="ml-menu">
								<sec:authorize access="hasAuthority('01000000')"><li><a href="javascript:void(0);"> <span>Menu
											Item</span>
								</a></li></sec:authorize>
								<sec:authorize access="hasAuthority('01000000')"><li><a href="javascript:void(0);" class="menu-toggle">
										<span>Level - 3</span>
								</a>
									<ul class="ml-menu">
										<sec:authorize access="hasAuthority('01000000')"><li><a href="javascript:void(0);"> <span>Level
													- 4</span>
										</a></li></sec:authorize>
									</ul></li></sec:authorize>
							</ul></li></sec:authorize>
					</ul></li></sec:authorize>
				<li class="header">SYSTEM</li>
				<li><a href="/admin/role" >Role Management</a></li>
				<li><a href="javascript:void(0);"> <i
						class="material-icons col-amber">donut_large</i> <span>Warning</span>
				</a></li>
				<li><a href="javascript:void(0);"> <i
						class="material-icons col-light-blue">donut_large</i> <span>Information</span>
				</a></li>
			</ul>
		</div>
		<!-- #Menu -->
	</aside>
</section>