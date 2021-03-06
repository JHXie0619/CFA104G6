<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mealorder.model.*"%>
<%@ page import="com.mealorderdetail.model.*"%>
<%@ page import="com.utils.DecodeCookieUtil" %>
<%@ page import="com.auth.model.AuthVO"%>
<%@ page import="com.auth.model.AuthService"%>
<%
MealOrderService mealOrderSvc = new MealOrderService();
List<MealOrderVO> list = mealOrderSvc.getAll();
pageContext.setAttribute("list", list);

List<AuthVO> functionList = DecodeCookieUtil.getFunctionList(request);
pageContext.setAttribute("functionList", functionList);
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>後臺餐點訂單管理</title>

<!-- Custom fonts for this template -->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="../vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<%-- jQuery UI : css --%>
<link type="text/css" rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="/resources/demos/style.css">
<link type="text/css" rel="stylesheet" href="../css/back-end-color.css">

</head>




<body id="page-top">

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Daily Warm照護管理後台</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">會員資料管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../member/memberList.html"> <i class="fas fa-fw fa-table"></i>
					<span>一般會員管理</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">照護管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../carermgt/carerMgt.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>照護員管理</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../carermemapplymgt/CarerMemApplyMgt.jsp"> <i
					class="fas fa-fw fa-table"></i> <span>照護員申請審核</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../careorder/careOrder.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>照護訂單管理</span>
			</a></li>



			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">派車管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../driver/driver.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>司機基本資料管理</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../driverschedule/driverSchedule.jsp"> <i
					class="fas fa-fw fa-table"></i> <span>司機班表管理</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../driveorder/driveorder.jsp"> <i
					class="fas fa-fw fa-table"></i> <span>派車訂單管理</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">送餐管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../meal/listAllMeal.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>餐點資料管理</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../meal/mealOrder.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>餐點訂單管理</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">後台功能權限管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="../auth/auth.jsp">
					<i class="fas fa-fw fa-table"></i> <span>權限功能群組管理</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../auth/empAuth.jsp"> <i class="fas fa-fw fa-table"></i> <span>員工權限群組管理</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">員工管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="../emp/emp.jsp">
					<i class="fas fa-fw fa-table"></i> <span>員工資料維護</span>
			</a></li>
			<!-- Heading -->
			<div class="sidebar-heading">前台管理</div>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../infomanage/news.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>最新消息</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../infomanage/intro.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>服務簡介</span>
			</a></li>
			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="../infomanage/faq.jsp"> <i class="fas fa-fw fa-table"></i>
					<span>常見問題</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light  topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small" id="empName"></span>
								<img class="img-profile rounded-circle"
								src="../img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<FORM METHOD="post" ACTION="../emp/emp.do"
									style="margin-bottom: 0px;">
									<button class="dropdown-item " type="submit">
										<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										我的個人資料
									</button>
									<input type="hidden" name="action" value="get_My_Info">
								</FORM>
								<FORM METHOD="post" ACTION="../emp/emp.do"
									style="margin-bottom: 0px;">
									<button class="dropdown-item " type="submit">
										<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										修改密碼
									</button>
									<input type="hidden" name="action" value="change_The_Password">
								</FORM>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									登出
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">餐點訂單管理</h1>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<span class="m-0 font-weight-bold text-primary">訂單管理列表</span>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>訂單ID</th>
											<th>會員ID</th>
											<th>送餐起始日</th>
											<th>總天數</th>
											<th>訂單狀態</th>
											<th class="th" style="display: none"></th>
											<th>建立時間</th>
											<th>修改時間</th>
											<th></th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>訂單ID</th>
											<th>會員ID</th>
											<th>送餐起始日</th>
											<th>總天數</th>
											<th>訂單狀態</th>
											<th class="th" style="display: none"></th>
											<th>建立時間</th>
											<th>修改時間</th>
											<th></th>
										</tr>
									</tfoot>
									<tbody>
										<jsp:useBean id="order" scope="page"
											class="com.mealorder.model.MealOrderService" />
										<c:forEach var="mealOrderVO" items="${order.all}">
											<tr>
												<td><a href="#" id="opener${mealOrderVO.mealOrderId}">${mealOrderVO.mealOrderId}</a>
													<div style="display: none"
														id="dialog${mealOrderVO.mealOrderId}"
														title="餐點訂單#${mealOrderVO.mealOrderId}">

														<table class="table table-sm">
															<thead>
																<tr>
																	<th scope="col"><h4>訂單資訊</h4></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th>訂單單號</th>
																	<td>${mealOrderVO.mealOrderId}</td>
																</tr>
																<tr>
																	<th>起始日</th>
																	<td>${mealOrderVO.startDate}</td>
																</tr>
																<tr>
																	<th>總天數</th>
																	<td>${mealOrderVO.totalDays}天</td>
																</tr>
																<tr>
																	<th>餐點時段</th>
																	<c:if test="${mealOrderVO.mealTime == 111}">
																		<td>早餐、午餐、晚餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 110}">
																		<td>早餐、午餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 101}">
																		<td>早餐、晚餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 011}">
																		<td>午餐、晚餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 100}">
																		<td>早餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 010}">
																		<td>午餐</td>
																	</c:if>
																	<c:if test="${mealOrderVO.mealTime == 001}">
																		<td>晚餐</td>
																	</c:if>
																</tr>
																<tr>
																	<th>訂單成立時間</th>
																	<td>${mealOrderVO.createTime.toString().substring(0, 16)}</td>
																</tr>
															</tbody>
														</table>
														<br>
														<table class="table table-sm">
															<thead>
																<tr>
																	<th scope="col"><h4>餐點明細</h4></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th>編號</th>
																	<th>名稱</th>
																	<th>數量</th>
																	<th>金額</th>
																	<th>單價</th>
																</tr>
																<jsp:useBean id="mealOrderDetailSvc" scope="page"
																	class="com.mealorderdetail.model.MealOrderDetailService" />
																<c:forEach var="mealOrderDetailVO"
																	items="${mealOrderDetailSvc.all}">
																	<c:if
																		test="${mealOrderDetailVO.mealOrderId==mealOrderVO.mealOrderId}">
																		<tr>
																			<td>${mealOrderDetailVO.mealNo}</td>
																			<td>${mealOrderDetailVO.mealName}</td>
																			<td>${mealOrderDetailVO.mealCount}</td>
																			<td>${mealOrderDetailVO.mealAmount}</td>
																			<td>${mealOrderDetailVO.mealPrice}</td>
																		</tr>
																	</c:if>
																</c:forEach>
																<tr>
																	<th>總金額</th>
																	<td>${mealOrderVO.orderAmount}</td>
																</tr>
															</tbody>
														</table>
														<br>
														<table class="table table-sm">
															<thead>
																<tr>
																	<th scope="col"><h4>配送資訊</h4></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th>聯絡人</th>
																	<td>${mealOrderVO.contactName}</td>
																</tr>
																<tr>
																	<th>電話</th>
																	<td>${mealOrderVO.contactNumber}</td>
																</tr>
																<tr>
																	<th>地址</th>
																	<td>${mealOrderVO.addr}</td>
																</tr>
															</tbody>
														</table>
													</div>
												<td>${mealOrderVO.memId}</td>
												<td>${mealOrderVO.startDate}</td>
												<td>${mealOrderVO.totalDays}</td>
												<td id="status${mealOrderVO.mealOrderId}">${mealOrderVO.orderStatus}</td>
												<td id="select${mealOrderVO.mealOrderId}"
													style="display: none;">
													<c:choose>
													<c:when test="${(mealOrderVO.orderStatus).equals('已取消')}">
													${mealOrderVO.orderStatus}
													</c:when>
													<c:when test="${(mealOrderVO.orderStatus).equals('已結單')}">
													${mealOrderVO.orderStatus}
													</c:when>
													<c:when test="${(mealOrderVO.orderStatus).equals('已完成')}">
													${mealOrderVO.orderStatus}
													</c:when>
													<c:otherwise>
													<select
													id="myTest${mealOrderVO.mealOrderId}" name="status"
													onchange="change(${mealOrderVO.mealOrderId})">
														<option value="0">待執行</option>
														<option value="1">執行中</option>
														<option value="2">已完成</option>
														<option value="3">已結單</option>
														<option value="4">已取消</option>
														</select>
													</c:otherwise>
													</c:choose>
												</td>
												<td>${mealOrderVO.createTime.toString().substring(0, 16)}</td>
												<td>${mealOrderVO.updateTime.toString().substring(0, 16)}</td>
												<td>
													 <c:choose>
													<c:when test="${(mealOrderVO.orderStatus).equals('已取消')}">
													<input type="button" value="修改" disabled="disabled">
													</c:when>
													<c:when test="${(mealOrderVO.orderStatus).equals('已結單')}">
													<input type="button" value="修改" disabled="disabled">
													</c:when>
													<c:when test="${(mealOrderVO.orderStatus).equals('已完成')}">
													<input type="button"  value="修改"  disabled>
													</c:when>
													<c:otherwise>
													<input type="button" value="修改"
													onclick="update(${mealOrderVO.mealOrderId})"
													id="btn${mealOrderVO.mealOrderId}" class="function13" disabled>
													<form onSubmit="if(!confirm('已完成、已結單、已取消的訂單將無法再恢復，是否確定更改？')){return false;}" action="order" method="post">
														  <input type="submit" value="確認" style="display: none;" id="confirm${mealOrderVO.mealOrderId}" class="function13" disabled> 
											              <input type="hidden" name="mealOrderId" value="${mealOrderVO.mealOrderId}"> 
											              <input type="hidden" name="memId" value="${mealOrderVO.memId}">
											              <input type="hidden" name="orderStatus" value="" id="update${mealOrderVO.mealOrderId}"> 
											              <input type="hidden" name="action" value="getOne_for_update">
													</form>
													
													</c:otherwise>
													</c:choose>
													
													</td>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div Id="orderInfo"></div>
						</div>

					</div>
					<!-- /.container-fluid -->

				</div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<footer class="sticky-footer ">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">準備登出?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">若確定要登出請點選「登出」.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">取消</button>
						<button class="btn btn-primary" id="logout">登出</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="../vendor/jquery/jquery.min.js"></script>
		<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="../js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script src="../vendor/datatables/jquery.dataTables.min.js"></script>
		<script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

		<!-- Page level custom scripts -->
		<script src="../js/demo/datatables-demo.js"></script>
		<script type="text/javascript"
			src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="../js/login2.js"></script>
		<script type="text/javascript">
// 			<c:forEach var="mealOrderVO" items="${order.all}" varStatus="loop">

			$("#dialog${mealOrderVO.mealOrderId}").dialog({
				autoOpen : false,
				width : 700
			});
			$("#opener${mealOrderVO.mealOrderId}").click(function() {
				$("#dialog${mealOrderVO.mealOrderId}").dialog("open");
			});

			$("#dialogstatus${mealOrderVO.mealOrderId}").dialog({
				autoOpen : false,
				width : 400
			});
			$("#openerstatus${mealOrderVO.mealOrderId}").click(function() {
				$("#dialogstatus${mealOrderVO.mealOrderId}").dialog("open");
			});

// 			</c:forEach>

			$("#dialogadd").dialog({
				autoOpen : false,
				width : 700
			});
			$("#openeradd").click(function() {
				$("#dialogadd").dialog("open");
			});
		</script>
		<script type="text/javascript">
		function update(num) {
               document.querySelector("#btn"+num).style.display = "none";
               document.querySelector("#status"+num).style.display = "none";
               document.querySelector("#confirm"+num).style.display = "block";
               document.querySelector("#select"+num).style.display = "block";
			        }
		
		function change(num){
			document.querySelector("#update"+num).value = document.querySelector("#myTest"+num).value;
			
		}
		</script>
		
		<script type="text/javascript">
  			let array;
  		<c:forEach var="vo" items="${functionList}">
    		array = document.querySelectorAll('.function${vo.functionNoInt}');
    		for (let i = 0; i < array.length; i++) { 
      		array[i].removeAttribute('disabled'); 
    		}
  		</c:forEach>
		</script>
</body>

</html>