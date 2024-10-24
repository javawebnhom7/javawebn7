<%--
  Created by IntelliJ IDEA.
  User: LE VAN THO
  Date: 21/10/2024
  Time: 3:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="container" style="background-color: #f5f5f5;">
    <h2 style="font-family: Courier, monospace;">Chi Tiết Tòa Nhà</h2>

    <div class="row align-items-center">
        <!-- Image on the left -->
        <div class="col-md-6 text-center">
            <img src="${building.avatar}" alt="Building Image" class="building-image" style="max-width: 100%; height: auto;">
        </div>

        <!-- Content on the right -->
        <div class="col-md-6">
            <table style="font-family: Courier, monospace;" role="alert">
                <tbody>
                <tr>
                    <th>Tên tòa nhà</th>
                    <td>${building.name}</td>
                </tr>
                <tr>
                    <th>Địa chỉ</th>
                    <td>${building.address}</td>
                </tr>
                <tr>
                    <th>Số tầng hầm</th>
                    <td>${building.numberOfBasement}</td>
                </tr>
                <tr>
                    <th>Diện tích sàn</th>
                    <td>${building.floorArea}m²</td>
                </tr>
                <tr>
                    <th>Hướng</th>
                    <td>${building.direction}</td>
                </tr>
                <tr>
                    <th>Hạng</th>
                    <td>${building.level}</td>
                </tr>
                <tr>
                    <th>Giá thuê</th>
                    <td>${building.rentPrice}đ</td>
                </tr>
                <tr>
                    <th>Phí dịch vụ</th>
                    <td>${building.serviceFee}</td>
                </tr>
                <tr>
                    <th>Phí gửi ôtô</th>
                    <td>${building.carFee}</td>
                </tr>
                <tr>
                    <th>Phí gửi xe máy</th>
                    <td>${building.motoFee}</td>
                </tr>
                <tr>
                    <th>Giá điện</th>
                    <td>${building.electricFee}</td>
                </tr>
                <tr>
                    <th>Đặt cọc trước</th>
                    <td>${building.deposit}</td>
                </tr>
                <tr>
                    <th>Chu kỳ đóng</th>
                    <td>${building.payment}</td>
                </tr>
                <tr>
                    <th>Thời gian thuê</th>
                    <td>${building.rentTime}</td>
                </tr>
                <tr>
                    <th>Loại hình</th>
                    <td>${building.typeCode}</td>
                </tr>
                <tr>
                    <th>Ghi chú</th>
                    <td>${building.note}</td>
                </tr>
                <tr>
                    <th>Tên quản lý</th>
                    <td>${building.managerName}</td>
                </tr>
                <tr>
                    <th>SĐT quản lý</th>
                    <td>${building.managerPhone}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>