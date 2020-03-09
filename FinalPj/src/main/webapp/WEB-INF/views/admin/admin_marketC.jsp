<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="x-ua-compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="msapplication-TileColor" content="#0f75ff">
		<meta name="theme-color" content="#2ddcd3">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="description" content="프리랜서 플랫폼">
		<meta name="author" content="sprukotechnologies">
		<meta name="keywords" content="freelancer,freelance,project,market service, free market">
		<link rel="icon" type="image/png" href="../images/hifive.png" />
		<link rel="shortcut icon" type="image/png" href="../images/hifive.png" />


		<!-- Title -->
		<title>하이파이브</title>

		<!-- Sidemenu Css -->
		<link href="../plugins/toggle-sidebar/sidemenu.css" rel="stylesheet" />


		<!-- Bootstrap Css -->
		<link href="../plugins/bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Dashboard Css -->
		<link href="../css/dashboard.css" rel="stylesheet" />
		<link href="../css/admin-custom.css" rel="stylesheet" />

		<!-- c3.js Charts Plugin -->
		<link href="../plugins/charts-c3/c3-chart.css" rel="stylesheet" />

		<!-- Morris.js Charts Plugin -->
		<link href="../plugins/morris/morris.css" rel="stylesheet" />

		<!-- Custom scroll bar css-->
		<link href="../plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

		<!---Font icons-->
		<link href="../plugins/iconfonts/plugin.css" rel="stylesheet" />
		<link href="../plugins/iconfonts/icons.css" rel="stylesheet" />



	</head>
		<body class="app sidebar-mini">
		<div id="global-loader"><img src="../images/other/loader.svg" class="loader-img floating" alt=""></div>
		<div class="page">
			<div class="page-main">
					<div class="app-header1 header py-1 d-flex">
					<div class="container-fluid">
						<div class="d-flex">
							<a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar" href="#"></a>
							<a class="header-brand" href="/">
								<img src="../images/brand/logo1.png" class="header-brand-img" alt="Pinlist logo">
							</a>
				<!--<a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar" href="#"></a> -->
							<div class="header-navicon">
								<a href="#" data-toggle="search" class="nav-link d-lg-none navsearch-icon">
									<i class="fa fa-search"></i>
								</a>
							</div>
						<!--  	<div class="header-navsearch">
								<a href="#" class=" "></a>
								<form class="form-inline mr-auto">
									<div class="nav-search">
										<input type="search" class="form-control header-search" placeholder="Searchâ¦" aria-label="Search" >
										<button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
									</div>
								</form>
							</div> -->
							<div class="d-flex order-lg-2 ml-auto">
				<!--  			<div class="dropdown d-none d-md-flex" >
									<a  class="nav-link icon full-screen-link">
										<i class="fe fe-maximize floating"  id="fullscreen-button"></i>
									</a>
								</div> -->
						
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon" data-toggle="dropdown">
										<i class="fa fa-bell-o"></i>
										<span class=" nav-unread badge badge-danger  badge-pill">4</span>
									</a>
									<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
										<a href="#" class="dropdown-item text-center">You have 4 notification</a>
										<div class="dropdown-divider"></div>
										<a href="#" class="dropdown-item d-flex pb-3">
											<div class="notifyimg">
												<i class="fa fa-envelope-o"></i>
											</div>
											<div>
												<strong>2 new Messages</strong>
												<div class="small text-muted">17:50 Pm</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<div class="notifyimg">
												<i class="fa fa-calendar"></i>
											</div>
											<div>
												<strong> 1 Event Soon</strong>
												<div class="small text-muted">19-10-2019</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<div class="notifyimg">
												<i class="fa fa-comment-o"></i>
											</div>
											<div>
												<strong> 3 new Comments</strong>
												<div class="small text-muted">05:34 Am</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<div class="notifyimg">
												<i class="fa fa-exclamation-triangle"></i>
											</div>
											<div>
												<strong> Application Error</strong>
												<div class="small text-muted">13:45 Pm</div>
											</div>
										</a>
										<div class="dropdown-divider"></div>
										<a href="#" class="dropdown-item text-center">See all Notification</a>
									</div>
								</div>
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon" data-toggle="dropdown">
										<i class="fa fa-envelope-o "></i>
										<span class=" nav-unread badge badge-warning  badge-pill">3</span>
									</a>
									<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
										<a href="#" class="dropdown-item d-flex pb-3">
											<img src="../images/faces/male/41.jpg" alt="avatar-img" class="avatar brround mr-3 align-self-center">
											<div>
												<strong>Blake</strong> I've finished it! See you so.......
												<div class="small text-muted">30 mins ago</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<img src="../images/faces/female/1.jpg" alt="avatar-img" class="avatar brround mr-3 align-self-center">
											<div>
												<strong>Caroline</strong> Just see the my Admin....
												<div class="small text-muted">12 mins ago</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<img src="../images/faces/male/18.jpg" alt="avatar-img" class="avatar brround mr-3 align-self-center">
											<div>
												<strong>Jonathan</strong> Hi! I'am singer......
												<div class="small text-muted">1 hour ago</div>
											</div>
										</a>
										<a href="#" class="dropdown-item d-flex pb-3">
											<img src="../images/faces/female/18.jpg" alt="avatar-img" class="avatar brround mr-3 align-self-center">
											<div>
												<strong>Emily</strong> Just a reminder that you have.....
												<div class="small text-muted">45 mins ago</div>
											</div>
										</a>
										<div class="dropdown-divider"></div>
										<a href="#" class="dropdown-item text-center">View all Messages</a>
									</div>
								</div>
						<!-- 		<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon" data-toggle="dropdown">
										<i class="fe fe-grid"></i>
									</a>
									<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow  app-selector">
										<ul class="drop-icon-wrap">
											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-envelope text-dark"></i>
													<span class="block"> E-mail</span>
												</a>
											</li>
											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-map text-dark"></i>
													<span class="block">map</span>
												</a>
											</li>

											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-bubbles text-dark"></i>
													<span class="block">Messages</span>
												</a>
											</li>
											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-user-follow text-dark"></i>
													<span class="block">Followers</span>
												</a>
											</li>
											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-picture text-dark"></i>
													<span class="block">Photos</span>
												</a>
											</li>
											<li>
												<a href="#" class="drop-icon-item">
													<i class="si si-settings text-dark"></i>
													<span class="block">Settings</span>
												</a>
											</li>
										</ul>
										<div class="dropdown-divider"></div>
										<a href="#" class="dropdown-item text-center">View all</a>
									</div>
								</div> -->
								<div class="dropdown ">
									<a href="#" class="nav-link pr-0 leading-none user-img" data-toggle="dropdown">
										<img src="../images/faces/male/25.jpg" alt="profile-img" class="avatar avatar-md brround">
									</a>
									<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow ">
										<a class="dropdown-item" href="profile.html">
											<i class="dropdown-icon si si-user"></i> My Profile
										</a>
										<a class="dropdown-item" href="emailservices.html">
											<i class="dropdown-icon si si-envelope"></i> Inbox
										</a>
										<a class="dropdown-item" href="editprofile.html">
											<i class="dropdown-icon  si si-settings"></i> Account Settings
										</a>
										<a class="dropdown-item" href="login.html">
											<i class="dropdown-icon si si-power"></i> Log out
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> 
		<!--  Sidebar menu-->
				<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
				<aside class="app-sidebar doc-sidebar">
				<!-- 	<div class="app-sidebar__user clearfix">
						<div class="dropdown user-pro-body">
							<div>
								<img src="../images/faces/male/25.jpg" alt="user-img" class="avatar avatar-lg brround">
								<a href="editprofile.html" class="profile-img">
									<span class="fa fa-pencil" aria-hidden="true"></span>
								</a>
							</div>
							<div class="user-info">
								<h2>Rubin Carmody</h2>
								<span>Web Designer</span>
							</div>
						</div>
					</div> -->
					<ul class="side-menu">
							<li>	
                                 <a class="side-menu__item" href="admin"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">통계</span></a>
                            </li>
						    <li>	
                                <a class="side-menu__item" href="/admin_member"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">회원관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="admin_marketF"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">마켓관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="admin_marketC"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">프로젝트관리</span></a>
                            </li>
                                              
					</ul>
					

	
					<div class="app-sidebar-footer">
						<a href="emailservices.html">
							<span class="fa fa-envelope" aria-hidden="true"></span>
						</a>
						<a href="profile.html">
							<span class="fa fa-user" aria-hidden="true"></span>
						</a>
						<a href="editprofile.html">
							<span class="fa fa-cog" aria-hidden="true"></span>
						</a>
						<a href="login.html">
							<span class="fa fa-sign-in" aria-hidden="true"></span>
							</a>
						<a href="chat.html">
							<span class="fa fa-comment" aria-hidden="true"></span>
						</a>
					</div>
				</aside>

				<div class="app-content  my-3 my-md-5">
					<div class="side-app">
							<div class="page-header">
							 <h4 class="page-title">프로젝트관리</h4>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
									<li class="breadcrumb-item active" aria-current="page">관리자페이지</li>
								</ol> 
							</div>			


						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Profits Analysis</h3>
									</div>
								<!-- 	<div class="card-body">
										<div id="morrisBar3" class="chart-visitors overflow-hidden"></div>
									</div> -->
									<div class="card-body">
										<div id="placeholder2" class="chartsh"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Ratings</h3>
									</div>
									<div class="card-body">
										<div id="chart-donut3" class="chartsh"></div>
									</div>

								</div>
							</div>
						</div>
<!--  -->				
			<div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default active">
					<div class="panel-heading " role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion1" href="#SearchC" aria-expanded="true" aria-controls="collapseOne">
								<b>검색하기</b><i class="fa fa-search"></i>
							</a>
						</h4>
					</div>				
							
				<div id="SearchC" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">		
	<!-- 원래있던거 --> <div class=" col-lg-12 bg-white mb-4 p-4 border" >
							<div class="form-group ">
								<div class="row">
									<div class="col-md-2">
										<label class="form-label"><b>조건선택</b></label>
									</div>
									<div class="col-md-3">
										<select class="form-control" name="type" id="type">
											<option value="" <c:out value="${pac.type == null?'selected':'' }" />>선택</option>
											<option value="PI" <c:out value="${pac.type eq 'PI'?'selected':'' }" />>payid</option>
											<option value="P" <c:out value="${pac.type eq 'P'?'selected':'' }" />>가격</option>
											<option value="S" <c:out value="${pac.type eq 'S'?'selected':'' }" />>결제상태</option>
											<option value="PGI" <c:out value="${pac.type eq 'PGI'?'selected':'' }" />>pgtid</option>
											<option value="N" <c:out value="${pac.type eq 'N'?'selected':'' }" />>구매자</option>
										</select>
									</div>
									<div class="col-md-7 input-group">
										<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="검색해주세요." id="keyword" name="keyword" value="${pac.keyword}">
									</div>
								</div>
							</div>						
			 				<div class="form-group ">
								<div class="row">
									<label class="form-label col-md-2"><b>기간선택</b></label>
									<div class="col-md-10 form-group">							
										<div class="input-group-prepend">									
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
											<input class="form-control fc-datepicker col-md-5 " placeholder="YYYY-MM-DD" type="text" id="startDate" name="startDate">
											<span>&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
											<input class="form-control fc-datepicker col-md-5 " placeholder="YYYY-MM-DD" type="text" id="endDate" name="endDate">
										</div>
					
									</div>									
								</div>
							</div> 
							<div class="row" style="margin-left:250px">
								<div class="col-md-4 mb-0">
									<!--<a href="#" class="btn btn-block btn-secondary fs-14"><i class="fa fa-search"></i> 검색하기</a>-->
									<button id="searchBtn" class="btn btn-block btn-secondary fs-14"><i class="fa fa-search"></i> 검색하기</button>
								</div>
								<div class="col-md-4 mb-0">
									<!--<input type="reset" class="btn btn-block btn-primary fs-14 "><i class="fa fa-repeat"></i>-->
									<button id="resetBtn" class="btn btn-block btn-primary fs-14"><i class="fa fa-repeat"></i> 초기화</button> 
								</div>
							</div>				
	<!-- 원래있던거 -->		</div> 
					</div>
				</div>
<!-- 검색창 끝-->	</div>

			<div class="card mt-5  ">
				<div class="table-responsive">
					<table class="table card-table ">
						<thead class="bg-primary text-white">
							<tr class="border-bottom text-white">											
								<th class="text-white font-weight-normal">payid</th>
								<th class="text-white font-weight-normal">가격(원)</th>
								<th class="text-white font-weight-normal">uid</th>
								<th class="text-white font-weight-normal">카드번호</th>
								<th class="text-white font-weight-normal">status</th>
								<th class="text-white font-weight-normal">카드이름</th>
								<th class="text-white font-weight-normal">pgtid</th>
								<th class="text-white font-weight-normal">결제자</th>
								<th class="text-white font-weight-normal">결제일</th>
							</tr>
						</thead>
						<tbody>
						<c:if test="${empty list}">
							<tr align="center" noshade>
							   <td colspan="9">정보가 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach var="dto" items="${list}">
								<tr class="border-bottom">											
								<td>${dto.payinfo_payid}</td>
								<td><fmt:formatNumber value="${dto.payinfo_price}" pattern="#,###,###,###" /></td>
								<td class="text-red">${dto.payinfo_uid}</td>
								<td class="">${dto.payinfo_cardnum}</td>
								<td>${dto.payinfo_status}</td>
								<td class="">${dto.payinfo_cardname}</td>
								<td>${dto.payinfo_pgtid}</td>
								<td class="text-right">${dto.payinfo_buyername}</td>
								<td>${dto.payinfo_rdate}</td>
							</tr>	
							</c:forEach>											
						</tbody>
					</table>
				</div>
<!--  -->	</div>
					<ul class="pagination mb-5">
							<!--  이전페이지 -->
						<c:if test="${pac.nowPage != 1}">
							<li class="page-item page-prev">							
								<a class="page-link" href="admin_marketC?nowPage=${pac.nowPage-1}&cntPerPage=${pac.cntPerPage}" tabindex="-1">Prev</a>
							</li>
						</c:if>
						<c:forEach var='p' begin="${pac.startPage}" end="${pac.endPage}">
								<c:choose>
									<c:when test="${p == pac.nowPage}">
										<li class='page-item active'><a class="page-link">${p}</a></li>
									</c:when>
									<c:when test = "${p != pac.nowPage }">
										<li class="page-item"><a class="page-link" href="admin_marketC?nowPage=${p}&cntPerPage=${pac.cntPerPage}">${p}</a></li>
									</c:when>
								</c:choose>
						</c:forEach>
						<c:if test ="${pac.nowPage != pac.lastPage}">
							<li class="page-item page-next">
								
								<a class="page-link" href="admin_marketC?nowPage=${pac.nowPage+1}&cntPerPage=${pac.cntPerPage}">Next</a>
							</li>
						</c:if>
					</ul> 
						
						
					</div>
				</div>
			</div>

			<!--footer-->
			<footer class="footer">
				<div class="container">
					<div class="row align-items-center flex-row-reverse">
						<div class="col-md-12 col-sm-12 mt-3 mt-lg-0 text-center">
							Copyright Â© 2019 <a href="#">Pinlist</a>. Designed by <a href="#">Spruko</a> All rights reserved.
						</div>
					</div>
				</div>
			</footer>
			<!-- End Footer-->
		</div>

		<!-- Back to top -->
		<a href="#top" id="back-to-top" ><i class="fa fa-rocket"></i></a>


		<!-- Dashboard Core -->
		
		<script src="../js/vendors/jquery-3.2.1.min.js"></script>	
		<script src="../plugins/bootstrap-4.1.3/popper.min.js"></script>
		
		<script src="../plugins/bootstrap-4.1.3/js/bootstrap.min.js"></script>
		<script src="../js/vendors/jquery.sparkline.min.js"></script>
		<script src="../js/vendors/selectize.min.js"></script>
		<script src="../js/vendors/jquery.tablesorter.min.js"></script>
		<script src="../js/vendors/circle-progress.min.js"></script>
		<script src="../plugins/rating/jquery.rating-stars.js"></script>		
		
		<script src="../js/flot.js"></script> 
		<script src="../plugins/flot/jquery.flot.js"></script>
		<script src="../plugins/flot/jquery.flot.fillbetween.js"></script>
		<script src="../plugins/flot/jquery.flot.pie.js"></script> 
		
		<!-- Fullside-menu Js-->
		<script src="../plugins/toggle-sidebar/sidemenu.js"></script>
	
		<!--Select2 js -->
		<script src="../plugins/select2/select2.full.min.js"></script>
		
		<!-- Charts Plugin -->
		<script src="../plugins/chart/Chart.bundle.js"></script>
		<script src="../plugins/chart/utils.js"></script>

		<!-- 원래 여기 Morris.js Charts Plugin  -->
		<script src="../plugins/morris/raphael-min.js"></script>  
		<script src="../plugins/morris/morris.js"></script>		
		 
		<!-- Input Mask Plugin 원래여기
		<script src="../plugins/input-mask/jquery.mask.min.js"></script>
		<script src="../js/index5.js"></script>  -->
		
  		<!-- c3.js Charts Plugin 도넛 Index Scripts  그래프 보다 먼저 -->
  		<script src="../plugins/charts-c3/d3.v5.min.js"></script>
		<script src="../plugins/charts-c3/c3-chart.js"></script>
		
		<!-- Index Scripts  그래프 -->		
		<script src="../js/charts.js"></script> 
		
		<!-- Datepicker js 날짜입력 -->
		<script src="../plugins/date-picker/spectrum.js"></script>
		<script src="../plugins/date-picker/jquery-ui.js"></script>
		<script src="../plugins/input-mask/jquery.maskedinput.js"></script>

		<!-- Inline js -->
		<script src="../js/select2.js"></script>
		<script src="../js/formelements.js"></script>
		
		<!--InputMask Js-->
		<script src="../plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"></script>
		
		<!---Accordion Js-->
		<script src="../plugins/accordion/accordion.min.js"></script>
		<script src="../js/accor.js"></script>
		
		<!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>
		
		<!--Counters -->
		<script src="../plugins/counters/counterup.min.js"></script>
		<script src="../plugins/counters/waypoints.min.js"></script>

		<!-- Custom Js -->
		<script src="../js/admin-custom.js"></script>
		<script src="../js/custom.js"></script> 
	</body>
	
<script type="text/javascript">
$(document).ready(function(){
	$("#searchBtn").click(function(){						        
          var type = $("#type option:selected").val();
          var keyword = $("#keyword").val();
          var startDate=  $("#startDate").val();
          var endDate = $("#endDate").val();
          if(startDate.length ==0 ||endDate .length == 0 ){
        	  alert("타입 : "+type+",키워드 : "+keyword+", 시작일: "+startDate+",종료일 :"+endDate); 
        	  window.location.href="searchCor.do?type="+type+"&keyword="+keyword;
          }else{
        	  alert("타입 : "+type+",키워드 : "+keyword+", 시작일: "+startDate+",종료일 :"+endDate); 
        	  window.location.href="searchCor.do?type="+type+"&keyword="+keyword+"&startDate="+startDate+"&endDate="+endDate;
          }
         
     })
     $("#resetBtn").click(function(){ 
	   	  $("#type option:selected").val('');    	 
	   	  $('#keyword').val('');
	   	  $("#startDate").val('');
	   	  $("#endDate").val('');
     }) 
})
</script>

</html>