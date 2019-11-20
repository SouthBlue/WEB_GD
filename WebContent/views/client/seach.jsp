<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
					<h1>Tìm kiếm</h1>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> Tên <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
									
									
										<form action="${pageContext.request.contextPath }/product/seach" method="get">
											<input type="text" name="name" />
											<input type="submit" value="Tìm" >
										</form>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2"
										href="#collapseTwo"> Loại <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<a href="${pageContext.request.contextPath }/product/category?cate_id=1" > NỒI CƠM ĐIỆN</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=2" > BÀN ỦI</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=3" > BẾP GA - BẾP ÂM</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=4" > LÒ VI SÓNG</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=5" > NỒI - CHẢO</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=6" > QUẠT</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=7" > ĐỒ DÙNG NHÀ BẾP</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=8" > MÁY XAY SINH TỐ</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=9" > ẤM ĐUN</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=10" > BẾP NƯỚNG - VỈ NƯỚNG</a>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
				</div>