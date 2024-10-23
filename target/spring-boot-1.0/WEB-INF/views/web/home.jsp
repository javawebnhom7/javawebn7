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

<div class="page-wrapper">
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

                            <form:input class="search-option" path="rentPriceFrom" placeholder="Diện tích thuê từ"/>

                        </div>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="search-item">
                             <form:select class="search-option" path="typeCode" multiple="none" >
                                    <form:option value="" select ="selected" >Loại toà nhà</form:option>
                                    <form:options select="disabled" items="${typeCodes}" />
                                </form:select>
                        </div>
                    </div>
                    <div class="col-12 col-md-1">
                        <div class="search-btn">
                            <button class="inner-login">
                                <i class="fa-solid fa-magnifying-glass"></i>
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
                        <span id="title1" style="font-family: Fahkwang">Dự án toà nhà cho thuê</span>
                    </div>
                </div>

            </div>
            <div class="content-product">
                <div class="container">
                    <div class="content1 justify-content-center">
                        <div class="row">
                            <c:forEach var="item" items="${buildingList}">
                                <div class="col-12 col-md-4">
                                    <div class="product1 vip">
                                        <div class="product1-image new"></div>
                                        <div class="product1-conntent">
                                            <div class="product1-conntent-header">
                                                <a href="">${item.name}</a>
                                            </div>
                                            <ul class="product1-conntent-list">
                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-location-dot"></i>
                                                    <span>${item.address}</span>
                                                </li>

                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-warehouse"></i>
                                                    <span>${item.floorArea} m2</span>
                                                    <i class="fa-solid fa-user-gear"></i>
                                                    <span>${item.managerName}</span>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="product1-footer">
                                            <span class="product1-footer-cost">2,5 Tỷ</span>
                                            <button class="inner-login" value="${item.id}"><a href="detailbuilding-${item.id}"
                                                                                      style="color:#fff">Xem chi
                                                tiết</a></button>
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
        <!-- CONTENT 2  -->
<%--        <section class="section-why mt-5">--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-12 col-md-12">--%>
<%--                        <div class="title_module_main a-center text-center">--%>
<%--                            <h2 style="margin-bottom: 15px;"><span>Vì sao bạn chọn bất động sản--%>
<%--                                        SkyLand ?</span>--%>
<%--                            </h2>--%>
<%--                            <p style="margin-bottom: 30px;">Chúng tôi cung cấp đầy đủ và chính xác--%>
<%--                                nhất thông tin--%>
<%--                                các dự án bất động sản trên--%>
<%--                                toàn quốc song hành với dịch vụ tư vấn nhanh chóng và hiệu quả</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-12 col-md-12">--%>
<%--                        <div class="wrap">--%>
<%--                            <div--%>
<%--                                    class="swiper_why swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-multirow">--%>
<%--                                <div class="swiper-wrapper">--%>
<%--                                    <div class="item swiper-slide swiper-slide-active">--%>
<%--                                        <div class="row section-why">--%>
<%--                                            <div class="col-12 col-md-4">--%>
<%--                                                <div class="wrap-temp d-flex">--%>
<%--                                                    <div class="ico">--%>
<%--                                                        <img class="img-responsive lazyload loaded"--%>
<%--                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why1.png?1676257083798" data-src=""--%>
<%--                                                             alt="Chất lượng tốt nhất" data-was-processed="true">--%>
<%--                                                    </div>--%>
<%--                                                    <div class="content_p ml-4">--%>
<%--                                                        <h4><a href="#" class="why-title a-text">Chất lượng--%>
<%--                                                            tốt nhất</a>--%>
<%--                                                        </h4>--%>
<%--                                                        <p class="why-desc">Nghiên cứu, thiết kế và--%>
<%--                                                            đầu tư xây dựng--%>
<%--                                                            với hệ thống dịch--%>
<%--                                                            vụ--%>
<%--                                                            với chất--%>
<%--                                                            lượng tốt nhất</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-12 col-md-4">--%>
<%--                                                <div class="wrap-temp d-flex">--%>
<%--                                                    <div class="ico">--%>
<%--                                                        <img class="img-responsive lazyload loaded"--%>
<%--                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why2.png?1676257083798" data-src="" alt=""--%>
<%--                                                             data-was-processed="true">--%>
<%--                                                    </div>--%>
<%--                                                    <div class="content_p ml-4">--%>
<%--                                                        <h4><a href="#" class="why-title a-text">Tìm kiếm--%>
<%--                                                            thông tin dễ--%>
<%--                                                            dàng</a></h4>--%>
<%--                                                        <p class="why-desc">Tìm kiếm bất động sản--%>
<%--                                                            bạn muốn theo danh--%>
<%--                                                            mục cực kì dễ--%>
<%--                                                            dàng</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-12 col-md-4">--%>
<%--                                                <div class="wrap-temp d-flex">--%>
<%--                                                    <div class="ico">--%>
<%--                                                        <img class="img-responsive lazyload loaded"--%>
<%--                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why3.png?1676257083798" data-src="" alt=""--%>
<%--                                                             data-was-processed="true">--%>
<%--                                                    </div>--%>
<%--                                                    <div class="content_p ml-4">--%>
<%--                                                        <h4><a href="#" class="why-title a-text">Kết nối--%>
<%--                                                            với nhà đầu tư</a>--%>
<%--                                                        </h4>--%>
<%--                                                        <p class="why-desc">Nhà đầu tư sẽ mang đến--%>
<%--                                                            những sản phẩm và--%>
<%--                                                            dịch vụ tốt nhất--%>
<%--                                                            đáp ứng nhu cầu của bạn</p>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="row">--%>
<%--                                        <div class="col-12 col-md-4">--%>
<%--                                            <div class="wrap-temp d-flex">--%>
<%--                                                <div class="ico">--%>
<%--                                                    <img class="img-responsive lazyload loaded"--%>
<%--                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why4.png?1676257083798" data-src=""--%>
<%--                                                         alt="Chất lượng tốt nhất" data-was-processed="true">--%>
<%--                                                </div>--%>
<%--                                                <div class="content_p ml-4">--%>
<%--                                                    <h4 class=""><a href="#" class="why-title a-text">Tối--%>
<%--                                                        ưu hóa dịch--%>
<%--                                                        vụ</a></h4>--%>
<%--                                                    <p class="why-desc">Nghiên cứu, thiết kế và đầu--%>
<%--                                                        tư xây dựng với--%>
<%--                                                        hệ thống dịch vụ--%>
<%--                                                        với chất--%>
<%--                                                        lượng tốt nhất</p>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-4">--%>
<%--                                            <div class="wrap-temp d-flex">--%>
<%--                                                <div class="ico">--%>
<%--                                                    <img class="img-responsive lazyload loaded"--%>
<%--                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why5.png?1676257083798" data-src=""--%>
<%--                                                         alt="Chất lượng tốt nhất" data-was-processed="true">--%>
<%--                                                </div>--%>
<%--                                                <div class="content_p ml-4">--%>
<%--                                                    <h4><a href="#" class="why-title a-text">Đảm bảo quyền--%>
<%--                                                        lợi khách--%>
<%--                                                        hàng</a></h4>--%>
<%--                                                    <p>--%>
<%--                                                    <p class="why-desc">Thực hiện các chương trình--%>
<%--                                                        chăm sóc và gia--%>
<%--                                                        tăng lợi ích cho--%>
<%--                                                        khách hàng.</p>--%>
<%--                                                    </p>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-4">--%>
<%--                                            <div class="wrap-temp d-flex">--%>
<%--                                                <div class="ico">--%>
<%--                                                    <img class="img-responsive lazyload loaded"--%>
<%--                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why6.png?1676257083798" data-src=""--%>
<%--                                                         alt="Chất lượng tốt nhất" data-was-processed="true">--%>
<%--                                                </div>--%>
<%--                                                <div class="content_p ml-4">--%>
<%--                                                    <h4><a href="#" class="why-title a-text">Tiết kiệm thời--%>
<%--                                                        gian và chi--%>
<%--                                                        phí</a></h4>--%>
<%--                                                    <p class="why-desc">Cập nhật giá cả nhanh chóng--%>
<%--                                                        và chính xác--%>
<%--                                                        giúp bạn tiết kiệm--%>
<%--                                                        chi phí hơn nhiều</p>--%>
<%--                                                    </p>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>
        <!-- CONTENT 3 - NEW  -->
<%--        <div class="content3">--%>
<%--            <div class="container">--%>
<%--                <div class="text-center">--%>
<%--                    <a class="content3-title" href="">Bất động sản mới nhất</a>--%>
<%--                </div>--%>
<%--                <div class="content3-product justify-content-center">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>
<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- CONTENT 4 - HOT -->
<%--        <div class="content3">--%>
<%--            <div class="container">--%>
<%--                <div class="text-center">--%>
<%--                    <a class="content3-title" href="">Bất động sản xem nhiều</a>--%>
<%--                </div>--%>
<%--                <div class="content3-product justify-content-center">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>
<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-12 col-md-3">--%>
<%--                            <div class="product2">--%>
<%--                                <div class="product1-image"></div>--%>

<%--                                <div class="product1-conntent">--%>
<%--                                    <div class="product1-conntent-header">--%>
<%--                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>--%>
<%--                                    </div>--%>
<%--                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3--%>
<%--                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến--%>
<%--                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và--%>
<%--                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn--%>
<%--                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu--%>
<%--                                            Giấy.</span>--%>
<%--                                    <ul class="product1-conntent-list">--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-location-dot"></i>--%>
<%--                                            <span>Số 03 Tôn Thất thuyết</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-building"></i>--%>
<%--                                            <span>Loại BĐS: Chung cư</span>--%>
<%--                                        </li>--%>
<%--                                        <li class="product1-conntent-item">--%>
<%--                                            <i class="fa-solid fa-earth-asia"></i>--%>
<%--                                            <span>Diện tích: 78m2 - 146m2</span>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>

<%--                                <div class="product1-footer">--%>
<%--                                    <span class="product1-footer-cost">2,5 Tỷ</span>--%>
<%--                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"--%>
<%--                                                                              style="color:#fff">Xem chi--%>
<%--                                        tiết</a></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- CONTENT 5 -->
<%--        <section class="section-subscribe mt-5">--%>
<%--            <div class="container">--%>
<%--                <div class="row text-center">--%>
<%--                    <div class="title_module_main a-center">--%>
<%--                        <h2>Nhận thông tin nhà đất miễn phí</h2>--%>
<%--                        <p class="mt-15">Cập nhật hơn 1.000.000 thông tin mua bán và--%>
<%--                            giao dịch nhà--%>
<%--                            đất mỗi--%>
<%--                            tháng tại 63 tỉnh thành phố trên cả nước</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="wrap-subscribe text-center">--%>
<%--                    <div class="row justify-content-center">--%>
<%--                        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">--%>
<%--                            <div class="module-get">--%>
<%--                                <div class="inner-get">--%>
<%--                                    <div class="form-inner">--%>
<%--                                        <form class="a-center"--%>
<%--                                              action="//dkt.us13.list-manage.com/subscribe/post?u=0bafe4be7e17843051883e746&amp;id=3bdd6e9e3b"--%>
<%--                                              method="post" id="mc-embedded-subscribe-form"--%>
<%--                                              name="mc-embedded-subscribe-form" target="_blank">--%>
<%--                                            <input type="email" value="" placeholder="Nhập địa chỉ email của bạn.."--%>
<%--                                                   name="EMAIL" id="mail"--%>
<%--                                                   aria-label="general.newsletter_form.newsletter_email">--%>
<%--                                            <button class="button-subscribe button-45 subscribe" name="subscribe"--%>
<%--                                                    id="subscribe">NHẬN TIN--%>
<%--                                                MIỄN--%>
<%--                                                PHÍ</button>--%>
<%--                                        </form>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>
        <!-- CONTENT 6 - NEW  -->

        <!-- FOOTER  -->
<%--        <div class="brand mt-5 border-top">--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>
<%--                    <div class="d-flex justify-content-evenly mt-4">--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand1.png?1676257083798" alt=""></div>--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand2.png?1676257083798" alt=""></div>--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand3.png?1676257083798" alt=""></div>--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand4.png?1676257083798" alt=""></div>--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand5.png?1676257083798" alt=""></div>--%>
<%--                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand6.png?1676257083798" alt=""></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

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