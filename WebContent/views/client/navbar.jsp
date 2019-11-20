<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <c:url value="/Resource" var="url"></c:url>
      
 <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath }">
                        <img id="logo-header" src="${url}/img/logo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                   <jsp:include page="/views/client/cart.jsp"></jsp:include>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active"><a href="${pageContext.request.contextPath }/welcome">Trang chủ</a></li>
                        <!-- End Pages -->

                        <!-- Books -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Sản phẩm
                            </a>
                            <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath }/product/table" > TẤT CẢ SẢN PHẨM</a></li>
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
                        </li>
                        <!-- End Books -->


                      	<!-- Contact -->
                        <li><a href="${pageContext.request.contextPath }/contact">liên hệ</a></li>
                        <!-- Contact -->
                        
                   		<!-- About us -->
                        <li><a href="${pageContext.request.contextPath }/about">về chúng tôi</a></li>
                        <!-- About us -->
                        <!-- Login -->
						
                         <li style="line-height: 5.6; left: 15%;">
                        	<c:choose>
							<c:when test="${sessionScope.account == null}">
								
									<ul class="list-inline right-topbar pull-right">
										<li><a href="${pageContext.request.contextPath }/login">Đăng nhập</a>
											| <a href="${pageContext.request.contextPath }/register">Đăng ký</a></li>
									</ul>
								
							</c:when>
							<c:otherwise>
							
									<ul class="list-inline right-topbar pull-right">
										<li><a href="${pageContext.request.contextPath }/member/myaccount">Tài khoản</a> | <a
											href="${pageContext.request.contextPath }/logout">Đăng xuất</a></li>
									</ul>
								
							</c:otherwise>
						</c:choose>
						</li>
                        <!-- Login -->
                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            