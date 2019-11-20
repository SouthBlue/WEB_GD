<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center"><img src="${url}/MYPROJECT/ResourceAD/img/templatemo_logo.png"
						class="user-image img-responsive" /></li>


					<li><a class="active-menu" href= "${pageContext.request.contextPath }/admin"><i
							class="fa fa-dashboard fa-3x"></i> Tổng quan</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/product/list"><i class="fa fa-desktop fa-3x"></i>
							Quản lý sản phẩm</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/user/list"><i class="fa fa-user fa-3x"></i>
							Quản lý người dùng</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/order/list"><i
							class="fa fa-bar-chart-o fa-3x"></i> Quản lý đặt hàng</a></li>

				</ul>

			</div>

		</nav>