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
		<meta name="description" content="하이파이브 - 프리랜서 플랫폼">
		<meta name="author" content="sprukotechnologies">
		<meta name="keywords" content="classifieds,real estate,education online classess,jobs,business directory,coupons,cars,e-commerce,market place,auctions,tours & travels,domain marketPlace,books listing,doctors listing,rating & reviews,iCO list,wedding,knowledge base,softwares,video listing,booking html template,bootstrap 4 html template,buy templates,directory listing html template,html and css website templates,html app template,html5 web templates,modern html templates,premium bootstrap templates,responsive ui,html template,html5 template,ecommerce html template,directory listing html template,html css js templates,search html template,best ui kits,bootstrap 4 ui kit,bootstrap kit,css ui kit,flat ui kit,html ui kit,kit ui,multipurpose website ui kit,ui kit template,uikit css,web ui kit,website ui kit,wireframe kit,wireframe ui kit,bootstrap ui kit,dashboard ui kit,flat ui,flat ui design,uikit">
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />


		<!-- include libraries(jQuery, bootstrap) -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- 
		<script src="../js/bootstrap.min.js"></script>
		 -->
		<!-- 
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		-->
		
		<!-- 
		<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		-->
		
		
		<!-- include summernote css/js -->
		<!-- 
		<link href="/summernote/summernote-bs4.min.css" rel="stylesheet">
   		<script src="/summernote/summernote-bs4.min.js"></script>
		-->
		 
		<link href="/summernote/summernote.min.css" rel="stylesheet">	
		<script src="/summernote/summernote.min.js"></script>
		
		<!-- 
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">	
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
		-->
		
		
		<!-- 
	    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
		-->




		<!-- Title -->
		<title>하이파이브 - 프리랜서 플랫폼</title>

		<!-- Bootstrap Css -->
		<link href="../plugins/bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Dashboard Css -->
		<link href="../css/dashboard.css" rel="stylesheet" />

		<!-- Font-awesome  Css -->
		<link rel="stylesheet" href="..//fonts/fonts/font-awesome.min.css">

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

	</head>
	<body>


		<!--Loader-->
		<div id="global-loader">
			<img src="../images/other/loader.svg" class="loader-img floating" alt="">
		</div>


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
									<h1 class="">공지 게시판</h1>
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
					<h4 class="page-title">공지 게시판</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">커뮤니티</a></li>
						<li class="breadcrumb-item active" aria-current="page">공지 게시판</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--공지 게시판 입력 폼-->
		<section class="sptb">
			<div class="row row-cards">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Create New Ad</div>
						</div>
						<div class="card-body">
							<div class="form-group ">
								<label class="form-label">Enter Title</label>
								<input type="text" class="form-control w-100"  placeholder="Enter Title here">
							</div>
							<div class="form-group ">
								<label class="form-label">Enter Subtitle</label>
								<input type="text" class="form-control w-100"  placeholder="Enter Sub title">
							</div>
							<div class="form-group">
								<label class="form-label">Select Category</label>
								<select class="form-control select2" data-placeholder="Choose Browser" multiple>
									<option value="1" selected>Vehicle</option>
									<option value="2">Real Estate</option>
									<option value="3">Computer</option>
									<option value="4">Clothing</option>
									<option value="5">Job</option>
									<option value="6">Services</option>
									<option value="7">Electronics</option>
									<option value="8">Mobile</option>
									<option value="9">Events</option>
									<option value="10">Constructions</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">Upload Images</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="example-file-input-custom">
									<label class="custom-file-label">Upload Images</label>
								</div>
							</div>
							
							<!--
							<div class="form-group">
								<label class="form-label">Description</label>
								<textarea class="content" name="example" placeholder="Enter Description"></textarea>
							</div>
							-->
							<div class="form-group">
								<label class="form-label">Description</label>
								<textarea name="content" id="summernote" class="summernote"></textarea>
							</div>
					
							<script src="/summernote/lang/summernote-ko-KR.js"></script>
							<script type="text/javascript">
								$(document).ready(function() {$('#summernote').summernote();
								});
								
								$('.summernote').summernote({
									height: 150,
									placeholder: '내용을 입력해 주세요.',
									minHeight: null,
									maxHeight: null,
									focus: true,
									lang: 'ko-KR',
									onImageUpload: function(files, editor, welEditable) {
									sendFile(files[0], editor, welEditable);
									}
								});
							</script>

							
							<!-- 
							<script>
								$(document).ready(function() {
									  $('#summernote').summernote({
								 	    	placeholder: 'content',
									        minHeight: 370,
									        maxHeight: null,
									        focus: true, 
									        lang : 'ko-KR'
									  });
									});
							</script>

							<script type="text/javascript">
								$(document).ready(function() {
								  $('#summernote').summernote({
										placeholder: 'content',
								        minHeight: 370,
								        maxHeight: null,
								        focus: true, 
								        lang : 'ko-KR'
								  });
								});
							</script>
							-->
							
							
						</div>
						<div class="card-footer text-right">
							<button type="submit" class="btn btn-primary waves-effect waves-light">등록</button>
							<a href="community_notice" class="btn btn-danger waves-effect waves-light">취소</a>
						</div>
					</div>
				</div>
			</div>
		</section>			
		<!--/공지 게시판 입력 폼-->
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->