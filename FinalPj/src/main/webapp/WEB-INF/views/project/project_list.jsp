<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<meta name="description" content="Pinlist – Directory, Classifieds and Jobs Multipurpose Bootstrap4 HTML5 Listing Template">
		<meta name="author" content="sprukotechnologies">
		<meta name="keywords" content="classifieds,real estate,education online classess,jobs,business directory,coupons,cars,e-commerce,market place,auctions,tours & travels,domain marketPlace,books listing,doctors listing,rating & reviews,iCO list,wedding,knowledge base,softwares,video listing,booking html template,bootstrap 4 html template,buy templates,directory listing html template,html and css website templates,html app template,html5 web templates,modern html templates,premium bootstrap templates,responsive ui,html template,html5 template,ecommerce html template,directory listing html template,html css js templates,search html template,best ui kits,bootstrap 4 ui kit,bootstrap kit,css ui kit,flat ui kit,html ui kit,kit ui,multipurpose website ui kit,ui kit template,uikit css,web ui kit,website ui kit,wireframe kit,wireframe ui kit,bootstrap ui kit,dashboard ui kit,flat ui,flat ui design,uikit">
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

		<!-- Title -->
		<title></title>
		<!-- 버튼, 아이콘 위치조정 -->
		<style> 
		#test_btn1{ margin-right:200px;} 
		#write_btn1{ margin:10px 660px -30px;}
		#write_btn2{ margin:-38px 0px 0px 660px;}
		#paging_btn{ margin:-27px 0px  0px -24px;}
		#test_btn4{ margin-bottom:10px;}
		#list_btn{ margin-left:230px; }
		#grid_btn{ margin-left:10px;}
		</style>


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

		<!-- Data table css -->
		<link href="../plugins/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="../plugins/datatable/jquery.dataTables.min.css" rel="stylesheet" />

		<!--Select2 Plugin -->
		<link href="../plugins/select2/select2.min.css" rel="stylesheet" />

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
			<div class="top-bar">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 col-lg-8 col-sm-4 col-7">
							<div class="top-bar-left d-flex">
								<div class="clearfix">
									<ul class="socials">
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-facebook"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-twitter"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-linkedin"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-google-plus"></i></a>
										</li>
									</ul>
								</div>
								<div class="clearfix">
									<ul class="contact border-left">
										<li class="mr-5 d-lg-none">
											<a href="#" class="callnumber text-dark"><span><i class="fa fa-phone mr-1"></i>: +425 345 8765</span></a>
										</li>
										<li class="select-country mr-5">
											<select class="form-control select2-flag-rj" data-placeholder="Select Country">
												<option value="UM">United States of America</option>
												<option value="AF">Afghanistan</option>
												<option value="AL">Albania</option>
												<option value="AD">Andorra</option>
												<option value="AG">Antigua and Barbuda</option>
												<option value="AU">Australia</option>
	

											</select>
										</li>
										<li class="dropdown mr-5">
											<a href="#" class="text-dark" data-toggle="dropdown"><span> Language <i class="fa fa-caret-down text-muted"></i></span> </a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
												<a href="#" class="dropdown-item" >
													English
												</a>
												<a class="dropdown-item" href="#">
													Arabic
												</a>
												<a class="dropdown-item" href="#">
													German
												</a>
												<a href="#" class="dropdown-item" >
													Greek
												</a>
												<a href="#" class="dropdown-item" >
													Spanish
												</a>
											</div>
										</li>
										<li class="dropdown">
											<a href="#" class="text-dark" data-toggle="dropdown"><span>Currency <i class="fa fa-caret-down text-muted"></i></span></a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
												<a href="#" class="dropdown-item" >
													USD
												</a>
												<a class="dropdown-item" href="#">
													EUR
												</a>
												<a class="dropdown-item" href="#">
													INR
												</a>
												<a href="#" class="dropdown-item" >
													GBP
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-sm-8 col-5">
							<div class="top-bar-right">
								<ul class="custom">
									<li>
										<a href="register.html" class="text-dark"><i class="fa fa-user mr-1"></i> <span>Register</span></a>
									</li>
									<li>
										<a href="login.html" class="text-dark"><i class="fa fa-sign-in mr-1"></i> <span>Login</span></a>
									</li>
									<li class="dropdown">
										<a href="#" class="text-dark" data-toggle="dropdown"><i class="fa fa-home mr-1"></i><span> My Dashboard</span></a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon si si-user"></i> My Profile
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-envelope"></i> Inbox
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-bell"></i> Notifications
											</a>
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon  si si-settings"></i> Account Settings
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-power"></i> Log out
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
							<a href="index.do"><img src="../images/brand/logo1.png" alt=""></a>
						</div>
						<!--Nav-->
						<nav class="horizontalMenu clearfix d-md-flex">
							<ul class="horizontalMenu-list">
								<li aria-haspopup="true"><a href="#">Home <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index.html">Classifieds</a></li>
														<li aria-haspopup="true"><a href="index2.html">Real Estate</a></li>
														<li aria-haspopup="true"><a href="index3.html">Education</a></li>
														<li aria-haspopup="true"><a href="index4.html">Jobs</a></li>
														<li aria-haspopup="true"><a href="index5.html">Business Directory</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index6.html">Coupons</a></li>
														<li aria-haspopup="true"><a href="index7.html">Cars</a></li>
														<li aria-haspopup="true"><a href="index8.html">E-Commerce</a></li>
														<li aria-haspopup="true"><a href="index9.html">Market Place</a></li>
														<li aria-haspopup="true"><a href="index10.html">Auction</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index11.html">Tours & Travels</a></li>
														<li aria-haspopup="true"><a href="index12.html">Domains</a></li>
														<li aria-haspopup="true"><a href="index13.html">Books</a></li>
														<li aria-haspopup="true"><a href="index14.html">Doctors</a></li>
														<li aria-haspopup="true"><a href="index15.html">Rating & Reviews</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index16.html">ICO List</a></li>
														<li aria-haspopup="true"><a href="index17.html">Wedding</a></li>
														<li aria-haspopup="true"><a href="index18.html">Knowledge Base</a></li>
														<li aria-haspopup="true"><a href="index19.html">Softwares</a></li>
														<li aria-haspopup="true"><a href="index20.html">Video List</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="banner.html">Banner</a></li>
														<li aria-haspopup="true"><a href="domain-search.html">Video Banner</a></li>
														<li aria-haspopup="true"><a href="slider.html">Image Slider</a></li>
														<li aria-haspopup="true"><a href="intro-page.html">Intro Page</a></li>
														<li aria-haspopup="true"><a href="popup-login.html">Pop-up login</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="about.html">About Us </a></li>
								<li aria-haspopup="true"><a href="widgets.html">Widgets</a></li>
								<li aria-haspopup="true"><a href="#" class="active">Pages <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="jobs-list.html">Jobs List</a>
														</li>
														<li>
															<a href="jobs-list-right.html">Jobs List Right</a>
														</li>
														<li>
															<a href="employer-list.html">Employer List </a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="marketplace-list.html">Marketplace List</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="venue-list.html">Wedding Venue List left</a>
														</li>
														<li>
															<a href="venue-list-right.html">Wedding Venue List Right</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">User pages</li>
														<li>
															<a href="classifieds-list-map.html">Classifieds Map list</a>
														</li>
														<li>
															<a href="classifieds-list-map2.html">Classifieds Map list 02</a>
														</li>
														<li>
															<a href="userprofile.html"> User Profile</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">User pages</li>
														<li>
															<a href="typography.html">Typography</a>
														</li>
														<li><a href="underconstruction.html">Under Constructions</a></li>
														<li><a href="404.html">404</a></li>


													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="#">Blog <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">Blog Grid <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											 <ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-grid.html">Blog Grid Left</a></li>
												<li aria-haspopup="true"><a href="blog-grid-right.html">Blog Grid Right</a></li>
												<li aria-haspopup="true"><a href="blog-grid-center.html">Blog Grid Center</a></li>
											</ul>
										</li>
										<li aria-haspopup="true"><a href="#">Blog List <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											 <ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-list.html">Blog List Left</a></li>
												<li aria-haspopup="true"><a href="blog-list-right.html">Blog List Right</a></li>
												<li aria-haspopup="true"><a href="blog-list-center.html">Blog List Center</a></li>
											</ul>
										</li>
										<li aria-haspopup="true"><a href="#">Blog Details <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											<ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-details.html">Blog Details Left</a></li>
												<li aria-haspopup="true"><a href="blog-details-right.html">Blog Details Right</a></li>
												<li aria-haspopup="true"><a href="blog-details-center.html">Blog Details Center</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li aria-haspopup="true"><a href="#">Categories <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="realestate.html">RealEstate Left</a></li>
														<li aria-haspopup="true"><a href="realestate-right.html">RealEstate Right </a></li>
														<li aria-haspopup="true"><a href="jobs.html">Jobs Left</a></li>
														<li aria-haspopup="true"><a href="jobs-right.html">Jobs Right </a></li>
														<li aria-haspopup="true"><a href="education.html">Education Left</a></li>
														<li aria-haspopup="true"><a href="education-right.html">Education Right </a></li>
														<li aria-haspopup="true"><a href="classified.html">Classifieds Left</a></li>
														<li aria-haspopup="true"><a href="classified-right.html">Classifieds Rights </a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="employer.html">Employer Details</a></li>
														<li aria-haspopup="true"><a href="domain.html">Domain Left</a></li>
														<li aria-haspopup="true"><a href="domain-right.html">Domain Right</a></li>
														<li aria-haspopup="true"><a href="business.html">Business Directory Left</a></li>
														<li aria-haspopup="true"><a href="business-right.html">Business Directory Right </a></li>
														<li aria-haspopup="true"><a href="coupon-code.html">Coupons </a></li>
														<li aria-haspopup="true"><a href="car.html">Cars Left</a></li>
														<li aria-haspopup="true"><a href="car-right.html">Cars Right </a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="ecommerce.html">E-Commerce</a></li>
														<li aria-haspopup="true"><a href="marketplace.html">Marketplace Left</a></li>
														<li aria-haspopup="true"><a href="marketplace-right.html">Marketplace Right </a></li>
														<li aria-haspopup="true"><a href="auction.html">Auction</a></li>
														<li aria-haspopup="true"><a href="travel.html">Travel Left</a></li>
														<li aria-haspopup="true"><a href="travel-right.html">Travel Right</a></li>
														<li aria-haspopup="true"><a href="books.html">Books Left</a></li>
														<li aria-haspopup="true"><a href="books-right.html">Books Right</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="doctor.html">Doctors Left</a></li>
														<li aria-haspopup="true"><a href="doctor-right.html">Doctors Right</a></li>
														<li aria-haspopup="true"><a href="reviews.html">Reviews Left</a></li>
														<li aria-haspopup="true"><a href="reviews-right.html">Reviews Right</a></li>
														<li aria-haspopup="true"><a href="ico.html">ICO Left</a></li>
														<li aria-haspopup="true"><a href="ico-right.html">ICO Right</a></li>
														<li aria-haspopup="true"><a href="wedding.html">Wedding left</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="wedding-right.html">Wedding Right</a></li>
														<li aria-haspopup="true"><a href="support.html">Support Left</a></li>
														<li aria-haspopup="true"><a href="support-right.html">Support Right</a></li>
														<li aria-haspopup="true"><a href="software.html">Software Left</a></li>
														<li aria-haspopup="true"><a href="software-right.html">Software Right</a></li>
														<li aria-haspopup="true"><a href="video.html">Video Left </a></li>
														<li aria-haspopup="true"><a href="video-right.html">Video Right</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="contact.html"> Contact Us <span class="wsarrow"></span></a></li>
								<li aria-haspopup="true" class="d-lg-none mt-5 pb-5 mt-lg-0">
									<span><a class="btn btn-secondary" href="#">Download Software</a></span>
								</li>
							</ul>
							<ul class="mb-0">
								<li aria-haspopup="true" class="mt-5 d-none d-lg-block ">
									<span><a class="btn btn-secondary" href="#">Download Software</a></span>
								</li>
							</ul>
						</nav>
						<!--Nav-->
					</div>
				</div>
			</div>
		</div>

		<!--Sliders Section-->
		<div>
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class=""></h1>
								</div>
						
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
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
				<div>
		<!--  
				<button type="button" class="btn btn-primary ">개발</button>&nbsp;&nbsp;				
				<button type="button" class="btn btn-primary ">기획</button>&nbsp;&nbsp;&nbsp;
				<a href=.. class="breadcrumb-item"><strong>퍼블리싱</strong></a>&nbsp;
				<a href=.. class="breadcrumb-item"><strong>디자이너</strong></a>&nbsp;
				<a href=.. class="breadcrumb-item"><strong>기타</strong></a>	
			-->				 
			<!-- 	<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Software List</li>
					</ol>
				</div> -->
			</div>	  
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="검색">
									<div class="input-group-append ">
										
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											검색
										</button>
										
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="card">
							<div class="card-header">
							
							
									<!-- 콤보박스 -->
									
							<div class="card-body"> 
								<div class="card-header border-top">
									<h5 class="card-title"style="font-family:빙그레체;">구분</h5>
									</div>
									<br/>
									<div class="filter-product-checkboxs">
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">개발<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">퍼블리싱<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">디자인<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">기획<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">기타<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
									<br/>
											
										<div class="card-header border-top">
									<h5 class="card-title"style="font-family:빙그레체;">등급</h5>
									</div>
									<br/>
									<div class="filter-product-checkboxs">
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">초급<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">중급<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">고급<span class="label label-secondary float-right">숫자카운트</span></a>
											</span>
										</label>
									<br/>	
									
									
									
									
									
									
									
									
									
									
									
													
									<div class="card-header border-top">
										<h5 class="card-title"style="font-family:빙그레체;">근무형태</h5>
									</div>
									<br/>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">비상주<span class="label label-secondary float-right">18</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">상주<span class="label label-secondary float-right">02</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">반상주<span class="label label-secondary float-right">02</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">상관없음<span class="label label-secondary float-right">02</span></a>
												<br/><br/>
											</span>
											
										</label>

							<div class="card-header border-top">
								<h5 class="card-title" style="font-family:빙그레체;">지역</h5>
							</div>
							<br/>
										<div class="d-flex"> 
											<select name="all_area" id="all_area" class="form-control select-sm w-100">
												<option>전체</option>
												<option value="100">서울</option>
												<option value="200">경기</option>
												<option value="300">부산</option>
												<option value="400">대구</option>
												<option value="500">인천</option>
												<option value="600">광주</option>
												<option value="700">대전</option>
												<option value="800">울산</option>
												<option value="900">세종</option>
												<option value="1000">강원</option>				
												<option value="1100">충북</option>
												<option value="1200">충남</option>
												<option value="1300">전북</option>
												<option value="1400">전남</option>
												<option value="1500">경북</option>
												<option value="1600">경남</option>
												<option value="1700">제주</option>
												<option value="1800">기타</option>
											</select>
										</div>
										<br/>
							
											<select name="subCategory" id="subCategory" class="form-control select-sm w-100">
												<option>전체</option>
												<option value="101">강남구</option>
												<option value="102">강동구</option>
												<option value="103">강북구</option>
												<option value="104">강서구</option>
												<option value="105">관악구</option>
												<option value="106">광진구</option>
												<option value="107">구로구</option>
												<option value="108">금천구</option>
												<option value="109">노원구</option>
												<option value="110">도봉구</option>				
												<option value="111">동대문구</option>
												<option value="112">동작구</option>
												<option value="113">마포구</option>
												<option value="114">서대문구</option>
												<option value="115">서초구</option>
												<option value="116">성동구</option>
												<option value="117">성북구</option>
												<option value="118">송파구</option>
												<option value="119">양천구</option>
												<option value="120">영등포구</option>
												<option value="121">용산구</option>
												<option value="122">은평구</option>
												<option value="123">종로구</option>
												<option value="124">중구</option>		
												<option value="125">중랑구</option>																																		
										</select>
										<br/><br/>
								


<!-- <script type="text/javascript"> 
$(document).ready(function() { 
    
	//Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.
	
	//****************이부분은 DB로 셋팅하세요.
	//Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
	var all_areaArray = new Array();
	var all_areaObject = new Object();
	
	all_areaObject = new Object();
	all_areaObject.all_area_id = "100";
	all_areaObject.all_area_name = "서울";
	all_areaArray.push(all_areaObject);
	
	all_areaObject = new Object();
	all_areaObject.all_area_id = "200";
	all_areaObject.all_area_name = "경기";
	all_areaArray.push(all_areaObject);
	
	//Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
	var seoulArray = new Array();
	var seoulObject = new Object();
	
	//스포츠에 해당하는 sub category 리스트
	subCategoryObject = new Object();
	subCategoryObject.all_area_id = "100";
	subCategoryObject.sub_category_id = "101"
	subCategoryObject.sub_category_name = "강남구"	
	subCategoryArray.push(subCategoryObject);
	
	subCategoryObject = new Object();
	subCategoryObject.all_area_id = "100";
	subCategoryObject.sub_category_id = "102"
	subCategoryObject.sub_category_name = "강동구"	
	subCategoryArray.push(subCategoryObject);
	
	//****************이부분은 DB로 셋팅하세요.
	//메인 카테고리 셋팅
	var mainCategorySelectBox = $("select[name='mainCategory']");
	
	for(var i=0;i<mainCategoryArray.length;i++){
		mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
	}
	
	//*********** 1depth카테고리 선택 후 2depth 생성 START ***********
	$(document).on("change","select[name='mainCategory']",function(){
		
		//두번째 셀렉트 박스를 삭제 시킨다.
		var subCategorySelectBox = $("select[name='subCategory']");
		subCategorySelectBox.children().remove(); //기존 리스트 삭제
		
		//선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
		$("option:selected", this).each(function(){
			var selectValue = $(this).val(); //main category 에서 선택한 값
			subCategorySelectBox.append("<option value=''>전체</option>");
			for(var i=0;i<subCategoryArray.length;i++){
				if(selectValue == subCategoryArray[i].main_category_id){
					
					subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
					
				}
			}
		});
			});
	//*********** 1depth카테고리 선택 후 2depth 생성 END ***********
		
}); -->
<!-- </script>  -->
																				

									<div class="card-header border-top">
										<h5 class="card-title" style="font-family:빙그레체;">관련기술</h3>
									</div>
									<br/>
										<div class="" id="container">
									<div class="filter-product-checkboxs">	

										<!-- 콤보박스 -->
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label">
												<a href="#" class="text-dark">CGI<span class="label label-secondary float-right">14</span></a>
											</span>
										</label>

										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
											<span class="custom-control-label">
												<a href="#" class="text-dark">jQuery<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">.Net<span class="label label-secondary float-right">78</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Java<span class="label label-secondary float-right">35</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox5" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">C<span class="label label-secondary float-right">23</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox6" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">C++<span class="label label-secondary float-right">14</span></a>
											</span>
										</label>


										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Angular Js<span class="label label-secondary float-right">45</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">HTML<span class="label label-secondary float-right">34</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">CFML<span class="label label-secondary float-right">12</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Ajax<span class="label label-secondary float-right">18</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Flash<span class="label label-secondary float-right">02</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Android<span class="label label-secondary float-right">15</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">Java Script<span class="label label-secondary float-right">32</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">My SQL<span class="label label-secondary float-right">23</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">SQL<span class="label label-secondary float-right">19</span></a>
											</span>
										</label>
									</div>
								</div>
							</div>
						</div>
				  </div>
<!-- 추가/div 지우면망함  </div>
						<div class="card-footer">
						<!--	<a href="#" class="btn btn-secondary btn-block">검색</a>	-->
							</div> 
						</div>
							<div class="card-body">
								<div class="" id="container">
									<div class="filter-product-checkboxs">

					
					</div>
					<!--Right Side Content-->
				</div>
			</div>
		</div>
					<div class="col-xl-8 col-lg-8 col-md-12">
						<!--Add lists-->
						<div class="card mb-lg-0">
							<div class="card-body">
								
								<!--	<div class="item2-gl-nav d-flex"> -->
							
			
									<!-- <h6 class="mb-0 mt-2">Showing 1 to 10 of 30 entries</h6> -->
										
									
										<!--  <span class="mr-2 mt-1 mb-sm-1">Sort By:</span>  -->	
									
									
										<div >
												
															
									
										<div style="margin-bottom: -50px;">
										<ul class="nav item2-gl-menu ml-auto">
											<li class=""><a href="#tab-11" class="active show" data-toggle="tab" title="List style" id="list_btn"><i class="fa fa-list"></i></a></li>
											<li><a href="#tab-12" data-toggle="tab" class="" title="Grid"><i class="fa fa-th" id="grid_btn"></i></a></li>
										</ul>
											</div>	
											<a href="write.do" class="btn btn-success"  id="write_btn1">글쓰기</a>
												<select name="item" class="form-control select-sm w-30" id="test_btn4">
												<option value="1">최신순</option>
												<option value="2">Oldest</option>
												<option value="3">Price:Low-to-High</option>
												<option value="5">Price:Hight-to-Low</option>
											</select>
											
									
									</div>									
												
										
								<!--</div> -->
									<div class="tab-content">
										<div class="tab-pane active" id="tab-11">
										<c:forEach var = "dto" items="${list}">
											<div class="card overflow-hidden">
												<div class="d-md-flex">													
												<!-- 		<div class="arrow-ribbon bg-primary">New</div> -->					
															<a href="software.html"></a>
														<div class="item-card9-icons">
															<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
														</div>															
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card9">
															
																&nbsp;&nbsp;&nbsp;
																<a href="software.html"><br/>${dto.pj_loc} / JAVA, PHP /${dto.pj_name}<br/><br/></a>	
																													
																<a href="content.do" class="text-dark">
																<h4 class="font-weight-semibold mt-1">
																&nbsp;&nbsp;&nbsp;
																${dto.pj_sub} <span class="fs-14 text-default"></span></h4></a>
																
																<p class="mb-0 leading-tight">
																&nbsp;&nbsp;&nbsp;
																${dto.pj_cont}</p>
																<p class="mb-0 leading-tight">
																&nbsp;&nbsp;&nbsp;<br/>
																&nbsp;&nbsp;&nbsp;&nbsp;급여 : ${dto.pj_pay}원</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<span class="text-dark font-weight-semibold mb-0 mt-0" style=" font-size:1.5em;">D-3</span>
																	 &nbsp; &nbsp;
																	<span class="text-dark font-weight-semibold mb-0 mt-0"  >(마감일 ${dto.pj_ddate})</span>
																	
																</div>
																<div class="ml-auto">
																	
														<!--  	<div class="rating-stars block">
																  		
																  		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  >
																		
																		<div class="rating-stars-container">
																			
																			<div class="rating-star sm">
																				<i class="fa fa-star"></i>
																			</div>
																			<div class="rating-star sm">
																				<i class="fa fa-star"></i>
																			</div>
																			<div class="rating-star sm">
																				<i class="fa fa-star"></i>
																			</div>
																			<div class="rating-star sm">
																				<i class="fa fa-star"></i>
																			</div>
																			<div class="rating-star sm">
																				<i class="fa fa-star"></i>
																			</div> 
																		</div>	
																	</div>  -->		
																	
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<!-- ///////////////// -->

										<!-- 아래 div지우면 망함 -->	
										</c:forEach>
										</div>
										<div class="tab-pane" id="tab-12">
											<div class="row">
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
																
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>UI Design, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>Wordpres <span class="fs-14 text-default">(version 3)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">6254 Votes</h4>
																</div>
																
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
													
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
																
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														
														
														
														
																		<div class="d-md-flex">
											<!-- 	<div class="arrow-ribbon bg-primary">New</div>	 -->			
												
														
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>Web Design, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>IOS <span class="fs-14 text-default">(version 3.1)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
									<!-- 추가 div-->	</div>	
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">8451 Votes</h4>
																</div>
															</div>
														</div>
													</div>
												</div>
												
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
																
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>Web Design, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>Github <span class="fs-14 text-default">(version 5)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">4785 Votes</h4>
																</div>
																
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
													
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
															
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>Development, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>Zoomla <span class="fs-14 text-default">(version 2.6)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">3254 Votes</h4>
																</div>
														
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
															
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>Development, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>Internet Explorer <span class="fs-14 text-default">(version 3)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">6547 Votes</h4>
																</div>
																
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="software.html"></a>
															
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																<a href="software.html"><br/>Development, Windows, Android</a>
																<a href="software.html" class="text-dark"><h4 class="font-weight-semibold mt-1"><br/>Codepen <span class="fs-14 text-default">(version 3.2)</span></h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum edtred exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">6547 Votes</h4>
																</div>
												
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								
									
								<div class="card-body " id="paging_btn">
										<ul class="pagination mg-b-0 page-0 ">
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">1</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">2</a>
											</li>
											<li class="page-item active">
												<a class="page-link" href="#">3</a>
											</li>
											<li class="page-item">
												<a class="page-link hidden-xs-down" href="#">4</a>
											</li>

											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
											</li>		
										</ul>	
										<p id="write_btn2"><a href="write.do" class="btn btn-success" >글쓰기</a></p>
									</div>						
						<!--Add lists-->
					</div>
					<!--Right Side Content-->
		</section>
		<!--Add Listing-->
		<!--Footer Section-->
		<section>
			<footer class="bg-dark text-white">
				<div class="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-lg-2 col-md-12">
								<h6>Business Directory</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Company</a></li>
									<li><a href="#">Colleges</a></li>
									<li><a href="#">Hospital</a></li>
									<li><a href="#">Factories</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Classifieds</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Real Estate</a></li>
									<li><a href="#">Computer</a></li>
									<li><a href="#">Clothing</a></li>
									<li><a href="#">Jobs</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Resources</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Support</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Terms of Service</a></li>
									<li><a href="#">Contact Details</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6>Popular Ads</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Educational college Ads</a></li>
									<li><a href="#">Free Lancer for Web Developer</a></li>
									<li><a href="#">2BHK Flat In Hyderabad</a></li>
									<li><a href="#">BPO Jobs In Bangalore</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6 class="mb-2">Subscribe</h6>
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Email">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Subscribe
										</button>
									</div>
								</div>
								<h6 class="mb-2 mt-5">Payments</h6>
								<ul class="payments mb-0">
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-amex" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-visa" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0">
					<div class="container">
						<div class="row d-flex">
							<div class="col-lg-8 col-sm-12  mt-2 mb-2 text-left ">
								Copyright © 2019 <a href="#" class="fs-14 text-primary">Pinlist</a>. Designed by <a href="list.do" class="fs-14 text-primary">Spruko</a> All rights reserved.
							</div>
							<div class="col-lg-4 col-sm-12 ml-auto mb-2 mt-2">
								<ul class="social mb-0">
									<li>
										<a class="social-icon" href=""><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-rss"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-youtube"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-linkedin"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-google-plus"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0 border-top">
					<div class="container">
						<div class="p-2 text-center footer-links">
							<a href="#" class="btn btn-link">How It Works</a>
							<a href="#" class="btn btn-link">About Us</a>
							<a href="#" class="btn btn-link">Pricing</a>
							<a href="#" class="btn btn-link">Ads Categories</a>
							<a href="#" class="btn btn-link">Privacy Policy</a>
							<a href="#" class="btn btn-link">Terms Of Conditions</a>
							<a href="#" class="btn btn-link">Blog</a>
							<a href="#" class="btn btn-link">Contact Us</a>
							<a href="#" class="btn btn-link">Premium Ad</a>
						</div>
					</div>
				</div>
			</footer>
		</section>	
		<!--/Footer Section-->

		<!-- Back to top -->
		<a href="#top" id="back-to-top" ><i class="fa fa-rocket"></i></a>

		<!-- JQuery js-->
		<script src="../js/vendors/jquery-3.2.1.min.js"></script>

		<!-- Bootstrap js -->
		<script src="../plugins/bootstrap-4.1.3/popper.min.js"></script>
		<script src="../plugins/bootstrap-4.1.3/js/bootstrap.min.js"></script>

		<!--JQuery Sparkline Js-->
		<script src="../js/vendors/jquery.sparkline.min.js"></script>

		<!-- Circle Progress Js-->
		<script src="../js/vendors/circle-progress.min.js"></script>

		<!-- Star Rating Js-->
		<script src="../plugins/rating/jquery.rating-stars.js"></script>

		<!--Owl Carousel js -->
		<script src="../plugins/owl-carousel/owl.carousel.js"></script>

		<!--Horizontal Menu-->
		<script src="../plugins/Horizontal2/Horizontal-menu/horizontal.js"></script>

		<!--JQuery TouchSwipe js-->
		<script src="../js/jquery.touchSwipe.min.js"></script>

		<!--Select2 js -->
		<script src="../plugins/select2/select2.full.min.js"></script>
		<script src="../js/select2.js"></script>

		<!-- Cookie js -->
		<script src="../plugins/cookie/jquery.ihavecookies.js"></script>
		<script src="../plugins/cookie/cookie.js"></script>

		<!-- Data tables -->
		<script src="../plugins/datatable/jquery.dataTables.min.js"></script>
		<script src="../plugins/datatable/dataTables.bootstrap4.min.js"></script>
		<script src="../plugins/datatable/datatable.js"></script>

		<!-- Ion.RangeSlider -->
		<script src="../plugins/jquery-uislider/jquery-ui.js"></script>

		<!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- sticky Js-->
		<script src="../js/sticky.js"></script>

		<!--Showmore Js-->
		<script src="../js/jquery.showmore.js"></script>
		<script src="../js/showmore.js"></script>	
		

		<!-- Custom Js-->
		<script src="../js/custom.js"></script>
		<script src="../js/custom2.js"></script>
		
		
	</body>
</html>
