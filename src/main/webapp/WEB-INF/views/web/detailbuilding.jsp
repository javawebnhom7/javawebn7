
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
    <div class="detail" style="background: #c8defccf">
        <div class="container" style="background-color: #f5f5f56e; padding: 60px">
            <h2 style="font-family: Courier, monospace; border-bottom: solid 2px black; text-transform: capitalize">${building.name}</h2>
            <br>
            <div class="row align-items-center">
                <div class="col-md-6 text-center">
                    <img src="${building.avatar}" alt="Building Image" class="building-image" style="max-width: 100%; height: auto;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        border-radius: 8px;">
                </div>
                <div class="col-md-6">
                    <table style="font-family: Courier, monospace;" role="alert">
                        <tbody>

                        <tr>
                            <th>Địa chỉ :</th>
                            <td>Đường ${building.address}</td>
                        </tr>
                        <tr>
                            <th>Tổng số tầng :</th>
                            <td>${building.numberFloor}</td>
                        </tr>
                        <tr>
                            <th>Chung cư ở tầng :</th>
                            <td>${building.floor}</td>
                        </tr>
                        <tr>
                            <th>Diện tích sàn :</th>
                            <td>${building.floorArea}m²</td>
                        </tr>
                        <tr>
                            <th>Hướng :</th>
                            <td>${building.direction}</td>
                        </tr>
                        <tr>
                            <th>Hạng :</th>
                            <td>${building.level}</td>
                        </tr>
                        <tr>
                            <th>Giá thuê :</th>
                            <td>${building.rentPrice} đ/tháng</td>
                        </tr>
                        <tr>
                            <th>Phí dịch vụ :</th>
                            <td>${building.serviceFee} đ/tháng</td>
                        </tr>
                        <tr>
                            <th>Phí gửi ôtô :</th>
                            <td>${building.carFee} đ/tháng</td>
                        </tr>
                        <tr>
                            <th>Phí gửi xe máy :</th>
                            <td>${building.motoFee} đ/tháng</td>
                        </tr>
                        <tr>
                            <th>Giá điện :</th>
                            <td>${building.electricFee} đ/tháng</td>
                        </tr>
                        <tr>
                            <th>Đặt cọc trước :</th>
                            <td>${building.deposit}</td>
                        </tr>

                        <tr>
                            <th>Thời gian thuê :</th>
                            <td>${building.rentTime}</td>
                        </tr>
                        <tr>
                            <th>Loại toà nhà :</th>
                            <td>${building.typeCode}</td>
                        </tr>
                        <tr>
                            <th>Ghi chú :</th>
                            <td>${building.note}</td>
                        </tr>
                        <tr>
                            <th>Tên quản lý :</th>
                            <td>${building.managerName}</td>
                        </tr>
                        <tr>
                            <th>SĐT quản lý :</th>
                            <td>${building.managerPhone}</td>
                        </tr>
                        </tbody>
                    </table>
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
                    <p class="desc-logo-footer mt-3">Nguyễn Hữu Trường - B22DCKH131</p>
                    <p class="desc-logo-footer mt-3">Lê Văn Thọ - B22DCKH131</p>
                    <p class="desc-logo-footer mt-3">Nguyễn Thành Trung - B22DCKH131</p>
                </div>
                <div class="text-center">
                    <div class="border-bottom mb-5 mt-4"></div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>