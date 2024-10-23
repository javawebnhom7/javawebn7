<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm tòa nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Danh sách tòa nhà</li>
            </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">
            <!-- /.ace-settings-container -->

            <div class="page-header">
                <h1 style="font-family: 'Times New Roman', Times, serif;">
                    Sửa hoặc thêm tòa nhà

                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12 ">

                </div>
            </div>
            <div class="row" style="font-family: 'Times New Roman', Times, serif;">
                    <form:form modelAttribute="buildingEdit" id="listForm" method="GET">
                    <div class="col-12" style=" width: 80%;box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
                                           margin-left: auto;
                                            margin-right: auto;">
                        <form class="form-horizontal" role="form" id="form-edit">
                            <div class="form-group" style="padding-top: 8px">
                                <label class="col-xs-2">Tên tòa nhà</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-2">Quận</label>
                                <div class="col-xs-3">

                                    <form:select class="form-control" path="district">
                                        <form:option value="">---Chọn quận---</form:option>
                                        <form:options items="${districts}"/>

                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Phường</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="ward"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Đường</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="street"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Kết cấu</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="typeCode"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Số tầng hầm</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="numberOfBasement"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Diện tích sàn</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="floorArea"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Hướng</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="direction"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Hạng</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="level"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Diện tích thuê</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="rentArea"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Giá thuê</label>
                                <div class="col-xs-10">
                                    <form:input class="form-control" path="rentPrice"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Mô tả giá</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" id="motagia" name="motatgia" value="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-2">Loại tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2"></label>
                                <div class="col-xs-9" style="padding-bottom: 8px">
                                    <c:if test="${not empty buildingEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddOrBuilding"
                                        style="margin-right: 8px">
                                            Cập nhật tòa nhà
                                        </button>
                                        <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác
                                        </button>
                                    </c:if>
                                    <c:if test="${empty buildingEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddOrBuilding"
                                         style="margin-right: 8px">
                                            Thêm tòa nhà
                                        </button>
                                        <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác
                                        </button>
                                    </c:if>

                                </div>
                            </div>
                            <form:hidden path="id" id="buildingId"/>
                        </form>
                    </div>
                </form:form>

            </div>


        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->
<script>
    $('#btnAddOrBuilding').click(function () {
        var data = {}
        var typeCode = [];
        var formData = $('#listForm').serializeArray();
        $.each(formData, function (i, v) {
            if (v.name != 'typeCode') {
                data["" + v.name + ""] = v.value;
            } else {
                typeCode.push(v.value);
            }
        });
        data['typeCode'] = typeCode;
        if (typeCode != "") {
            addOrUpdateBuilding(data);
        } else {
            window.location.href = "<c:url value="/admin/building-edit?typeCode=require"/>";
        }
    });

    //call api
    function addOrUpdateBuilding(data) {
        $.ajax({
            type: "POST",
            url: "/api/building",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (response) {
                console.log("Success");
            },
            error: function (response) {
                console.log("failed");
                console.log(response);
            }

        });
    }

    $('#btnCancel').click(function () {
        window.location.href = "/admin/building-list";
    });


    $('#btnAddBuilding').click(function () {
        var data = {}
        var typeCode = [];
        var formData = $('#form-edit').serializeArray();
        $.each(formData, function (i, v) {
            if (v.name != 'typeCode') {
                data["" + v.name + ""] = v.value;
            } else {
                typeCode.push(v.value);
            }
        });
        data['typeCode'] = typeCode;
        console.log("OK")
        //call api
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/api/building/",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            succsess: function (respond) {
                console.log("Success");
            },
            error: function (respond) {
                console.log("failed");
                console.log(respond);
            }
        })
    });


</script>
</body>
</html>
