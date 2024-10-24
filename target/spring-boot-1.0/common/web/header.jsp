<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<nav class="navbar-expand-lg navbar-dark " style="background: #deddf0;
    padding: 10px;">
		<div class="row navbar">
			<div class="col-12 col-md-3">
				<div class="logo">
					<a href="/trang-chu" class="inner-nhom7">
						<i class="fa-solid fa-city"></i>

						Nhóm 7
					</a>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<security:authorize access = "isAnonymous()">
						<li class><a class="inner-login" href="<c:url value='/login'/>" >Đăng nhập</a></li>
                        <li class><a class="inner-login" href="<c:url value='/register'/>" >Đăng Ký</a></li>
					</security:authorize>
					<security:authorize access = "isAuthenticated()">
						<li class="nav-item"><a class="inner-login" href="#"> <%=SecurityUtils.getPrincipal().getUsername()%></a></li>
						<li class="nav-item"><a class="inner-login" href="<c:url value='/logout'/>">Thoát</a></li>
					</security:authorize>
				</ul>
			</div>
		</div>
</nav>