<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>

</head>

<body>
<div class="blurred-box">

<div class="page-wrapper" style="
    background: #c8defccf;
">
    <div class="">
        <%--  SEARCH--%>
        <div class="search">
            <div class="container">
                <form:form id="ListForm" modelAttribute="modelSearch" action="/trang-chu"
                           method="GET">
                <div class="row" style="align-items: center">
                    <div class="col-12 col-md-3">
                        <div class="search-item">
                            <select class="search-option" name="search-option">
                                <option value>Tỉnh/thành phố</option>
                                <option value="">TP.Hà Nội</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="search-item">

<%--                            <select class="search-option" name="search-option" id="search-option">--%>
                                <form:select class="search-option" path="district">
                                    <form:option value="">Chọn quận</form:option>
                                    <form:options items="${districts}"/>
                                </form:select>
<%--                            </select>--%>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="search-item">
                             <form:select class="search-option" path="typeCode" multiple="none" >
                                    <form:option value="" select ="selected" >Loại toà nhà</form:option>
                                    <form:options select="disabled" items="${typeCodes}" />
                                </form:select>
                        </div>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="search-item">

                            <form:input class="search-option" path="areaFrom" placeholder="Diện tích thuê từ..." style="color: #fff;"/>

                        </div>
                    </div>

                    <div class="col-12 col-md-1">
                        <div class="search-btn">
                            <button class="inner-login">
                                <i class="fa-solid fa-magnifying-glass" style="font-size: 12px"></i>
                            </button>
                        </div>
                    </div>
                </div>
                </form:form>
            </div>
        </div>
        <!-- SLIDESHOW -->



        <!-- CONTENT 1  -->
        <div class="content">
            <div class="content-title">
                <div class="container">
                    <div class="title-cover">
                        <span id="title1">Dự án toà nhà cho thuê</span>
                    </div>
                </div>

            </div>
            <div class="content-product">
                <div class="container">
                    <div class="content1 justify-content-center">
                        <div class="row">
                            <c:forEach var="item" items="${buildingList}">
                                <div class="col-12 col-md-4">
                                    <div class="product1 ">
                                        <div class="product1-image new"></div>
                                        <div class="product1-conntent">
                                            <div class="product1-conntent-header">
                                                <a href="/detailbuilding-${item.id}">${item.name}</a>
                                            </div>
                                            <ul class="product1-conntent-list">
                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-location-dot"></i>
                                                    <span>${item.address}</span>
                                                </li>

                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-warehouse"></i>
                                                    <span>${item.rentArea} m2</span>
                                                    <i class="fa-solid fa-user-gear"></i>
                                                    <span>${item.managerName}</span>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="product1-footer">
                                            <span class="product1-footer-cost">${item.rentPrice} đ/tháng</span>
                                            <a href="detailbuilding-${item.id}">
                                                <button class="inner-login" >Xem chi tiết</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <p class = "desc-logo-footer mt-3 inner-nhom7">Nhóm 7 : JAVA </p>
                        <p class="desc-logo-footer mt-3">Các thành viên:</p>
                        <p class="desc-logo-footer mt-3">Hoàng Khánh Văn - B22DCKH131</p>
                        <p class="desc-logo-footer mt-3">Nguyễn Hữu Trường - B22DCKH129</p>
                        <p class="desc-logo-footer mt-3">Lê Văn Thọ - B22DCKH121</p>
                        <p class="desc-logo-footer mt-3">Nguyễn Thành Trung - B22DCKH125</p>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
            </div>
        </footer>
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>