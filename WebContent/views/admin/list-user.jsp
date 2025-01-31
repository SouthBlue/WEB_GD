<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/ResourceAD" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Danh Sách ND</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/js/dataTables/dataTables.bootstrap.css"
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
						<h2>Danh sách người dùng</h2>
						<h5>Bạn có thể tùy chỉnh danh sách người dùng ở đây</h5>

					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
						
							<div class="panel-heading">Danh sách</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID</th>
												<th>Email</th>
												<th>Tên người dùng</th>
												<th>Mật khẩu</th>
												<th> Quyền </th>
												<th>Thao tác</th>
												

											</tr>
										</thead>
										<tbody>
											<c:forEach items="${userList }" var="list">
												<tr class="odd gradeX">
													<td>${list.id }</td>
													<td>${list.email }</td>
													<td>${list.username }</td>
													<td>${list.password }</td>

													<td class="center"><c:choose>
															<c:when test="${list.roleId ==1 }">
													Admin
													</c:when>
															<c:otherwise>Client</c:otherwise>
														</c:choose></td>

													<td><a
														href="<c:url value='/admin/user/edit?id=${list.id }'/>"
														class="center">Sửa</a> | <a
														href="<c:url value='/admin/user/delete?id=${list.id }'/>"
														class="center">Xóa</a></td>

												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--End Advanced Tables -->
						<div class="col-md-13" ><a href="/MYPROJECT/admin/user/add"><button class="btn btn-default1">Thêm người dùng</button></div>
						
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
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>