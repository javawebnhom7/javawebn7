<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>

</head>


<body>
	<div class="container">
		<div class="login-wrap">
			<div class="login-html">
			<c:if test="${param.incorrectAccount != null}">
				<div class="alert alert-danger">
						Username or password incorrect
				</div>
			</c:if>
			<c:if test="${param.accessDenied != null}">
				<div class="alert alert-danger">
						You Not authorize
				</div>
			</c:if>
			<c:if test="${param.sessionTimeout != null}">
				<div class="alert alert-danger">
						Session Timeout
				</div>
			</c:if>
				<h2 class="fw-bold mb-2 text-uppercase">Đăng nhập</h2>
				<p class="text-white-50 mb-5">Hãy nhập tên tài khoản và mật khẩu của bạn!</p>
				<form action="j_spring_security_check" id="formLogin" method="post" class="login-form">
				<div class="group">
					<label class=" label" for="userName">Tên đăng nhập</label>
					<input type="text" class="input" id="userName" name="j_username">
				</div>

				<div class="group">
					<label class="label" for="password">Mật khẩu</label>
					<input type="password" class="input" id="password" name="j_password">
				</div>

				<div class="form-check d-flex justify-content-center mb-5">
					<div><input class="check" type="checkbox" value="" id="form2Example3cg" /></div>
					<div><label class="check">
						Remember Password
					</label></div>
				</div>


				<div class="group" style="display: flex; justify-content: center">
				<button type="submit" class="button6" >
					<span>Đăng nhập</span>
				</button>
				</div>
				<p class="text-center text-muted mt-2 mb-0">Chưa có tài khoản ?
            		<a href="/register" class="fw-bold text-body">
                		<u style="color: white ;">Đăng ký tại đây </u>
            		</a>
				</p>
				</form>
				<div class="d-flex justify-content-center text-center mt-2 pt-1">
					<a href="#!" class="login-extension text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
					<a href="#!" class="login-extension text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
					<a href="#!" class="login-extension text-white"><i class="fab fa-google fa-lg"></i></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>