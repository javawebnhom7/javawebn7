<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<nav class="navbar-expand-lg navbar-dark fixed-top">
	<%--<div class="container">--%>
		<%--<a class="navbar-brand" href="#">Nhóm 1</a>--%>
		<%--<button class="navbar-toggler" type="button" data-toggle="collapse"--%>
			<%--data-target="#navbarResponsive" aria-controls="navbarResponsive"--%>
			<%--aria-expanded="false" aria-label="Toggle navigation">--%>
			<%--<span class="navbar-toggler-icon"></span>--%>
		<%--</button>--%>
		<%--<div class="collapse navbar-collapse" id="navbarResponsive">--%>
			<%--<ul class="navbar-nav ml-auto">--%>
				<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
				<%--</a></li>--%>
				<%--<security:authorize access = "isAnonymous()">--%>
					<%--<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>="nav-item"--%>
				<%--</security:authorize>--%>
				<%--<security:authorize access = "isAuthenticated()">--%>
					<%--<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>--%>
				<%--</security:authorize>--%>
			<%--</ul>--%>
		<%--</div>--%>
	<%--</div>--%>




		<div class="row navbar">
			<div class="col-12 col-md-3">
				<div class="logo">
					<a href="/trang-chu" class="inner-nhom7">
						<img src="https://img.freepik.com/premium-vector/building-logo-icon-design-template-vector_67715-555.jpg?w=1480"
							 alt="" style="width: 20%; height: 20%">
						Nhóm 7
					</a>
				</div>
			</div>
<%--			<div class="col-12 col-md-6">--%>
<%--				<div class="item-menu">--%>
<%--					<div class="nav nav1">--%>
<%--&lt;%&ndash;						<div class="nav-item p-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a class="nav-item-link" href="/trang-chu">&ndash;%&gt;--%>
<%--&lt;%&ndash;								<span style="color: var(--primary-color);">Trang chủ</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<div class="nav-item p-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a href='<c:url value='/gioi-thieu'/>'>&ndash;%&gt;--%>
<%--&lt;%&ndash;								&lt;%&ndash;<span>Giới thiệu</span>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;								<span style="color: var(--primary-color);">Giới thiệu</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<div class="nav-item p-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;							&lt;%&ndash;<a class="nav-item-link" href="./Duan.html">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a href='<c:url value='/san-pham'/>'>&ndash;%&gt;--%>
<%--&lt;%&ndash;								&lt;%&ndash;<span>Sản phẩm</span>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;								<span style="color: var(--primary-color);">Sản phẩm</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<div class="nav-item p-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a href='<c:url value='/tin-tuc'/>'>&ndash;%&gt;--%>
<%--&lt;%&ndash;								&lt;%&ndash;<span>Tin tức</span>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;								<span style="color: var(--primary-color);">Tin tức</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<div class="nav-item p-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a href='<c:url value='/lien-he'/>'>&ndash;%&gt;--%>
<%--&lt;%&ndash;								&lt;%&ndash;<span>Liên hệ</span>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;									<span style="color: var(--primary-color);">Liên hệ</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
<%--					<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
<%--						<span class="sr-only">(current)</span>--%>
<%--					</a></li>--%>
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