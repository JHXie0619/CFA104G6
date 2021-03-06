<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.List"%>

<%@page import="com.emp.model.service.EmpService"%>
<%@page import="com.emp.model.vo.EmpVO"%>
<%@page import="com.auth.model.AuthService"%>
<%@page import="com.auth.model.AuthVO"%>
<%@page import="com.utils.DecodeCookieUtil" %>

<%
List<EmpVO> empList = new EmpService().getAll();
List<AuthVO> authList = new AuthService().getAll();

pageContext.setAttribute("empList", empList);
pageContext.setAttribute("authList", authList);

List<AuthVO> functionList = DecodeCookieUtil.getFunctionList(request);

pageContext.setAttribute("functionList", functionList);
%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>empAuth</title>

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

</head>

<body id="page-top">

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
    <div class="sidebar-brand-text mx-3">Daily Warm??????????????????</div>
   </a>

   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">??????????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../member/memberList.html">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>

   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../carermgt/carerMgt.jsp">
     <i class="fas fa-fw fa-table"></i> <span>???????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../carermemapplymgt/CarerMemApplyMgt.jsp">
     <i class="fas fa-fw fa-table"></i> <span>?????????????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../careorder/careOrder.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>



   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../driver/driver.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../driverschedule/driverSchedule.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../driveorder/driveorder.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>

   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../meal/listAllMeal.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../meal/mealOrder.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>

   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">????????????????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../auth/auth.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????????????????</span>
   </a></li>
   <li class="nav-item"><a class="nav-link" href="../auth/empAuth.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????????????????</span>
   </a></li>
   <!-- Divider -->
   <hr class="sidebar-divider">

   <!-- Heading -->
   <div class="sidebar-heading">????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../emp/emp.jsp">
     <i class="fas fa-fw fa-table"></i> <span>??????????????????</span>
   </a></li>
   <!-- Heading -->
   <div class="sidebar-heading">????????????</div>

   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../infomanage/news.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../infomanage/intro.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????</span>
   </a></li>
   <!-- Nav Item - Tables -->
   <li class="nav-item"><a class="nav-link" href="../infomanage/faq.jsp">
     <i class="fas fa-fw fa-table"></i> <span>????????????</span>
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
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

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
										??????????????????
									</button>
									<input type="hidden" name="action" value="get_My_Info">
								</FORM>
								<FORM METHOD="post"
									ACTION="../emp/emp.do"
									style="margin-bottom: 0px;">
									<button class="dropdown-item " type="submit">
										<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										????????????
									</button>
									<input type="hidden" name="action" value="change_The_Password">
								</FORM>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									??????
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">????????????????????????</h1>
					<p class="mb-4">
						???????????????????????????
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">??????????????????</h6>
						</div>
						<div class="card-body">
							<div style="display: flex;">
								<div class="table-responsive" style="flex: 2;">
									<table class="table table-bordered" id="dataTable" width="100%"
										cellspacing="0">
										<thead>
											<tr>
												<th>????????????</th>
												<th>??????</th>
												<th>??????</th>
												<th>??????</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="empVO" items="${empList}">
												<tr>
													<td>${empVO.empId}</td>
													<td>${empVO.empName}</td>
													<td>${empVO.empPosition}</td>
													<td>${empVO.empAuthName}</td>
													<td>
														<button onclick="choose(${empVO.empId},'${empVO.empAuthNo}')">??????</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div style="flex: 1; padding-top: 20%; padding-left: 10%;">
									<form action="empAuth" method="post">
										<c:if test="${not empty errorMsgs}">
											<font style="color: red">?????????????????????:</font>
											<ul>
												<c:forEach var="message" items="${errorMsgs}">
													<li style="color: red">${message}</li>
												</c:forEach>
											</ul>
										</c:if>
										<div>
											<label for="id">????????????</label><br> 
											<input type="text" id="id" name="empId" placeholder="????????????" style="width: 200px;">
										</div>
										<br>
										<div>
											<label>????????????</label><br> 
											<select id="select" name="empAuthNo" style="width: 200px;">
												<option value="none" disabled selected>?????????</option>
												<c:forEach var="authVO" items="${authList}">
													<option value="${authVO.empAuthNo}">${authVO.empAuthName}</option>
												</c:forEach>
											</select>
										</div>
										<br>
										<div style="padding-left: 18%;">
											<input type="hidden" name="action" value="edit_auth_no">

											<button class="function2" type="submit" disabled>??????</button>

											<button id="empty" type="button">??????</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
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
					<h5 class="modal-title" id="exampleModalLabel">?????????????</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body">???????????????????????????????????????.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">??????</button>
					<button class="btn btn-primary" id="logout">
						??????
					</button>
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

	<script type="text/javascript">
		const id = document.querySelector('#id');
		const select = document.querySelector('#select');

		function choose(empId, authNo) {
			id.value = empId;
			select.value = authNo;
		}

		document.querySelector('#empty').addEventListener('click', () => {
	    	id.value = '';
			select.value = 'none';
		});
		
		
		  <c:forEach var="vo" items="${functionList}">
		   array = document.querySelectorAll('.function${vo.functionNoInt}');

		   for (let i = 0; i < array.length; i++) {
//		        array[i].setAttribute('disabled', true);
		       array[i].removeAttribute('disabled'); 
		   }
		  </c:forEach>
	</script>
	<script src="../js/login2.js"></script>
</body>

</html>