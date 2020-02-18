<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<!doctype html>
<html lang="zxx" dir="ltr">
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

		<!-- JQuery js-->
		<script src="../js/vendors/jquery-3.2.1.min.js"></script>

		<!-- Bootstrap js -->
		<script src="../plugins/bootstrap-4.1.3/popper.min.js"></script>
		<script src="../plugins/bootstrap-4.1.3/js/bootstrap.min.js"></script>

		<!-- summernote -->			
		<link href="/summernote/summernote-lite.css" rel="stylesheet">
		<!--
		<script src="../js/jquery.js"></script>
		<script src="../plugins/waves/js/jquery-3.2.1.slim.min.js"></script>
		-->
		<script type="text/javascript" src="/summernote/summernote-lite.js"></script>
		<script src="/summernote/lang/summernote-ko-KR.js"></script>


		<!-- Title -->
		<title>하이파이브</title>

		<!-- Bootstrap Css -->
		<link href="../plugins/bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Dashboard Css -->
		<link href="../css/dashboard.css" rel="stylesheet" />
		<link href="../css/admin-custom.css" rel="stylesheet" />


		<!-- Font-awesome  Css -->
		<link rel="stylesheet" href="../fonts/fonts/font-awesome.min.css">

		<!--Horizontal Menu-->
		<link href="../plugins/Horizontal2/Horizontal-menu/dropdown-effects/fade-down.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/horizontal.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/color-skins/color.css" rel="stylesheet" />

		<!--Select2 Plugin -->
		<link href="../plugins/select2/select2.min.css" rel="stylesheet" />

		<!-- Cookie css -->
		<link href="../plugins/cookie/cookie.css" rel="stylesheet">

		<!-- Owl Theme css-->
		<link href="../plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

		<!-- Custom scroll bar css-->
		<link href="../plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

		<!--Font icons-->
		<link href="../plugins/iconfonts/plugin.css" rel="stylesheet">
		<link href="../plugins/iconfonts/icons.css" rel="stylesheet">
		<link href="../plugins/sweet-alert/sweetalert.css" rel="stylesheet" />
		
		<!--for datatable-->
		<!-- Data table css -->
		<link href="../plugins/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="../plugins/datatable/jquery.dataTables.min.css" rel="stylesheet" />		
		<!-- jquery ui RangeSlider -->
		<link href="../plugins/jquery-uislider/jquery-ui.css" rel="stylesheet">
		<!--/for datatable-->
		
		<!-- loaders -->
		<link href="../css/loaders.css" rel="stylesheet" />
		
		<!-- Tabs Style -->
		<link href="../plugins/tabs/style.css" rel="stylesheet" />
		
		<!-- Date Picker Plugin -->
		<link href="../plugins/date-picker/spectrum.css" rel="stylesheet" />
		
		<!-- Sidemenu Css -->
		<link href="../plugins/toggle-sidebar/sidemenu.css" rel="stylesheet" />
		
		<!-- file Uploads -->
		<!--
        <link href="../plugins/fileuploads/css/dropify.css" rel="stylesheet" type="text/css" />
        -->
        <link rel="stylesheet" href="../plugins/fileuploads/css/dropify-multiple.min.css">
        <link rel="stylesheet" href="../plugins/fileuploads/css/dropify-multiple.css">
        <!--
        <link rel="stylesheet" href="../plugins/fileuploads/fonts/*">
        -->
        
        <!-- 파일업로드 -->
		<link href="../plugins/fileuploads-test/jquery.growl.css" rel="stylesheet" type="text/css">
		<link href="../plugins/fileuploads-test/fileup.css" rel="stylesheet" type="text/css">
		
		<!-- 카카오맵 -->
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script> 

	</head>
	<body>


		<!--Loader-->
		<div id="global-loader">
			<img src="../images/other/loader.svg" class="loader-img floating" alt="">
		</div>
		<!--
		<div class="dimmer active">
			<div class="lds-hourglass"></div>
		</div>
		-->


		<!--Topbar-->
		<div class="header-main">
			<div class="top-bar" style="background-color:#fff;">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 col-lg-8 col-sm-4 col-7">
							<!--
							<div class="top-bar-left d-flex">
								<div class="clearfix">
									<ul class="socials">
										<li>
											<a href="construction" class="text-dark"><i class="fa fa-cog mr-1" style="color:#1f719a;"></i> <span>관리자 페이지</span></a>
										</li>
									</ul>
								</div>
							</div>
							-->
						</div>
						<div class="col-xl-4 col-lg-4 col-sm-8 col-5">
							<div class="top-bar-right">
								<ul class="custom">						
								
								<c:choose>
									<c:when test="${empty sessionScope.name}">
									<li>
										<a href="register" class="text-dark"><i class="fa fa-user mr-1" style="color:#1f719a;"></i> <span>회원가입</span></a>
									</li>
									
									<li>
									<!--<a href='<c:url value="/member/login"/>' class="text-dark"><i class="fa fa-sign-in mr-1" style="color:#1f719a;"></i> <span>로그인</span></a> -->	
										<a href="login" class="text-dark"><i class="fa fa-sign-in mr-1" style="color:#1f719a;"></i> <span>로그인</span></a>
									</li>
									</c:when>
									<c:otherwise>
										<h>${sessionScope.name} 님 환영합니다. </h>														
									<li class="dropdown">
									
										<a href="#" class="text-dark" data-toggle="dropdown">  &nbsp;&nbsp;<i class="fa fa-home mr-1" style="color:#1f719a;"></i><span> 마이 페이지</span></a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<c:if test="${sessionScope.class_num==1}">
											<a href="construction" class="dropdown-item" >
												<i class="dropdown-icon si si-settings" style="color:#1f719a;"></i> 관리자
											</a>
											</c:if>
											<c:if test="${sessionScope.class_num==2 || sessionScope.class_num==3}">
												<a href="mydash_cor?mem_email=${sessionScope.email}" class="dropdown-item" >
													<i class="dropdown-icon si si-user" style="color:#1f719a;"></i> 프로필 관리
												</a>
											</c:if>
											<c:if test="${sessionScope.class_num==4}">
											<a href="freelancerProfile_list" class="dropdown-item" >
												<i class="dropdown-icon si si-user" style="color:#1f719a;"></i> 프로필 관리
											</a>
											</c:if>
											<!--
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-envelope" style="color:#1f719a;"></i> Inbox
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-bell" style="color:#1f719a;"></i> Notifications
											</a>
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon  si si-settings" style="color:#1f719a;"></i> Account Settings
											</a>
											-->
											<a href="logout.do" class="dropdown-item">
												<i class="dropdown-icon si si-power" style="color:#1f719a;"></i> 로그아웃
											</a>
										</div>
									</li>
									</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Mobile Header -->
			<div class="sticky">
				<div class="horizontal-header clearfix ">
					<div class="container">
						<a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
						<span class="smllogo"><img src="../images/brand/logo1.png" width="120" alt=""/></span>
						<!--
						<a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
						-->
					</div>
				</div>
			</div>
			<!-- Mobile Header -->

			<div class="sticky">
				<div class="horizontal-main clearfix">
					<div class="horizontal-mainwrapper container clearfix">
						<div class="desktoplogo">
							<a href="../"><img src="../images/brand/logo1.png" style="width: 220px; height:auto;" alt=""></a>
						</div>

						<!--Nav-->
						<nav class="horizontalMenu clearfix d-md-flex">
							<ul class="horizontalMenu-list">
								<li aria-haspopup="true"><a href="project_list">프로젝트 <span class="fa fa-caret-down m-0"></span></a>
								<!--
								<li aria-haspopup="true"><a href="./" class="active">프로젝트 <span class="fa fa-caret-down m-0"></span></a>
								-->
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">개발</a></li>
										<li aria-haspopup="true"><a href="#">퍼블리싱</a></li>
										<li aria-haspopup="true"><a href="#">디자인</a></li>
										<li aria-haspopup="true"><a href="#">기획</a></li>
										<li aria-haspopup="true"><a href="#">기타</a></li>
									</ul>
								</li>							
								<li aria-haspopup="true"><a href="market-list">프리마켓</a></li>
								<li aria-haspopup="true"><a href="freelancerList">프리랜서 <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">개발</a></li>
										<li aria-haspopup="true"><a href="#">디자인</a></li>
									</ul>	
								</li>
								<li aria-haspopup="true"><a href="customer_service_list">고객센터 <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="construction">하이파이브 소개</a></li>
										<li aria-haspopup="true"><a href="customer_service_notice">공지사항</a></li>
										<li aria-haspopup="true"><a href="customer_service_faq">FAQ</a></li>
										<li aria-haspopup="true"><a href="customer_service_qa">문의하기</a></li>
										<li aria-haspopup="true"><a href="customer_service_terms_of_service">이용약관</a></li>
										<li aria-haspopup="true"><a href="customer_service_terms_of_personal_info">개인정보처리방침</a></li>
										<li aria-haspopup="true"><a href="customer_service_contact">찾아오시는 길</a></li>
									</ul>	
								</li>
								<li aria-haspopup="true"><a href="#">사이트맵 <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li class="title"><a href="project_list">프로젝트</a></li>
														<li>
															<a href="#">개발</a>
														</li>
														<li>
															<a href="#">퍼블리싱</a>
														</li>
														<li>
															<a href="#">디자인</a>
														</li>
														<li>
															<a href="#">기획</a>
														</li>
														<li>
															<a href="#">기타</a>
														</li>														
													</ul>
													<ul class="col link-list">
														<li class="title"><a href="market-list">프리마켓</a></li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title"><a href="freelancerList">프리랜서</a></li>
														<li>
															<a href="#">개발</a>
														</li>
														<li>
															<a href="#">디자인</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
														<li style="color:white;">
															<a href="#">　</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title"><a href="customer_service_list">고객센터</a></li>
														<li>
															<a href="#">하이파이브 소개</a>
														</li>
														<li>
															<a href="customer_service_notice">공지사항</a>
														</li>
														<li>
															<a href="customer_service_faq">FAQ</a>
														</li>
														<li>
															<a href="customer_service_qa">문의하기</a>
														</li>
														<li>
															<a href="customer_service_terms_of_service">이용약관</a>
														</li>
														<li>
															<a href="customer_service_terms_of_personal_info">개인정보처리방침</a>
														</li>
														<li>
															<a href="customer_service_contact">찾아오시는 길</a>
														</li>													
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>	
						</nav>
						<!--Nav-->
					</div>
				</div>
			</div>
		</div>
<!--/header-->