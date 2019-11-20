<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Danh Sách SP</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/MYPROJECT/ResourceAD/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/MYPROJECT/ResourceAD/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/MYPROJECT/ResourceAD/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/MYPROJECT/ResourceAD/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<div id="wrapper">

		<jsp:include page="nav-bar.jsp"></jsp:include>

		<!-- /. NAV TOP  -->
		<jsp:include page="slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Tất cả sản phẩm</h2>
						<h5>Bạn có thể quản lý tất cả sản phẩm tại đây</h5>

					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">Bảng tổng hợp</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID </th>
												<th>Ảnh</th>
												<th>Tên SP</th>
												<th>Giá</th>
												<th>Loại</th>
												<th>Mô tả</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${proList }" var="pro" >
											<tr class="odd gradeX">
												<td>${pro.id }</td>
													<c:url value="${url}/Resource/img/Products/${pro.image }" var="imgUrl"></c:url>
													<td><img height="150" width="200" src="${imgUrl}" /></td>

													<td>${pro.name }</td>
												<td>${pro.price }</td>
												<td>${pro.category.name }</td>
												<td>${pro.des } </td>
												<td><a
														href="<c:url value='/admin/product/edit?id=${pro.id }'/>"
														class="center">Sửa</a>
														| <a
														href="<c:url value='/admin/product/delete?id=${pro.id }'/>"
														class="center">Xóa</a></td>
												
											</tr>
											</c:forEach>
											
											
										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
						<div class="col-md-13" ><a href="/MYPROJECT/admin/product/add"><button class="btn btn-default1">Thêm sản phẩm</button></div>
					</div>
				</div>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/MYPROJECT/ResourceAD/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/MYPROJECT/ResourceAD/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/MYPROJECT/ResourceAD/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/MYPROJECT/ResourceAD/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/MYPROJECT/ResourceAD/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/MYPROJECT/ResourceAD/js/custom.js"></script>

</body>
</html>