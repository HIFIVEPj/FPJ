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
		<meta name="keywords" content="freelancer,freelance,project,market service, free market">
		<link rel="icon" type="image/png" href="../images/hifive.png" />
		<link rel="shortcut icon" type="image/png" href="../images/hifive.png" />

		<!-- summernote -->			
		<link href="/summernote/summernote-lite.css" rel="stylesheet">
		<!--
		<script src="../js/jquery.js"></script>
		-->
		<script src="../plugins/waves/js/jquery-3.2.1.slim.min.js"></script>
		<script type="text/javascript" src="/summernote/summernote-lite.js"></script>
		<script src="/summernote/lang/summernote-ko-KR.js"></script>


		<!-- Title -->
		<title>하이파이브 - 프리랜서 플랫폼</title>

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
		
		<!-- file Uploads -->
		<!--
        <link href="../plugins/fileuploads/css/dropify.css" rel="stylesheet" type="text/css" />
        -->
        <link rel="stylesheet" href="../plugins/fileuploads/css/dropify-multiple.min.css">
        <link rel="stylesheet" href="../plugins/fileuploads/css/dropify-multiple.css">
        <!--
        <link rel="stylesheet" href="../plugins/fileuploads/fonts/*">
        -->
        
        
        <!-- Sidemenu Css -->
		<link href="../plugins/toggle-sidebar/sidemenu.css" rel="stylesheet" />
		
		<!-- 파일업로드 테스트 -->
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="../plugins/fileuploads-test/jquery.growl.css" rel="stylesheet" type="text/css">
		<link href="../plugins/fileuploads-test/fileup.css" rel="stylesheet" type="text/css">
		<style>
			
			.dropzone {
			    background-color: #ccc;
			    border: 3px dashed #888;
			    width: 350px;
			    height: 150px;
			    border-radius: 25px;
			    font-size: 20px;
			    color: #777;
			    padding-top: 50px;
			    text-align: center;
			}
			.dropzone.over {
			    opacity: .7;
			    border-style: solid;
			}
			#dropzone .dropzone {
			    margin-top: 25px;
			    padding-top: 60px;
			}
		</style>

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
								<li aria-haspopup="true"><a href="customer_service_list">고객센터 <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">하이파이브 소개</a></li>
										<li aria-haspopup="true"><a href="customer_service_notice">공지사항</a></li>
										<li aria-haspopup="true"><a href="customer_service_faq">FAQ</a></li>
										<li aria-haspopup="true"><a href="customer_service_qa">문의하기</a></li>
										<li aria-haspopup="true"><a href="customer_service_terms_of_service">이용약관</a></li>
										<li aria-haspopup="true"><a href="customer_service_terms_of_personal_info">개인정보처리방침</a></li>
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
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">문의하기</h1>
									<!--
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="page">문의하기</li>
									</ol>
									-->
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
					<h4 class="page-title">문의하기</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
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
							<div class="card-title">문의 글쓰기</div>
						</div>
						
						
						<!-- 테스트 -->
							<div class="container">
							<h1>jQuery FileUp Demos</h1>
							<div class="jquery-script-ads" style="margin-top:20px;"><script type="text/javascript"><!--
							google_ad_client = "ca-pub-2783044520727903";
							/* jQuery_demo */
							google_ad_slot = "2780937993";
							google_ad_width = 728;
							google_ad_height = 90;
							//-->
							</script>
							<script type="text/javascript"
							src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
							</script></div>
							  <h2>Basic</h2>
							  <button type="button" class="btn btn-success fileup-btn" style="background-color: #4CAE4C;">
							  Select file
							  <input type="file" id="upload-1">
							  </button>
							  <div id="upload-1-queue" class="queue"></div>
							  <h2>Multi Upload</h2>
							  <form id="multiple">
							  <button type="button" class="btn btn-success fileup-btn">
							        Select files
							        <input type="file" id="upload-2" multiple>
							    </button>
							
							    <a class="control-button btn btn-link" style="display: none"
							       href="javascript:$.fileup('upload-2', 'upload', '*')">Upload all</a>
							    <a class="control-button btn btn-link" style="display: none"
							       href="javascript:$.fileup('upload-2', 'remove', '*')">Remove all</a>
							
							    <div id="upload-2-queue" class="queue"></div>
							    </form>
							    <h2>Image Only</h2>
							     <button type="button" class="btn btn-success fileup-btn">
							        Select images
							        <input type="file" id="upload-3" multiple accept="image/*">
							    </button>
							
							    <div id="upload-3-queue" class="queue"></div>
							    <h2>Drag and drop zone</h2>
							    <form id="dropzone">
							    <button type="button" class="btn btn-success fileup-btn">
							        Select files
							        <input type="file" id="upload-4" multiple>
							    </button>
							
							    <div id="upload-4-dropzone" class="dropzone">
							        Dropzone
							    </div>
							
							    <div id="upload-4-queue" class="queue"></div>
							    </form>
							</div>
							<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
							<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
							<script src="../plugins/fileuploads-test/jquery.growl.js"></script> 
							<script src="../plugins/fileuploads-test/fileup.js"></script> 
							<script>
							        $.fileup({
							            url: 'example.com/your/path?file_upload=1',
							            inputID: 'upload-1',
							            queueID: 'upload-1-queue',
							            onSuccess: function(response, file_number, file) {
							                $.growl.notice({ title: "Upload success!", message: file.name });
							            },
							            onError: function(event, file, file_number) {
							                $.growl.error({ message: "Upload error!" });
							            }
							        });
									$.fileup({
							            url: 'example.com/your/path?file_upload=1',
							            inputID: 'upload-2',
							            dropzoneID: 'upload-2-dropzone',
							            queueID: 'upload-2-queue',
							            onSelect: function(file) {
							                $('#multiple .control-button').show();
							            },
							            onRemove: function(file, total) {
							                if (file === '*' || total === 1) {
							                    $('#multiple .control-button').hide();
							                }
							            },
							            onSuccess: function(response, file_number, file) {
							                $.growl.notice({ title: "Upload success!", message: file.name });
							            },
							            onError: function(event, file, file_number) {
							                $.growl.error({ message: "Upload error!" });
							            }
							        });
									$.fileup({
							            url: 'https://github.com?file_upload=1',
							            inputID: 'upload-3',
							            queueID: 'upload-3-queue',
							            autostart: true,
							            onSelect: function(file) {
							                $('#types .control-button').show();
							            },
							            onRemove: function(file, total) {
							                if (file === '*' || total === 1) {
							                    $('#types .control-button').hide();
							                }
							            },
							            onSuccess: function(response, file_number, file) {
							                $.growl.notice({ title: "Upload success!", message: file.name });
							            },
							            onError: function(event, file, file_number) {
							                $.growl.error({ message: "Upload error!" });
							            }
							        });
									 $.fileup({
							            url: 'https://github.com?file_upload=1',
							            inputID: 'upload-4',
							            queueID: 'upload-4-queue',
							            dropzoneID: 'upload-4-dropzone'
							        })
							            .select(function(file) {
							                $('#dropzone .control-button').show();
							            })
							            .remove(function(file, total) {
							                if (file === '*' || total === 1) {
							                    $('#dropzone .control-button').hide();
							                }
							            })
							            .success(function(response, file_number, file) {
							                $.growl.notice({ title: "Upload success!", message: file.name });
							            })
							            .error(function(event, file, file_number) {
							                $.growl.error({ message: "Upload error!" });
							            })
							            .dragEnter(function(event) {
							                $(event.target).addClass('over');
							            })
							            .dragLeave(function(event) {
							                $(event.target).removeClass('over');
							            })
							            .dragEnd(function(event) {
							                $(event.target).removeClass('over');
							            });
							
							    </script>
							    <script type="text/javascript">
							
							  var _gaq = _gaq || [];
							  _gaq.push(['_setAccount', 'UA-36251023-1']);
							  _gaq.push(['_setDomainName', 'jqueryscript.net']);
							  _gaq.push(['_trackPageview']);
							
							  (function() {
							    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
							    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
							    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
							  })();
							
							</script>
			
			
						
						
						
						
						
						<!-- /테스트 -->
						
					</div>
				</div>
			</div>
		</section>			
		<!--/공지 게시판 입력 폼-->
		
		
			
<!--footer-->
		<!--Footer Section-->
		<section>
			<footer class="text-white" style="background-color:#0e284c;">
			<!--
			<footer class="bg-dark text-white">
			-->
				<div class="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 col-md-12">
								<h6>하이파이브 소개</h6>
								<p class="fs-14 mb-1">&nbsp;하이파이브 (HI-FIVE)는 '가치를 찾고 사용하라'는 의미인 HIre & FInd ValuEs에서 유래하였습니다.</p>
								<p class="fs-14 mb-0">&nbsp;하이파이브는 기업과 프리랜서 분들이 원하시는 가치와 서비스를 충분히 제공받으실 수 있는 플랫폼이 되기 위해 끊임없이 노력할 것을 약속드립니다.</p>
							</div>
							<div class="col-lg-4 col-md-12 text-center">
								<h6>서비스</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">프로젝트</a></li>
									<li><a href="#">프리마켓</a></li>
									<li><a href="#">프리랜서</a></li>
									<li><a href="#">고객센터</a></li>
								</ul>
							</div>
							<div class="col-lg-4 col-md-12">
								<h6>연락하기</h6>
								<ul class="list-unstyled mb-0">
									<li>주소 : 서울특별시 마포구 백범로 23 구프라자 3층</li>
									<li>전화 : 02-707-1480</li>
									<li>메일 : baramoss420@gmail.com</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="text-white p-0" style="background-color:#0e284c;">
				<!--
				<div class="bg-dark text-white p-0">
				-->
					<div class="container">
						<div class="row d-flex">
							<div class="col-lg-12 col-sm-12  mt-2 mb-2 text-center ">
								Copyright © 2019 <a href="#">Pinlist</a>. Designed by <a href="#">Spruko</a> All rights reserved.
							</div>
						</div>
					</div>
				</div>
			</footer>
		</section>
		<!--Footer Section-->

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

		<!--Counters -->
		<script src="../plugins/counters/counterup.min.js"></script>
		<script src="../plugins/counters/waypoints.min.js"></script>

		<!--JQuery TouchSwipe js-->
		<script src="../js/jquery.touchSwipe.min.js"></script>

		<!--Select2 js -->
		<script src="../plugins/select2/select2.full.min.js"></script>
		<script src="../js/select2.js"></script>

		<!-- Cookie js -->
		<script src="../plugins/cookie/jquery.ihavecookies.js"></script>
		<script src="../plugins/cookie/cookie.js"></script>

		<!-- side-menu Js-->
		<script src="../plugins/toggle-sidebar/sidemenu.js"></script>

		<!-- Count Down-->
		<script src="../plugins/count-down/jquery.lwtCountdown-1.0.js"></script>

		<!-- Ion.RangeSlider -->
		<script src="../plugins/jquery-uislider/jquery-ui.js"></script>

		<!-- Data tables -->
		<script src="../plugins/datatable/jquery.dataTables.min.js"></script>
		<script src="../plugins/datatable/dataTables.bootstrap4.min.js"></script>
		<script src="../plugins/datatable/datatable.js"></script>

        <!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- sticky Js-->
		<script src="../js/sticky.js"></script>

		<!--Counters -->
		<script src="../plugins/counters/counterup.min.js"></script>
		<script src="../plugins/counters/waypoints.min.js"></script>
		<script src="../plugins/counters/numeric-counter.js"></script>

		<!-- Swipe Js-->
		<script src="../js/swipe.js"></script>
		
		<!--Showmore Js-->
		<script src="../js/jquery.showmore.js"></script>
		<script src="../js/showmore.js"></script>	

		<!-- Custom Js-->
		<script src="../js/custom.js"></script>
		<script src="../js/custom2.js"></script>
		<script src="../js/admin-custom.js"></script>
		<script>
		$(window).on("load", function(e) {
		$("#loading").fadeOut("slow");
		})
		</script>
		
		<!-- Datepicker js 날짜입력 -->
		<script src="../plugins/date-picker/spectrum.js"></script>
		<script src="../plugins/date-picker/jquery-ui.js"></script>
		<script src="../plugins/input-mask/jquery.maskedinput.js"></script>
		
		<!-- Inline js 날짜입력 -->
		<!-- Custom Js와 겹치기 때문에 주석처리
		<script src="../js/select2.js"></script>
		-->
		<script src="../js/formelements.js"></script>
		
		<!-- file uploads js -->
		<!--
        <script src="../plugins/fileuploads/js/dropify.js"></script>
        -->
        <script src="../plugins/fileuploads/js/dropify.min.js"></script>
        <script src="../plugins/fileuploads/js/dropify-multiple.min.js"></script>
        <script src="../plugins/fileuploads/js/dropify-multiple.js"></script>
        <!--
        <script type="text/javascript">
            $(document).ready(function(){
                // Basic
               $('.dropify').dropify();
            });
         </script>
         

         <script type="text/javascript">   
         	$(".dropify-clear").trigger("click");
      	 </script>
		-->


        
        <!---Tabs JS-->
		<script src="../plugins/tabs/jquery.multipurpose_tabcontent.js"></script>
		<script src="../js/tabs.js"></script>
		
		<!-- Sweet alert Plugin -->
		<script src="../plugins/sweet-alert/sweetalert.min.js"></script>
		<script src="../js/sweet-alert.js"></script>
		
		<!-- Animation -->
        <script src="../plugins/particles/particles.js"></script>
        <script src="../plugins/particles/particlesapp_default.js"></script>
        
        <!--InputMask Js-->
		<script src="../plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"></script>
		
		<!-- Vertical scroll bar Js-->
		<script src="../plugins/vertical-scroll/jquery.bootstrap.newsbox.js"></script>
		<script src="../plugins/vertical-scroll/vertical-scroll.js"></script>
		
		<!-- Google Maps Plugin -->
		<script src="https://maps.google.com/maps/api/js?key=AIzaSyAykAdIIsNMu0V2wyGOMQcguo8zKngWlyM"></script>
		<script src="../plugins/maps-google/jquery.googlemap.js"></script>
		<script src="../plugins/maps-google/map.js"></script>
		
		<!-- Dashboard js -->
		<!--
		<script src="../js/vendors/jquery-3.2.1.min.js"></script>
		<script src="../plugins/bootstrap-4.1.3/popper.min.js"></script>
		<script src="../plugins/bootstrap-4.1.3/js/bootstrap.min.js"></script>
		<script src="../js/vendors/jquery.sparkline.min.js"></script>
		<script src="../js/vendors/circle-progress.min.js"></script>
		<script src="../plugins/rating/jquery.rating-stars.js"></script>
		-->
		<script src="../js/vendors/selectize.min.js"></script>
		<script src="../js/vendors/jquery.tablesorter.min.js"></script>
		
		<!-- Fullside-menu Js-->
		<!--
		<script src="../plugins/toggle-sidebar/sidemenu.js"></script>
		-->

	</body>
</html>
<!--/footer-->