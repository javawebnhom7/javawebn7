<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<div class="container">
    <div class="login-wrap">
        <form:form modelAttribute="registerAdd" id="registerForm" method="GET" class="login-html">
            <c:if test="${param.duplicateAccount != null}">
                <div class="alert alert-warning">Account already exists. Please use a different email or username.</div>
            </c:if>
            <c:if test="${param.registrationSuccess != null}">
                <div class="alert alert-success">Registration successful! Welcome aboard!</div>
            </c:if>
            <h2 class="fw-bold mb-2 text-uppercase">Đăng ký</h2>
            <p class="text-white-50 mb-2">Hãy nhập thông tin của bạn !</p>

            <div class="group">
                <label class=" label" for="userName">Tên đầy đủ</label>
                <form:input class="input" path="fullName" value=""/>
            </div>

            <div class="group">
                <label class="label">Username</label>
                <form:input class="input" path="userName" value=""/>
            </div>
            <div class="group">
                <label class="label" for="password">Mật khẩu</label>
                <form:input class="input" path="password" value="" type="password"/>
            </div>

            <div class="group" style="display: flex; justify-content: center">
                <button type="button" class="button6" id="registerBtn">
                    Đăng ký
                </button>
            </div>
            <div class="d-flex justify-content-center text-center mt-2 pt-1">
                <a href="#!" class="login-extension text-white"><i
                        class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="login-extension text-white"><i
                        class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="login-extension text-white"><i
                        class="fab fa-google fa-lg"></i></a>
            </div>

            <p class="text-center text-muted mt-2 mb-0">Đã có tài khoản?
                <a href="/login" class="fw-bold text-body">
                    <u style="color: white ;">Đăng nhập tại đây</u>
                </a>
            </p>

        </form:form>

    </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script>
    $('#registerBtn').click(function () {
        var data = {};
        var formData = $('#registerForm').serializeArray();
        $.each(formData, function (i, v) {
            data[v.name] = v.value;  // Đơn giản hóa cú pháp
        });

        // Gọi hàm để gửi dữ liệu
        if (data["fullName"] != "" && data["userName"] != "" && data["password"] != "") {
            createAccountInRegister(data);
            window.location.href = "<c:url value="/login"/>";
        } else {
            window.location.href = "<c:url value="/register?thieuthongtin"/>";
        }
    });

    //call api
    function createAccountInRegister(data) {
        $.ajax({
            type: "POST",
            url: "/api/user",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "json",
            success: function (response) {
                console.log("Success");
            },
            error: function (response) {
                console.log("failed");
                console.log(response);
            }
        });
    }
</script>
</body>
</html>