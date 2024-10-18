<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        <%--<spring:message code="label.user.list"/>--%>
        Danh sách tòa nhà
    </title>

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
                <h1>
                    Danh sách tòa nhà
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12 ">
                    <div class="widget-box ui-sortable-handle">
                        <div class="widget-header">
                            <h5 class="widget-title">Tìm</h5>

                            <div class="widget-toolbar">


                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>


                            </div>
                        </div>

                        <div class="widget-body" style="font-family: 'Times New Roman', Times, serif;">
                            <div class="widget-main">
                                <form:form id="ListForm" modelAttribute="modelSearch" action="/admin/building-list"
                                           method="GET">

                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <label class="name">Tên tòa nhà </label>
                                                    <%--                                                    <input type="text" class="form-control" name="name" value="${modelSearch.name}">--%>
                                                <form:input class="form-control" path="name"></form:input>
                                            </div>
                                            <div class="col-xs-6">
                                                <label class="name">Diện tích sàn</label>
                                                    <%--                                                    <input type="number" class="form-control" name="floorarea" value="">--%>
                                                <form:input class="form-control" path="floorArea"></form:input>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <label class="name">Quận</label>
                                                <form:select class="form-control" path="district">
                                                    <form:option value="">---Chọn quận---</form:option>
                                                    <form:options items="${districts}"/>

                                                </form:select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Phường</label>
                                                <input type="text" class="form-control" name="ward" value="">
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Đường</label>
                                                <input type="text" class="form-control" name="street" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-4">
                                                <label class="name">Số tầng hầm</label>
                                                <input type="text" class="form-control" name="numberOfBasement"
                                                       value="">
                                            </div>
                                            <div class="col-xs-4">
                                                <label class="name">Hướng</label>
                                                <input type="text" class="form-control" name="direction" value="">
                                            </div>
                                            <div class="col-xs-4">
                                                <label class="name">Hạng</label>
                                                <input type="number" class="form-control" name="level" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-3">
                                                <label class="name">Diện tích từ</label>
                                                <input type="number" class="form-control" name="areaFrom" value="">
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Diện tích đến</label>
                                                <input type="number" class="form-control" name="areaTo" value="">
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Giá thuê từ</label>
                                                <input type="number" class="form-control" name="rentPriceFrom" value="">
                                            </div>
                                            <div class="col-xs-3">
                                                <label class="name">Giá thuê đến</label>
                                                <input type="number" class="form-control" name="rentPriceTo" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">

                                            <div class="col-xs-5">
                                                <label class="name">Tên quản lý</label>
                                                <input type="text" class="form-control" name="managerName" value="">
                                            </div>
                                            <div class="col-xs-5">
                                                <label class="name">Số điện thoại quản lý</label>
                                                <input type="text" class="form-control" name="managerPhone" value>
                                            </div>
                                            <div class="col-xs-2">
                                                <label class="name">Nhân viên</label>
                                                <form:select class="form-control" path="staffId">
                                                    <form:option value="">---Chọn nhân viên phụ trách---</form:option>
                                                    <form:options items="${listStaffs}"/>


                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <button type="button" class="btn btn-xs btn-success"
                                                        id="btnSearchBuilding">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                    </svg>
                                                    Tìm kiếm
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            </form:form>
                        </div>
                    </div>

                    <div class="pull-right">
                        <a href="/admin/building-edit">
                            <button class="btn btn-info" title="Thêm tòa nhà">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-building-add" viewBox="0 0 16 16">
                                    <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"></path>
                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                                    <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                                </svg>
                            </button>
                        </a>
                        <button class="btn btn-danger" title="Xóa tòa nhà" id="btnDeleteBuilding">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-building-fill-x" viewBox="0 0 16 16">
                                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!--Bảng danh sách-->
        <div class="row" style="margin-top: 3em;">
            <div class="col-xs-12">
                <table id="tableList" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" name="checkList" value="" class="ace">
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>Tên tòa nhà</th>
                        <th>Địa chỉ</th>
                        <th>Số tầng hầm</th>
                        <th>Tên quản lý</th>
                        <th>Số điện thoại quản lý</th>
                        <th>Diện tích sàn</th>
                        <th>Diện tích trống</th>
                        <th>Diện tích thuê</th>
                        <th>Phí môi giới</th>
                        <th>THao tác</th>


                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="item" items="${buildingList}">
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" name="checkList" value="${item.id}" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>


                            <td>${item.name}</td>
                            <td>${item.address}</td>
                            <td>${item.numberOfBasement}</td>
                            <td>${item.managerName}</td>
                            <td>${item.managerPhone}</td>
                            <td>${item.floorArea}</td>
                            <td>${item.emptyArea}</td>
                            <td>${item.rentArea}</td>
                            <td>${item.serviceFee}</td>
                            <td>
                                <div class="hidden-sm hidden-xs btn-group">
                                    <button class="btn btn-xs btn-success" title="Giao tòa nhà"
                                            onclick="assignmentBuilding(${item.id})">
                                        <i class="ace-icon fa fa-check bigger-120"></i>
                                    </button>

                                    <a href="/admin/building-edit-${item.id}" class="btn btn-xs btn-info"
                                       title="Sửa tòa nhà">

                                        <i class="ace-icon fa fa-pencil bigger-120"></i>

                                    </a>

                                    <button class="btn btn-xs btn-danger" title="Xóa tòa nhà"
                                            onclick="deleteBuilding(${item.id})">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13"
                                             fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"></path>
                                            <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                                            <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                                        </svg>
                                    </button>


                                </div>


                            </td>


                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </div><!-- /.span -->
        </div>
    </div><!-- /.page-content -->

</div><!-- /.main-content -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog"
     style="font-family: 'Times New Roman', Times, serif;">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>

            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <table class="table table-striped table-bordered table-hover center" id="staffList">
                    <thead>
                    <tr>
                        <th class="center">Chọn</th>
                        </th>
                        <th class="center">Tên nhân viên</th>

                    </tr>
                    </thead>

                    <tbody>

                    </tbody>
                </table>
                <input type="hidden" id="buildingId" name="buildingId" value="">
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnassignmentBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>

<script>
    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        loadStaff(buildingId);
        $('#buildingId').val(buildingId);

    }

    function loadStaff(buildingId) {
        $.ajax({
            url: "/api/building/" + buildingId + '/staffs',
            type: "GET",
            // data: JSON.stringify(data),
            // contentType: "application/json",
            dataType: 'json',
            success: function (response) {
                var row = '';
                $.each(response.data, function (index, item) {
                    row += '<tr>';
                    row += '<td class="text-center"><input type="checkbox" value=' + item.staffId + ' id="checkbox_' + item.staffId + ' class="check-box-element" ' + item.checked + '/></td>';
                    row += '<td class="text-center">' + item.fullName + '</td>';
                    row += '</tr>';
                });
                $('#staffList tbody').html(row);
                console.info("susscess");


            },
            error: function (response) {
                console.log("failed");
                window.location.href = "<c:url value="/admin/building-list?message=error"/>";
                console.log(response);
            }
        });
    }

    $('#btnassignmentBuilding').click(function(e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        if(data['staffs']!=""){
             assignment(data);
        }
        console.log("OK");
    })

    function assignment(data){
        $.ajax({
            url: "/api/building/assignment",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: 'json',
            success: function (response) {

                $('#staffList tbody').html(row);
                console.info("susscess");

            },
            error: function (response) {
                console.info("Giao không thành công");
                window.location.href = "<c:url value="/admin/building-list?message=error"/>";
                console.log(response);
            }
        });
    }

    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#ListForm').submit();
    });

    function deleteBuilding(data) {
        var buildingId = [data];
        deleteBuildings(buildingId);
    }

    $('#btnDeleteBuilding').click(function (e) {
        e.preventDefault();
        var buildingIds = $('#tableList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        deleteBuildings(buildingIds);
    });

    function deleteBuildings(data) {
        $.ajax({
            type: "DELETE",
            url: "/api/building/" + data,
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
        });
    }
</script>
</body>
</html>
