<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="zxx" dir="ltr">
	<head>
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="msapplication-TileColor" content="#0f75ff">
		<meta name="theme-color" content="#2ddcd3">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="description" content="Pinlist â Directory, Classifieds and Jobs Multipurpose Bootstrap4 HTML5 Listing Template">
		<meta name="author" content="sprukotechnologies">
		<meta name="keywords" content="classifieds,real estate,education online classess,jobs,business directory,coupons,cars,e-commerce,market place,auctions,tours & travels,domain marketPlace,books listing,doctors listing,rating & reviews,iCO list,wedding,knowledge base,softwares,video listing,booking html template,bootstrap 4 html template,buy templates,directory listing html template,html and css website templates,html app template,html5 web templates,modern html templates,premium bootstrap templates,responsive ui,html template,html5 template,ecommerce html template,directory listing html template,html css js templates,search html template,best ui kits,bootstrap 4 ui kit,bootstrap kit,css ui kit,flat ui kit,html ui kit,kit ui,multipurpose website ui kit,ui kit template,uikit css,web ui kit,website ui kit,wireframe kit,wireframe ui kit,bootstrap ui kit,dashboard ui kit,flat ui,flat ui design,uikit">
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

		<!-- Title -->
		<title>하이파이브 - 프리랜서 플랫폼</title>

		<!-- Bootstrap Css -->
		<link href="../plugins/bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Dashboard Css -->
		<link href="../css/dashboard.css" rel="stylesheet" />

		<!-- Font-awesome  Css -->
		<link rel="stylesheet" href="../fonts/fonts/font-awesome.min.css">

		<!--Horizontal Menu-->
		<link href="../plugins/Horizontal2/Horizontal-menu/dropdown-effects/fade-down.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/horizontal.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/color-skins/color.css" rel="stylesheet" />

		<!--Select2 Plugin -->
		<link href="../plugins/select2/select2.min.css" rel="stylesheet" />

		<!-- Data table css -->
		<link href="../plugins/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="../plugins/datatable/jquery.dataTables.min.css" rel="stylesheet" />

		<!-- Cookie css -->
		<link href="../plugins/cookie/cookie.css" rel="stylesheet">

		<!-- Custom scroll bar css-->
		<link href="../plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

		<!-- jquery ui RangeSlider -->
		<link href="../plugins/jquery-uislider/jquery-ui.css" rel="stylesheet">

		<!--Font icons-->
		<link href="../plugins/iconfonts/plugin.css" rel="stylesheet">
		<link href="../plugins/iconfonts/icons.css" rel="stylesheet">

	</head>
	<body>

		<!--Loader-->
		<div id="global-loader"><img src="../images/other/loader.svg" class="loader-img floating" alt=""></div>

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
									<li>
										<a href="register.html" class="text-dark"><i class="fa fa-user mr-1" style="color:#1f719a;"></i> <span>회원가입</span></a>
									</li>
									<li>
										<a href="login.html" class="text-dark"><i class="fa fa-sign-in mr-1" style="color:#1f719a;"></i> <span>로그인</span></a>
									</li>
									<li class="dropdown">
										<a href="#" class="text-dark" data-toggle="dropdown"><i class="fa fa-home mr-1" style="color:#1f719a;"></i><span> 마이 페이지</span></a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a href="construction" class="dropdown-item" >
												<i class="dropdown-icon si si-settings" style="color:#1f719a;"></i> 관리자
											</a>
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon si si-user" style="color:#1f719a;"></i> 프로필 관리
											</a>
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
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-power" style="color:#1f719a;"></i> 로그아웃
											</a>
										</div>
									</li>
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
						<a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<!-- Mobile Header -->

			<div class="sticky">
				<div class="horizontal-main clearfix">
					<div class="horizontal-mainwrapper container clearfix">
						<div class="desktoplogo">
							<a href="./"><img src="../images/brand/logo1.png" style="width: 220px; height:auto;" alt=""></a>
						</div>

						<!--Nav-->
						<nav class="horizontalMenu clearfix d-md-flex">
							<ul class="horizontalMenu-list">
								<li aria-haspopup="true"><a href="list.do">프로젝트 <span class="fa fa-caret-down m-0"></span></a>
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
								<li aria-haspopup="true"><a href="marketList">프리마켓</a></li>
								<li aria-haspopup="true"><a href="employer-list-right">프리랜서 <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">개발</a></li>
										<li aria-haspopup="true"><a href="#">디자인</a></li>
									</ul>	
								</li>
								<li aria-haspopup="true"><a href="community_list">고객센터 <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">하이파이브 소개</a></li>
										<li aria-haspopup="true"><a href="#">공지사항</a></li>
										<li aria-haspopup="true"><a href="#">FAQ</a></li>
										<li aria-haspopup="true"><a href="#">1:1 문의</a></li>
										<li aria-haspopup="true"><a href="#">이용약관</a></li>
										<li aria-haspopup="true"><a href="#">개인정보처리방침</a></li>
										<li aria-haspopup="true"><a href="#">찾아오시는 길</a></li>
									</ul>	
								</li>
								<li aria-haspopup="true"><a href="#">사이트맵 <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li class="title"><a href="list.do">프로젝트</a></li>
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
														<li class="title"><a href="marketList">프리마켓</a></li>
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
														<li class="title"><a href="employer-list-right">프리랜서</a></li>
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
														<li class="title"><a href="community_list">고객센터</a></li>
														<li>
															<a href="#">하이파이브 소개</a>
														</li>
														<li>
															<a href="#">공지사항</a>
														</li>
														<li>
															<a href="#">FAQ</a>
														</li>
														<li>
															<a href="#">1:1 문의</a>
														</li>
														<li>
															<a href="#">이용약관</a>
														</li>
														<li>
															<a href="#">개인정보처리방침</a>
														</li>
														<li>
															<a href="#">찾아오시는 길</a>
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

		<!--Sliders Section-->
		<div>
			<!--
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/rating.jpg">
			-->
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="">문의 게시판</h1>
								</div>
								<div class=" search-background">
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="질문 검색">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Category</option>
													<option value="1">Bitcoin</option>
													<option value="2">Bitcoincash</option>
													<option value="3">Bitcoinglod</option>
													<option value="4">Cardano</option>
													<option value="5">Dash</option>
													<option value="6">Eos</option>
													<option value="7">Ethereum</option>
													<option value="8">Euro</option>
													<option value="9">Icon</option>
													<option value="10">Iota</option>
													<option value="11">Litecoin</option>
													<option value="12">Monero</option>
													<option value="13">Nem</option>
													<option value="14">Neo</option>
													<option value="15">Qtum</option>
													<option value="16">Raiblocks</option>
													<option value="17">Ripple</option>
													<option value="18">Stellar</option>
													<option value="19">Tron</option>
												</optgroup>
											</select>
										</div>
										<div class="col-xl-2 col-lg-3 col-md-12 mb-0">
											<a href="#" class="btn btn-lg btn-block btn-secondary">Search</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</div>
		<!--/Sliders Section-->

		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">문의 게시판</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">커뮤니티</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의 게시판</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="card mb-0">						
							<div class="table-responsive p-5">
								<table id="example" class="table table-bordered ico-listing text-nowrap">
									<thead>
									<!-- #1f719a -->
										<tr class="border-bottom text-center" style="background-color: #f6f3ed;">
											<th class="font-weight-bold">번호</th>
											<th class="font-weight-bold">분류</th>
											<th class="font-weight-bold">제목</th>
											<th class="font-weight-bold">글쓴이</th>
											<th class="font-weight-bold">날짜</th>
											<th class="font-weight-bold">조회</th>
											<th class="font-weight-bold">추천</th>
										</tr>
									</thead>
									<tbody>
										<tr class="border-bottom">
											<td class="text-center">15</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">14</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content"><i class="fa fa-lock"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">13</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content"><i class="fa fa-expeditedssl"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">12</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">11</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">10</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김세영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">9</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">윤별</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">8</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">송승훈</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">7</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김소담</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">6</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">5</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">4</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">3</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">2</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">1</td>
											<td class="text-center">결제</td>
											<td><a href="community_qna_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
									</tbody>									
								</table>
								
								<br/>
									<div class="text-right">
										<a href="community_qna_write" class="btn btn-danger">　글쓰기　</a>
									</div>
								
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!--Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->