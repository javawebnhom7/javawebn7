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
		<!-- <h1 class="form-heading">login Form</h1> -->
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

						<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
						<p class="text-white-50 mb-5">Please enter your login and password!</p>
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

						<p class="foot-lnk"><a class="text-white-50" href="#!">Forgot password?</a></p>
<%--						<div class="hr"></div>--%>
						<div class="group" style="display: flex; justify-content: center">
						<button type="submit" class="button6" >
							<span>Đăng nhập</span>
						</button>
						</div>

						</form>
						<div class="d-flex justify-content-center text-center mt-2 pt-1">
							<a href="#!" class="login-extension text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
							<a href="#!" class="login-extension text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
							<a href="#!" class="login-extension text-white"><i class="fab fa-google fa-lg"></i></a>
						</div>
					</div>
<%--					<div class="text-center">--%>
<%--						<p class="mb-0 tex-center account">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a></p>--%>
<%--					</div>--%>


				<%--<script src="./assets/dist/js/boostrap-v5/bootstrap.js"></script>--%>
				<%--<script src="./assets/dist/js/fontawsome-v5/all.js"></script>--%>
			</div>
		</div>
	</div>
</body>
</html>