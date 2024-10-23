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
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="ace-icon fa fa-cog bigger-130"></i>
                </div>

                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                </select>
                            </div>
                            <span>&nbsp; Choose Skin</span>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"/>
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"/>
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"/>
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"/>
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <b>.container</b>
                            </label>
                        </div>
                    </div><!-- /.pull-left -->

                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"/>
                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"/>
                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"/>
                            <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                        </div>
                    </div><!-- /.pull-left -->
                </div><!-- /.ace-settings-box -->
            </div><!-- /.ace-settings-container -->

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
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-xs-3">Tên tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3">Quận</label>
                                <div class="col-xs-2">

                                    <form:select class="form-control" path="district">
                                        <form:option value="">---Chọn quận---</form:option>
                                        <form:options items="${districts}"/>

                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Phường</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="ward"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Đường</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="street"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Kết cấu</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="typeCode"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Số tầng hầm</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="numberOfBasement"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Diện tích sàn</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="floorArea"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Hướng</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="direction"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Hạng</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="level"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Diện tích thuê</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="rentArea"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Giá thuê</label>
                                <div class="col-xs-9">
                                    <form:input class="form-control" path="rentPrice"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3">Mô tả giá</label>
                                <div class="col-xs-9">
                                    <input class="form-control" type="text" id="motagia" name="motatgia" value="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-xs-3">Loại tòa nhà</label>
                                <div class="col-xs-9">
                                    <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3"></label>
                                <div class="col-xs-9">
                                    <c:if test="${not empty buildingEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddOrBuilding">
                                            Cập nhật tòa nhà
                                        </button>
                                        <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác
                                        </button>
                                    </c:if>
                                    <c:if test="${empty buildingEdit.id}">
                                        <button type="button" class="btn btn-primary" id="btnAddOrBuilding">
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





</script>
</body>
</html>
