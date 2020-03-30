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
							<div class="d-flex order-lg-2 ml-auto" style="line-height: 35px;">
				 				<div class="dropdown d-none d-md-flex" >
									<a  class="dropdown-item" href="project_list">										
									프로젝트 
									</a>
								</div> 	
								<div class="dropdown d-none d-md-flex" >
									<a  class="dropdown-item" href="market-list">
										프리마켓
									</a>
								</div> 
								<div class="dropdown d-none d-md-flex" >
									<a  class="dropdown-item" href="freelancerList">
										프리랜서
									</a>
								</div> 
								<div class="dropdown d-none d-md-flex" >
									<a  class="dropdown-item" href="customer_service_notice">
										공지사항
									</a>
								</div> 
								<div class="dropdown d-none d-md-flex" >
									<a  class="dropdown-item" href="customer_service_qa">
										문의하기
									</a>
								</div> 					
								<div class="dropdown d-none d-md-flex" >
									<a href="logout.do" class="dropdown-item">
										<i class="dropdown-icon si si-power" style="color:#1f719a;"></i> 로그아웃
									</a>
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
                                 <a class="side-menu__item" href="admin"><i class="side-menu__icon si si-chart"></i><span class="side-menu__label">통계/결재목록</span></a>
                            </li>
                            
						    <li>	
                                <a class="side-menu__item" href="/admin_member"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="admin_marketF"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">마켓관리</span></a>
                            </li>
                            
                             <li>	
                                 <a class="side-menu__item" href="admin_marketC"><i class="side-menu__icon si si-paypal"></i><span class="side-menu__label">프로젝트관리</span></a>
                            </li>
                                                           
					</ul>

				<!-- 	<div class="app-sidebar-footer">
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
					</div> -->
				</aside>

				<div class="app-content  my-3 my-md-5">
					<div class="side-app">
						<div class="page-header">
							 <h4 class="page-title">통계/결재목록</h4>
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
										<h5>총 회원수</h5>
										<h2 class="counter mb-0">${totalCount}</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-refresh-2 fs-40 text-primary"></i>
										</div>
										<h5>Today 마켓수</h5>
										<h2 class="counter mb-0">${getMarketCountSys}</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-refresh-2 fs-40 text-primary"></i>
										</div>
										<h5>Today 프로젝트수</h5>
										<h2 class="counter mb-0">${getProjectCountSys}</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-12">
								<div class="card">
									<div class="card-body text-center">
										<div class="mb-3">
											<i class="pe-7s-photo-gallery fs-40 text-primary"></i>
										</div>
										<h5>미승인건</h5>
										<h2 class="counter mb-0">${getMarketListState}</h2>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">마켓/프로젝트 매출</h3>
									</div>
									<div class="card-body">
										<div id="linechart" class="chartsh"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">회원비율</h3>
									</div>
									<div class="card-body">
										<div id="chart-donut3" class="chartsh"></div>
									</div> 
									
								</div>
							</div>
						</div>
						
	<!-- 				<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">마켓/프로젝트 매출</h3>
								</div>
								<div class="card-body">
									<div id="chart" class="chartsh"></div>
								</div>
							</div>
						</div> -->
						
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">마켓게시글 목록</h3>
									</div>
								<form id="marketA" name="marketA" action="updateMarketState.do" method="post">	
									<div class="card-body">
										<div class="table-responsive border-top userprof-tab">
											<table class="table table-bordered table-hover mb-0">
												<thead>
													<tr>														
														<th>제목</th>
														<th>글쓴날짜</th>
														<th>가격</th>
														<th>결제상태</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach var="dto" items="${list}">
													<tr>
														<td>
															<div class="media mt-0 mb-0">
																<div class="card-aside-img">
																	<a href="#"></a>
																	<!--
																	<img src="../hifiveImages/marketThumbnails/${market.market_fname}" class="icon-left" alt="" id="prev-img">
																	-->
																	<img src="/home/ubuntu/hifive/hifiveImages/marketThumbnails/${dto.market_fname}" class="icon-left" alt="" id="prev-img">
																</div>
																<div class="media-body">
																	<div class="card-item-desc ml-4 p-0 mt-2">
																		<a href="market-content?market_num=${dto.market_num}" class="text-dark"><h4 class="font-weight-semibold">${dto.market_sub}</h4></a>
																		<!--<a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-25-2018 , 16:54</a><br>		-->																
																	</div>
																</div>
															</div>
														</td>
														<td><fmt:formatDate value="${dto.market_rdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td> 														
														<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.market_price}" pattern="#,###,###,###" /></td>
														<td>
															<c:if test="${dto.market_state eq 0}">
															<a href="javascript:void(0)" style="color:white;" class="badge badge-warning">미승인</a>
															</c:if>
															<c:if test="${dto.market_state eq 1}">
															<a href="javascript:void(0)" style="color:white;" class="badge badge-success">승인</a>
															</c:if>
															<c:if test="${dto.market_state eq 2}">
															<a href="javascript:void(0)" style="color:white;" class="badge badge-danger">거절</a>		
															</c:if>
															
														</td>
														<td>
															<c:if test="${dto.market_state eq 0}">
															<a href="updateMarketState.do?market_num=${dto.market_num}&market_state=1" id="admitBtn" class="btn btn-primary btn-sm" ><i class="fa fa-check"></i>승인하기</a>
															<a href="updateMarketState.do?market_num=${dto.market_num}&market_state=2" id="refuseBtn" class="btn btn-secondary btn-sm" ><i class="fa fa-close"></i>거절하기</a>         
															                                                
															</c:if>						
															<c:if test="${dto.market_state eq 1}">
																<a href="javascript:void(0)" style="color:white;" class="tag tag-gray">결재완료</a>
															</c:if>
															<c:if test="${dto.market_state eq 2}">
																<a href="javascript:void(0)" style="color:white;" class="tag tag-gray">결재완료</a>		
															</c:if>
														<!-- <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
															<a class="btn btn-danger text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
															<a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
															<a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a> -->
														</td>
													</tr>
													
												</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</form>	
								</div>
							</div>
						</div>	
						
						<ul class="pagination mb-5">
							<!--  이전페이지 -->
						<c:if test="${pamarket.nowPage != 1}">
							<li class="page-item page-prev">							
								<a class="page-link" href="admin?nowPage=${pamarket.nowPage-1}&cntPerPage=${pamarket.cntPerPage}" tabindex="-1">Prev</a>
							</li>
						</c:if>
						<c:forEach var='p' begin="${pamarket.startPage}" end="${pamarket.endPage}">
								<c:choose>
									<c:when test="${p == pamarket.nowPage}">
										<li class='page-item active'><a class="page-link">${p}</a></li>
									</c:when>
									<c:when test = "${p != pamarket.nowPage }">
										<li class="page-item"><a class="page-link" href="admin?nowPage=${p}&cntPerPage=${pamarket.cntPerPage}">${p}</a></li>
									</c:when>
								</c:choose>
						</c:forEach>
						<c:if test ="${pamarket.nowPage != pamarket.lastPage}">
							<li class="page-item page-next">
								<a class="page-link" href="admin?nowPage=${pamarket.nowPage+1}&cntPerPage=${pamarket.cntPerPage}">Next</a>
							</li>
						</c:if>
					</ul> 		

											
					</div>
				</div>
				
				
				
<!-- page main -->	</div>
					
			
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
		<!-- <a href="#top" id="back-to-top" ><i class="fa fa-rocket"></i></a>
			 -->


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
	</body>
<script>
$(document).ready(function(){
	/*  도넛차트 적용하기   */
	var pieData = {
		      기업: ${totalCountCor},
		      개인: ${totalCountFree}
		 //인증안한개인: 666,

		}
		var chartDonut = c3.generate({
		  bindto: "#chart-donut3",
		  data: {
		    json: [pieData],
		    keys: {
		      value: Object.keys(pieData),
		    },
		    type: "donut",
		  },
		  donut: {
		    title: "회원구분",
		  },
		});

		
/*  도넛차트 적용하기 끝   */	


/*******바 차트(chart) **************/
		var chart = c3.generate({
		    data: {
		        columns: [
		            ['data1', 100, 300, 200, 400, 500],
		            ['data2', 10, 30, 20, 40, 50]
		        ],
		    type: 'bar'
		    }
		});
/************************/
 /*****************************************

 var chart = c3.generate({
	  bindto: "#linechart",
	  data: {
	    columns: [
	      ['data1', 30, 200, 100, 400, 150, 250],
	      ['data2', 50, 20, 10, 40, 15, 25]
	    ]
	  }
	});
*****************************************/
  var chart = c3.generate({
     bindto: '#linechart',
     data:{
         json:{
             date: ${month},             
           	  마켓: ${sumFree},
                                  프로젝트: ${sumCor}
         },
         x: 'date',
         type: 'line',
     },
     grid: {
         x: {
             show: true
         },
         y: {
             show: true
         }
     }
 });
 
})

$(".admitBtn").on("click",function(){	
	$("#market_state").attr("value","1");	
	var market_state= $("#market_state").val();		
	marketA.submit();	
})
$(".refuseBtn").on("click",function(){	
	$("#market_state").attr("value","2");	
	var market_state= $("#market_state").val();	
	marketA.submit();	
})


		
</script>
</html>