<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="footer-v4">
	<div class="footer">
		<div class="container">
			<div class="row">
				<!-- About -->
				<div class="col-md-4 md-margin-bottom-40">
					<a href="index.html"><img class="footer-logo"
						src="static/img/logo-2.png" alt=""></a>
					<p>Trang này được sử dụng với mục đích học tập,
					 demo một số chức năng cơ bản</p>
					<br>
					<ul class="list-unstyled address-list margin-bottom-20">
						<li><i class="fa fa-angle-right"></i>97 Man Thiện, Hiệp Phú, Quận 9, TP. Hồ Chí Minh</li>
						<li><i class="fa fa-angle-right"></i>Điện thoại: 0357 955 544</li>
						<li><i class="fa fa-angle-right"></i>Email: giangnamstyle1998@gmail.com</li>
					</ul>

					<ul class="list-inline shop-social">
						<li><a href="https://www.facebook.com/giangvietnam"><i class="fb rounded-md fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="tw rounded-md fa fa-twitter"></i></a></li>
						<li><a href="#"><i
								class="gp rounded-md fa fa-google-plus"></i></a></li>
						<li><a href="https://www.youtube.com/channel/UC0SthLh0TvYVyp_QmUKSWTQ?view_as=subscriber"><i class="yt rounded-md fa fa-youtube"></i></a></li>
					</ul>
				</div>
				<!-- End About -->

				<!-- Simple List -->
				<div class="col-md-2 col-sm-3">
					<div class="row">
						<div class="col-sm-12 col-xs-6">
							<h2 class="thumb-headline">Giới thiệu</h2>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="${pageContext.request.contextPath }/about">Về chúng tôi</a></li>
							</ul>
						</div>

						<div class="col-sm-12 col-xs-6">
							<h2 class="thumb-headline"></h2>
							<ul class="list-unstyled simple-list">
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-2 col-sm-3">
					<div class="row">
						<div class="col-sm-12 col-xs-6">
							<h2 class="thumb-headline">Sản phẩm</h2>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=1" > NỒI CƠM ĐIỆN</a></li>
                                <li><a href="${pageContext.request.contextPath }/product/category?cate_id=2" > BÀN ỦI</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=3" > BẾP GA - BẾP ÂM</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=4" > LÒ VI SÓNG</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=5" > NỒI - CHẢO</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=6" > QUẠT</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=7" > ĐỒ DÙNG NHÀ BẾP</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=8" > MÁY XAY SINH TỐ</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=9" > ẤM ĐUN</a></li>
								<li><a href="${pageContext.request.contextPath }/product/category?cate_id=10" > BẾP NƯỚNG - VỈ NƯỚNG</a></li>
							</ul>
						</div>

						<div class="col-sm-12 col-xs-6">
						</div>
					</div>
				</div>

				<div class="col-md-2 col-sm-3">
					<div class="row">
						<div class="col-sm-12 col-xs-6">
							<h2 class="thumb-headline">Hỗ trợ khách hàng</h2>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="${pageContext.request.contextPath }/contact">Liên hệ</a></li>
							</ul>
						</div>

						
					</div>
				</div>
				<!-- End Simple List -->
			</div>
			<!--/end row-->
		</div>
		<!--/end continer-->
	</div>
	
</div>