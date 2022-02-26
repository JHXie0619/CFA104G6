<%@page import="com.careordermgt.model.CareApplyMgtVO"%>
<%@page import="com.careordermgt.model.CareApplyMgtService"%>
<%@page import="com.requesttab.model.RequestTabPVO"%>
<%@page import="com.requesttab.model.RequestTabService"%>
<%@page import="com.utils.DecodeCookieUtil"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<%
Integer carerID = (int) DecodeCookieUtil.getMemId(request);
%>
<%
CareApplyMgtService camSvc = new CareApplyMgtService();
CareApplyMgtVO careApplyMgtVo = (CareApplyMgtVO) request.getAttribute("careApplyMgtVo");
pageContext.setAttribute("careApplyMgtVo", careApplyMgtVo);
%>
<%
RequestTabService rtSvc = new RequestTabService();
List<RequestTabPVO> requestTabList = (List<RequestTabPVO>) request.getAttribute("requestTabList");
pageContext.setAttribute("requestTabList", requestTabList);
%>

<!-- 應徵單管理(服務列表) -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>瀏覽單一應徵單 - DailyWarm</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="../assets/healthcare.png" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/styles.css" rel="stylesheet" />

<style>
div {
	width: 70%;
	margin: 0px auto;
}
#table1 tr:nth-child(even) {
	background: #ffdea08c;
}
#table2 li:nth-child(even) {
	background: #ffdea08c;
}
.btn-primary {
	float: right;
}
</style>

</head>
<body>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<!-- Navigation 導覽列 -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top1 py-3" id="mainNav">
        <div class="container px-4 px-lg-0">
            <a class="navbar-brand" href="../Carer.jsp">Daily Warm</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto my-2 my-lg-0">

                    <!-- 首頁 -->
                    <li class="nav-item"><a class="nav-link" href="../Carer.jsp">首頁</a></li>
                    <!-- 專業服務 -->
                    <li class="nav-item">
      <a class="nav-link" 
       href="<%=request.getContextPath()%>/front-end/updatecarerdata/showCarerData.do?action=showCarerData&carerID=<%=carerID%>">照護資料設定</a>
     </li>
                    <!-- 需求列表 -->
                    <li class="nav-item"><a class="nav-link" href="../careRequest/requestSearch.jsp">需求列表</a></li>
                    <!-- 服務列表 -->
                    <li class="nav-item"><a class="nav-link" href="../careordermgt/CareOrderMgt.jsp">服務列表</a></li>
                    <!-- 個人資料設定 -->
                    <li class="nav-item"><a class="nav-link" href="../member/setMemData.html">個人資料設定</a></li>
                    <!-- 通知 -->
                    <li class="nav-item"><a class="nav-link" href="../mailbox/noticeCenter.jsp">通知</a></li>
                    <!-- 會員 -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fas fa-user-circle fa-2x "></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" id="switchAcct" href="../afterlogin.jsp" >切換帳號</a></li>
                            <li><a class="dropdown-item" id="logout">登出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

	<!-- Services 服務內容 -->
	<section class="pt-5 pb-5 bg-primary">
		<div style="height: 100px"></div>
		<div>
			<table class="table table-sm" id="table1">
				<thead>
					<h1>訂單資訊</h1>
					<tr>
						<th scope="col"><h4>服務對象</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>需求單號：</th>
						<td>${careApplyMgtVo.requestId}</td>
					</tr>
					<tr>
						<th>需求者姓名：</th>
						<td>${careApplyMgtVo.patientName}</td>
					</tr>
					<tr>
						<th>需求者性別：</th>
						<c:if test="${careApplyMgtVo.patientGender == 0}">
							<td>男</td>
						</c:if>
						<c:if test="${careApplyMgtVo.patientGender == 1}">
							<td>女</td>
						</c:if>
					</tr>
					<tr>
						<th>需求者年齡：</th>
						<td>${careApplyMgtVo.patientAge}</td>
					</tr>
					<tr>
						<th>服務類型：</th>
						<c:if test="${careApplyMgtVo.serviceType == 0}">
							<td>居家照護</td>
						</c:if>
						<c:if test="${careApplyMgtVo.serviceType == 1}">
							<td>醫院看護</td>
						</c:if>
					</tr>
					<tr>
						<th>服務地點：</th>
						<td>${careApplyMgtVo.patientAddr}</td>
					</tr>
					<tr>
						<th>服務開始時間：</th>
						<td>${careApplyMgtVo.startTime.toString().substring(0, 16)}</td>
					</tr>
					<tr>
						<th>服務結束時間：</th>
						<td>${careApplyMgtVo.endTime.toString().substring(0, 16)}</td>
					</tr>
					<tr>
						<th>應徵時間：</th>
						<td>${careApplyMgtVo.applyTime.toString().substring(0, 16)}</td>
					</tr>
					<tr>
						<th>需求單成立時間</th>
						<td>${careApplyMgtVo.createTime.toString().substring(0, 16)}</td>
					</tr>
					<tr>
						<th>需求單更新時間</th>
						<td>${careApplyMgtVo.updateTime.toString().substring(0, 16)}</td>
					</tr>
					<tr>
						<th>備註：</th>
						<td>${careApplyMgtVo.note}</td>
					</tr>
					<tr>
						<th>訂單狀態：</th>
						<c:if test="${careApplyMgtVo.status == 0}">
							<td>需求者已拒絕您的應徵</td>
						</c:if>
						<c:if test="${careApplyMgtVo.status == 1}">
							<td>已成功應徵，等待回覆</td>
						</c:if>
						<c:if test="${careApplyMgtVo.status == 2}">
							<td>媒合成功</td>
						</c:if>
					</tr>

				</tbody>
			</table>
			<br>

			<table class="table table-sm" id="table2">
				<thead>
					<tr>
						<th scope="col"><h4>服務項目</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ol>
								<c:forEach var="requestTabPVO" items="${requestTabList}">
									<li>${requestTabPVO.serviceTabName}</li>
								</c:forEach>
							</ol>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
			<div>
				<a href="CareApplyMgt.jsp" class="btn btn-primary"><font size="4.5px">返回訂單管理</font></a>
			</div>
	</section>

	<!-- Footer -->
	<footer class="bg-light py-5">
		<div class="container px-4 px-lg-5">
			<div class="small text-center text-muted">Copyright &copy; 2021
				- Daily Warm</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../js/scripts.js"></script>
	<script src="../js/regist.js"></script>
	<script src="../js/utility.js"></script>
 	<script src="../js/afterLogin2.js"></script>

	<!-- Core theme JS-->
	<!-- <script src="js/scripts.js"></script> -->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script> -->

</body>
</html>