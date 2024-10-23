<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<section class="vh-100 gradient-custom form-register">
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card text-white" style="border-radius: 1rem; background-color: #35bf76;">
                    <div class="card-body p-2 px-5 text-center">
                        <div class="md-5 md-4 mt-4 pb-2">
                            <h2 class="fw-bold mb-2 text-uppercase">Create an account</h2>
                            <p class="text-white-50 mb-2">Please enter your Information</p>
                            <form:form modelAttribute="registerAdd" id="registerForm" method="GET">
                                <div class="col-xs-12">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-xs-12">Fullname</label>
                                            <div class="col-xs-12">
                                                <form:input class="form-control" path="fullName"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-12">Username</label>
                                            <div class="col-xs-12">
                                                <form:input class="form-control" path="userName"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-12">Password</label>
                                            <div class="col-xs-12">
                                                <form:input class="form-control" path="password"/>
                                            </div>
                                        </div>



                                        <div class="form-group">

                                            <div class="col-xs-12">

                                               <button type="button" class="btn btn-primary" id="registerBtn">
                                                    Register
                                                    </button>

                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </form:form>


                            <div class="d-flex justify-content-center text-center mt-2 pt-1">
                                <a href="#!" class="login-extension text-white"><i
                                        class="fab fa-facebook-f fa-lg"></i></a>
                                <a href="#!" class="login-extension text-white"><i
                                        class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                <a href="#!" class="login-extension text-white"><i
                                        class="fab fa-google fa-lg"></i></a>
                            </div>

                            <p class="text-center text-muted mt-2 mb-0">Have already an account? <a href="/login"
                                                                                                    class="fw-bold text-body"><u
                                    style="color: white ;">Login here</u></a></p>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $('#registerBtn').click(function () {
        var data = {};
        var formData = $('#registerForm').serializeArray();
        $.each(formData, function (i, v) {
            data[v.name] = v.value;  // Đơn giản hóa cú pháp
        });

        // Gọi hàm để gửi dữ liệu
        createAccountInRegister(data);
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