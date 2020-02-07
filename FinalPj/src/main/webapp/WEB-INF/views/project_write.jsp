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

		<!-- Cookie css -->
		<link href="../plugins/cookie/cookie.css" rel="stylesheet">

		<!-- Custom scroll bar css-->
		<link href="../plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

		<!--Font icons-->
		<link href="../plugins/iconfonts/plugin.css" rel="stylesheet">
		<link href="../plugins/iconfonts/icons.css" rel="stylesheet">
		
		<!-- 썸머노트 -->		
	    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
	
	
	
	
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
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">		
							<ol class="breadcrumb text-center">
							</ol>
						</div>
					</div>
				</div>
			</div>
		
		</section>
		<!--/Sliders Section-->

		<!--Add posts-section-->
		<section class="sptb">
		<div class="row row-cards">
		<div class="col-md-6 mx-auto">
			<div class="container">
				<div class="row ">
					<div class="col-lg-12 col-md-12 col-md-12">
						<div class="card mb-lg-0">
							<div class="card-header ">
								<h3 class="card-title">프로젝트 등록</h3>
							</div>
							<div class="card-body">
							
							<div class="form-group">
									<label class="form-label text-dark">근무형태</label>
									
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
											<span class="custom-control-label text-muted">비상주</span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2"> 
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">상주</span>
											&nbsp;&nbsp;&nbsp;
										</label>	
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">반상주</span>
											&nbsp;&nbsp;&nbsp;
										</label>					
										</div>
											<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">상관없음</span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</label>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label text-dark">직종</label>
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="radios2" value="option1" checked="">
											<span class="custom-control-label text-muted">개발 </span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">퍼블리싱</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">기획</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">디자인</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">기타</span>
										</label>
										</div>
									</div>
					
								</div>		
								<div class="form-group" >
										<div class="row">
											<div class="col-sm-6 col-md-6">
												<div class="form-group "">
													<label class="form-label">사용기술</label>
								<select class="form-control custom-select" style="width:422px;height:40x;">
												<option value="0">선택</option>
												<option value="90">CGI</option>
												<option value="89">.NET</option>
												<option value="88">JAVA</option>
												<option value="87">C</option>
												<option value="86">C++</option>
												<option value="85">Angular Js</option>
												<option value="84">HTML</option>
												<option value="83">.CFML</option>
												<option value="82">Ajax</option>
												<option value="81">Flash</option>
												<option value="80">Android</option>
												<option value="79">Java Script</option>
												<option value="78">My SQL</option>
												<option value="77">SQL</option>
												<option value="76">기타</option>
												</select>
												</div>
											</div>
												<div class="col-sm-6 col-md-6">
													<div class="form-group ">
														<label class="form-label">급여</label>
														<input type="text" class="form-control">
													</div>	
												</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group ">
													<label class="form-label">근무지</label>
													<input type="text" class="form-control">
													
									
												</div>
											</div>
										</div>
								</div>	
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">프로젝트 기간</label>
											<input type="text" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">마감일</label>
											<input type="text" class="form-control">
										</div>	
									</div>
								</div>
									<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">모집인원</label>
											<input type="number" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">총 투입인원</label>
											<input type="number" class="form-control">
										</div>	
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">경력</label>
											<input type="text" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">홈페이지</label>
											<input type="text" class="form-control">
										</div>	
									</div>
								</div>
										
				 		<div class="form-group">
									<label classㅇ="form-label text-dark">제목</label>
									<input type="text" class="form-control">
						</div>
								<!-- 썸머노트 -->
			                     <textarea name="content" id="summernote" class="summernote"></textarea>
			                    
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
		                    		<div class="form-group">
		                        <label class="form-label">Upload Images</label>
		                        <div class="custom-file">
		                           <input type="file" class="custom-file-input" name="example-file-input-custom">
		                           <label class="custom-file-label">Upload Images</label>
		                        </div>
		                    		</div>
										<div class="p-2 border mb-4">
									<div class="upload-images d-flex"  >
										<div>
											<img src="../images/products/h1.jpg" alt="img" class="w73 h73 border p-0">
										</div>
										<div class="ml-3 mt-2">
											<h6 class="mb-0 mt-3 font-weight-bold">h1.jpg</h6>
											<small>4.5kb</small>
										</div>
										<div class="float-right ml-auto">
											<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5" ><i class="fa fa-trash-o"></i></a>
										</div>
									</div>
								</div>
								
									<div class="card-header ">
										<h3 class="card-title">회사 정보</h3>
									</div>
									<br/>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label mb-0">회사명</label>
											<input type="text" class="form-control" >
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">담당자명</label>
											<input type="text" class="form-control" >
										</div>	
									</div>
								</div>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">이메일</label>
											<input type="email" class="form-control">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">연락처</label>
											<input type="number" class="form-control">
										</div>	
									</div>
								</div>	
		
							</div>
							<div class="card-footer ">
							<center>
							<a href="payments.do" class="btn btn-success">등록</a> 
								&nbsp;&nbsp;&nbsp;
							<a href="list.do" class="btn btn-success">취소</a>
							</center>
							</div>
						</div>
					</div>
				</div>
			</div>
				
		</section>
		<!--/Add posts-section-->

		<!--Footer Section-->
		<section>
			<footer class="bg-dark text-white">
				<div class="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-lg-10 col-md-12 col-md-12">
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
								Copyright Â© 2019 <a href="#" class="fs-14 text-primary">Pinlist</a>. Designed by <a href="#" class="fs-14 text-primary">Spruko</a> All rights reserved.
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
		
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->