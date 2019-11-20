<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/Resource" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VN Shop</title>
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">


</head>
<body>
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">

			<!-- Navbar -->
			<jsp:include page="/views/client/navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Slider ===-->
		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 1">
						<!-- MAIN IMAGE --> <img src="${url}/img/1.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">
					</li>
					<!-- END SLIDE -->
					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
						<!-- MAIN IMAGE --> <img src="${url}/img/3.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 3">
						<!-- MAIN IMAGE --> <img src="${url}/img/2.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">
					</li>
					<!-- END SLIDE -->

				</ul>
				<div class="tp-bannertimer tp-bottom"></div>
			</div>
		</div>
		<!--=== End Slider ===-->

		<!--=== Product Content ===-->
		<div class="container content-md">
			

			<div class="heading heading-v1 margin-bottom-20">
				<h2>Danh mục sản phẩm</h2>
			</div>
			<!--=== Illustration v1 ===-->
			<div class="row margin-bottom-50">
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img1"
							href="${pageContext.request.contextPath }/product/category?cate_id=1">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Nồi cơm điện</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img2"
							href="${pageContext.request.contextPath }/product/category?cate_id=2">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Bàn ủi</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img3"
							href="${pageContext.request.contextPath }/product/category?cate_id=3">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Bếp ga - bếp âm</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img4"
							href="${pageContext.request.contextPath }/product/category?cate_id=4">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Lò vi sóng</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img5"
							href="${pageContext.request.contextPath }/product/category?cate_id=5">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Nồi - chảo</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				
			</div>
			<div class="row margin-bottom-50">
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img6"
							href="${pageContext.request.contextPath }/product/category?cate_id=6">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Quạt</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img7"
							href="${pageContext.request.contextPath }/product/category?cate_id=7">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Đồ dùng nhà bếp</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img8"
							href="${pageContext.request.contextPath }/product/category?cate_id=8">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Máy xay sinh tố</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img9"
							href="${pageContext.request.contextPath }/product/category?cate_id=9">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Ấm đun</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-15 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img10"
							href="${pageContext.request.contextPath }/product/category?cate_id=10">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Bếp nướng - vỉ nướng</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--=== End Illustration v1 ===-->
			<div class="heading heading-v1 margin-bottom-40">
				<h2>Sản phẩm mới</h2>
			</div>
			<!--=== Illustration v2 ===-->
			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>

				<ul class="list-inline owl-slider">

					<c:forEach items="${pwelcome}" var="p">
						<c:url value="//Resource/img/Products/${p.image }" var="imgUrl"></c:url>
						<li class="item">
							<div class="product-img">
								<a
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
									width="280" height="280" src="${imgUrl }" alt=""></a> <a class="add-to-cart"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
									class="fa fa-shopping-cart"></i>Mua ngay</a>
								<div class="shop-rgba-red rgba-banner">New</div>
							</div>
							<div class="product-description product-description-brd">
								<div class="overflow-h margin-bottom-5">
									<div class="pull-left">${p.name }</a>
										</h4>
										<span class="gender text-uppercase">${p.category.name }</span>
									</div>
									<div class="product-price">
										<span class="title-price">${p.price } đ</span>

									</div>
								</div>
								
							</div>
						</li>
					</c:forEach>
				</ul>

			</div>
			<!--=== End Illustration v2 ===-->

		</div>
		<!--=== End Product Content ===-->

		<div class="container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Miễn phí vận chuyển</h3>
						<p>Miễn phí vận chuyển đối với các đơn hàng trong phạm vi TP. Hồ Chí Minh</p>
					</div>
				</div>
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Nhận tư vấn 24/7</h3>
						<p>Bạn có thể liên hệ với chúng tôi qua facebook Nam để nhận tư vấn miễn phí</p>
					</div>
				</div>
				<div class="col-md-4 product-service">
					<div class="product-service-heading">
						<i class="icon-refresh"></i>
					</div>
					<div class="product-service-in">
						<h3>Đổi trả miễn phí</h3>
						<p>Miễn phí đổi trả trong vòng 30 ngày kể từ ngày nhận hàng</p>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

			
		</div>
		<!--/end cotnainer-->

		
		<!--=== Sponsors ===-->
		<div class="container content">
			<div class="heading heading-v1 margin-bottom-40">
				<h2>Thương hiệu</h2>
			</div>

			<ul class="list-inline owl-slider-v2">
				<li class="item"><img src="${url}/img/trademark/9.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/10.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/11.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/12.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/8.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/1.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/trademark/2.png" alt="">
				</li>

			</ul>
			<!--/end owl-carousel-->
		</div>
		<!--=== End Sponsors ===-->



		<!--=== Footer v4 ===-->
		<jsp:include page="/views/client/footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script src="${url}/plugins/jquery.parallax.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/revolution-slider.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			RevolutionSlider.initRSfullWidth();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</body>
</html>