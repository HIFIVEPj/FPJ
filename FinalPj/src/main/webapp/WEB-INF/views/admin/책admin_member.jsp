<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String classN = request.getParameter("classN");// %>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<meta name="msapplication-TileColor" content="#0f75ff">
		<meta name="theme-color" content="#9d37f6">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" /> 


		<!-- Title -->
		<title>Pinlist â Clean & Modern Admin Dashboard Bootstrap 4  HTML Template</title>
		<link rel="stylesheet" href="../fonts/fonts/font-awesome.min.css">

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
                                <a class="side-menu__item" href=""><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">회원관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href=""><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">마켓관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href=""><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">프로젝트관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="payments.html"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">매출관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="payments.html"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">2</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="payments.html"><i class="side-menu__icon fa fa-tachometer"></i><span class="side-menu__label">3</span></a>
                            </li>
                            
				

					</ul>
					

<!--  본문 시작 -->	
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
						 <h4 class="page-title">회원관리</h4>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
								<li class="breadcrumb-item active" aria-current="page">관리자페이지</li>
							</ol> 
						</div>

						<div class="row">
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-users fs-40 text-primary"></i>
										</div>
										<h5>Total Users</h5>
										<h2 class="counter mb-0">5,768</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-refresh-2 fs-40 text-primary"></i>
										</div>
										<h5>Total Updates</h5>
										<h2 class="counter mb-0">7,682</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-mail fs-40 text-primary"></i>
										</div>
										<h5>Total E-mail</h5>
										<h2 class="counter mb-0">276</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-photo-gallery fs-40 text-primary"></i>
										</div>
										<h5>Total Posts</h5>
										<h2 class="counter mb-0">9,035</h2>
									</div>
								</div>
							</div>
						</div>
<!--  -->
<!-- User-All-->	
			<div class="">
				<div class="row">
					<div class="col-lg-12 users-list">
					<form action="admin_member" method="Get"> 					
						<div class=" col-lg-12 page-header bg-white mb-4 p-4 border" style="margin-left:1px">
							<select class="form-control page-select" name="class_num" onchange="f(this)">
								<option value="">선택해주세요.</option>							
								<option value="1">전체</option>
								<option value="4">기업</option>
								<option value="2">개인</option>
							</select>
							<script type="text/javascript" >
							  function f(select){						        
						           var class_num = select.value;
						           location.href="admin_member?class_num="+class_num;	
						       }
							</script>
							
							<div class="page-options d-flex">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="search" name="keyword">
									<div class="input-group-append ">
										<button type="submit" class="btn btn-primary br-tr-7 br-br-7" id="searchBtn">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>
							</div>							
						</div>		
					</form>
				<div class="card">
					<div class="card-body">
						<div class="user-tabel table-responsive border-top">
						<table class="table card-table table-bordered table-hover table-vcenter text-nowrap">
							<tbody>
								<tr>
									<th class="w-1"></th>	
									<th>이름</th>
									<th>이메일</th>
									<th>소속</th>
									<th>Membership Status</th>
									<th>Member Since</th>
									<th></th>
								</tr>
								<c:forEach var="dto" items="${pa.list}">
								<tr>	
								<th>
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
											<span class="custom-control-label"></span>
										</label>
									</th>
									<td>${dto.name}</td>
									<td>${dto.email}</td>
									<td>
										<c:if test="${dto.class_num eq 2 ||dto.class_num eq 3 }">개인</c:if>
										<c:if test="${dto.class_num eq 4}">기업</c:if>
									</td>
									<td>
										<c:if test="${dto.status eq 0}"><a href="javascript:void(0)" class="badge badge-success">가입</a></c:if>
										<c:if test="${dto.status eq 1}"><a href="javascript:void(0)" class="badge badge-info">비활성</a></c:if>
										<c:if test="${dto.status eq 2}"><a href="javascript:void(0)" class="badge badge-danger">탈퇴</a></c:if>
									</td>
									<td>${dto.rdate}</td>
									<td>
										<a href="userprofile.html" class="btn btn-purple btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
									</td>
								</tr>
								</c:forEach>																					
							</tbody>
						</table>
						</div>
					</div>
				</div>					
					<ul class="pagination mb-5">
							<!--  이전페이지 -->
					<c:if test="${pageMaker.prev}">
						<li class="page-item page-prev">							
							<a class="page-link" href="admin_member?class_num=${classN}&nowPage=${pageMaker.startPage-1}" tabindex="-1">Prev</a>
						</li>
					</c:if>
					<c:forEach var='num' begin="${pageMaker.startPage}" end="${pageMaker.endPage}">	
							<li class='page-item active'><a class="page-link">${num}</a></li>							
					</c:forEach>
						<c:if test ="${pageMaker.next}">
							<li class="page-item page-next">									
								<a class="page-link" href="admin_member?class_num=${classN}&nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
							</li>
						</c:if>
					</ul>  
				</div>
				</div>
			</div>
	
	<!-- User end -->				
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
		<script src="../plugins/flot/jquery.flot.js"></script>
		<script src="../plugins/flot/jquery.flot.fillbetween.js"></script>
		<script src="../plugins/flot/jquery.flot.pie.js"></script>
		
	
		<!-- Fullside-menu Js-->
		<script src="../plugins/toggle-sidebar/sidemenu.js"></script>


		<!-- Charts Plugin -->
		<script src="../plugins/chart/Chart.bundle.js"></script>
		<script src="../plugins/chart/utils.js"></script>

		<!--Morris.js Charts Plugin -->
		<script src="../plugins/morris/raphael-min.js"></script>
		<script src="../plugins/morris/morris.js"></script>

		<!-- Input Mask Plugin -->
		<script src="../plugins/input-mask/jquery.mask.min.js"></script>
		<script src="../js/index5.js"></script>

  		<!-- Index Scripts  그래프 -->
		<script src="../js/flot.js"></script> 
		<script src="../js/charts.js"></script>
		
		<!-- c3.js Charts Plugin 도넛-->
		<script src="../plugins/charts-c3/d3.v5.min.js"></script>
		<script src="../plugins/charts-c3/c3-chart.js"></script>
		

		<!--Counters -->
		<script src="../plugins/counters/counterup.min.js"></script>
		<script src="../plugins/counters/waypoints.min.js"></script>

		<!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>


		<!-- Custom Js-->
		<script src="../js/admin-custom.js"></script>
		<script src="../js/custom.js"></script>
<script type="text/javascript">
/*
$('a[href="#tab2"]').on('show.bs.tab', function(e){	
	var activeTab = $(e.target).text();
	var class_num= '4';
	var test='0';
	//alert(activeTab);
	//alert(class_num);
	$.ajax({
		 type:"GET",
		 url:"admin_member",
		 data:{
				"class_num": class_num
		 },	
		 
		 success:function(data){	//data : checkSignup에서 넘겨준 결과값
			 //$("#data").empty().append(data);
			if(data.length>0){ 
		 		for(var i in data){
		 			var $class_num =data[i].class_num; 		 			
		 			var $mem_email=data[i].mem_email;
		 		} 
			 	alert("성공"+class_num);
			}
		 },error: function(data){
            alert("에러발생");
        }
	}) //ajax
})
$('a[href="#tab3"]').on('show.bs.tab', function(e){	
	var activeTab = $(e.target).text();
	var class_num= '2';
	alert(activeTab);
	alert(class_num);
	$.ajax({
		 type:"GET",
		 url:"admin_member",
		 data:{
				"class_num": class_num
		 },
		 success:function(data){	//data : checkSignup에서 넘겨준 결과값
			 //window.location.reload("admin_member");
		 	var item =data.mem_email;
		 	alter(item);
		},error: function(data){
            alert("에러발생");
        }
		}) //ajax
})*/
</script>

	</body>
</html>