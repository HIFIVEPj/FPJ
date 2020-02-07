<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Dashboard</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Dashboard</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">My Dashboard</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<span class="bg-success dots" data-toggle="tooltip" data-placement="top" title="" data-original-title="online"></span>
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">Robert McLean</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">Edit Profile</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">Edit Profile-1</a></li>
												<li><a class="slide-item " href="mydash.html">Edit Profile-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-diamond"></i><span class="side-menu__label"> My Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myads.html"> My Ads-1</a></li>
												<li><a class="slide-item" href="myads.html"> My Ads-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label"> My Favorite</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-1</a></li>
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">Managed Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged.html">Managed Ads-1</a></li>
												<li class="sub-slide">
													<a class="side-menu__item border-top-0 slide-item" href="#" data-toggle="sub-slide"><span class="side-menu__label">Managed Ads-2</span> <i class="sub-angle fa fa-angle-right"></i></a>
													<ul class="child-sub-menu ">
														<li><a class="slide-item" href="manged.html">Managed Ads-3</a></li>
														<li><a class="slide-item" href="manged.html">Managed Ads-4</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">Payments</span></a>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-basket"></i><span class="side-menu__label">Orders</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="orders.html">Orders-1</a></li>
												<li><a class="slide-item" href="orders.html">Orders-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-game-controller"></i><span class="side-menu__label"> Safety Tips</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="tips.html">Safety Tips-1</a></li>
												<li><a class="slide-item" href="tips.html">Safety Tips-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-settings"></i><span class="side-menu__label"> Settings </span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="settings.html">Settings-1</a></li>
												<li><a class="slide-item" href="settings.html">Settings-2</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
						<div class="card my-select">
							<div class="card-header">
								<h3 class="card-title">Search Ads</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="text" placeholder="What are you looking for?">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected="">All Categories</option>
										<option value="2">RealEstate</option>
										<option value="3">Restaurant</option>
										<option value="4">Beauty</option>
										<option value="5">Jobs</option>
										<option value="6">Services</option>
										<option value="7">Vehicle</option>
										<option value="8">Education</option>
										<option value="9">Electronics</option>
										<option value="10">Pets &amp; Animals</option>
										<option value="11">Computer</option>
										<option value="12">Mobile</option>
										<option value="13">Events</option>
										<option value="14">Travel</option>
										<option value="15">Clothing</option>
									</select>
								</div>
								<div class="">
									<a href="#" class="btn  btn-primary">Search</a>
								</div>
							</div>
						</div>
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">Safety Tips For Buyers</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Meet Seller at public Place
									</li>
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Check item before you buy
									</li>
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Pay only after collecting item
									</li>
									<li class="ml-5 mb-0">
										<a href="tips.html"> View more..</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">프로필 등록하기</h3>
							</div>
							
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
										<label class="form-label">직종</label>
                                 			<select class="form-control">
                                    			<option selected> </option>
                                    			<option>개발</option>
                                    			<option>디자인</option>
                                   				 <option>기획</option>
                                   				 <option>기타</option>
                                			 </select>

										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">경력</label>
											<input type="number" class="form-control" placeholder="경력">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
											<label class="form-label">키워드</label>
										</div>
									</div>	
									
						
							<div class="col-sm-6 col-md-12">
								<div class="form-group ">																							
								<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
										 	<li><a href="#tab1" class="active" data-toggle="tab">개발</a></li> 
											<li><a href="#tab2" data-toggle="tab">퍼블리셔</a></li>
											<li><a href="#tab3" data-toggle="tab">디자인</a></li>
											<li><a href="#tab4" data-toggle="tab">기획</a></li>
											<li><a href="#tab5" data-toggle="tab">기타</a></li>											
										</ul>
									</div>
									<div class="tab-content">
										<!-- tab 개발 시작   -->	
										<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
											<!-- 개발자 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ java 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">JAVA</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Front-end</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Back_End</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Java</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Spring</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Xplatform</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Miplantform</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Nexacro</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Proframe</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Maven</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Jenkins</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Sencha</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Trustform</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Tuxedo</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Gauce</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Pro*C</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">DecOn</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Thymeleaf</span>
														</label>
													</div>
												</div>
										<!------------------------ java 끝----------------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
										<!------------------------ Mobile App 시작---------------------------------------------------->						
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">Mobile App</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Hybrid</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Android</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ios(Object-C)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ios(Swift)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">WebView</span>
														</label>
													</div>
												</div>			
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">IoT</span>
														</label>
													</div>	
												</div>	
											<!------------------------ Mobile App 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
											<!------------------------ PHP/ASP 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">PHP/ASP</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">PHP</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Laravel</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Codeigniter</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Symfony</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">WordPress</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ASP</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ZendFramework</span>
														</label>
													</div>	
												</div>	
											<!------------------------ PHP/ASP 끝---------------------------------------------------->												
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
											<!------------------------ NET 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">NET</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ASP.net</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C++</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C#</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MFC</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">OpenGL</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">VBA</span>
														</label>
													</div>														
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">DevExpress</span>
														</label>
													</div>	
												</div>												
											<!------------------------ NET 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ JavaScript 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">JavaScrip</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">node.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">AngularJS</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">React.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Vue.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">jQuery</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">JavaScript</span>
														</label>
													</div>		
												</div>														
											<!------------------------ JavaScript 끝---------------------------------------------------->						
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ C/C++ 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">C/C++</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Server</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">UNIX</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Embedded</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Firmware</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Aduino</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Qt</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">LabVIEW</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MetaLab</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Machine Vision</span>
														</label>
													</div>																																									
												</div>														
											
											<!------------------------ C/C++ 끝---------------------------------------------------->		
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>												
											<!------------------------DB 시작---------------------------------------------------->		
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">DB</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Oracle</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MSSQL</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MySQL</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MariaDB</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MongoDB</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">CUBRID</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Tibero</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Postgresql</span>
														</label>
													</div>																																									
												</div>												
											<!------------------------DB 끝---------------------------------------------------->															
															
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div>
								<!-- tab 개발 끝   -->
								
								<!-- tab 퍼블리셔 시작   -->	
									<div class="tab-pane active table-responsive border-top userprof-tab" id="tab2">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 퍼블리셔 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">퍼블리셔</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">HTML5</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">CSS</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">ActionScript</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">AngularJS</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">React.js</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Vue.js</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">jQuery</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">JavaScript</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">WordPress</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">BootStrap</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Photoshop</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Flash</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">웹접근성</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">웹표준</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Git</span>
														</label>
													</div>
												</div>								
															
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div> <!-- tab 퍼블리셔 끝   -->	
									
							<!-- tab 디자인 시작   -->	
									<div class="tab-pane active table-responsive border-top userprof-tab" id="tab3">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 디자인 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">디자인</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">웹디자인</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">앱디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">게임디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">3D디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">그래픽디자인</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">패키지디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">아트 디렉션</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">애니메이션</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">로고브랜딩</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">판촉물디자인</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">출판/편집디자인</span>
														</label>
													</div>
													
												</div>								
															
											</div>
										</div>
										<!-- 디자인 끝  -->				
									</div> <!-- tab 디자인 끝   -->
								<!-- tab 기획 시작   -->	
									<div class="tab-pane active table-responsive border-top userprof-tab" id="tab4">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기획 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기획</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">웹기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">앱기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">컨설팅</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">제안</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">쇼핑몰</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">여행사</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">금융</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">증권</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">카드</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">물류</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">보험</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">대학</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">병원</span>
														</label>
													</div>													
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">회계</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">제조</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">건설</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">암호화폐</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">PMO</span>
														</label>
													</div>													
												</div>
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">공공기관</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>												
												</div>																													
															
											</div>
										</div>
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->	
							<!-- tab 기획 시작   -->	
									<div class="tab-pane active table-responsive border-top userprof-tab" id="tab5">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기획 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기획</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PMO</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">DA</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">DBA</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">TA</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">AA</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">NA</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">SE</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">QA</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">QC</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>													
													
												</div>								
															
											</div>
										</div>
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->																		
																			
																									
									</div>								
								</div>								
							</div>	
							</div>
						
					
							<!-- 																		
									<div class="col-sm-6 col-md-12">									
									<div class="form-group ">
										
										<div class="row">									
											<div class="col-md-2">											
												<label class="form-label">JAVA</label>										
											</div>
												
											<div class="col-md-2">											
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Front-end</span>
													</label>
											</div>
											<div class="col-md-2">											
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Back_End</span>
												</label>
											</div>
											<div class="col-md-2">
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Java</span>
												</label>
											</div>
											<div class="col-md-2">	
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Spring</span>
												</label>
											</div>
											<div class="col-md-2">	
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Xplatform</span>
												</label>
											</div>
										</div>	
										<div class="row">
											<div class="col-md-2">											
												<label class="form-label"></label>										
											</div>
										<div class="col-md-2">
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Miplantform</span>
											</label>
										</div>
										<div class="col-md-2">
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Nexacro</span>
											</label>
										</div>	
											
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Proframe</span>
											</label>
										</div>	
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Maven</span>
											</label>
										</div>	
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Jenkins</span>
											</label>
										</div>	
									</div>	
										
									<div class="row">
										<div class="col-md-2">											
											<label class="form-label"></label>										
										</div>	
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Sencha</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Trustform</span>
											</label>
											</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Tuxedo</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Gauce</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Pro*C</span>
											</label>
										</div>
									</div>	
									<div class="row">
										<div class="col-md-2">											
											<label class="form-label"></label>										
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">DecOn</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Thymeleaf</span>
											</label>
										</div>
									</div>
							
								<div class="row">
											<div class="col-md-12">											
												<HR />									
											</div>	
								</div>
										
									<div class="row">
										<div class="col-md-2">											
											<label class="form-label">Mobile App</label>										
										</div>	
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Hybrid</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">Android</span>
											</label>
											</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">ios(Object-C)</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">ios(Swift)</span>
											</label>
										</div>
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">WebView</span>
											</label>
										</div>
									</div>			
									<div class="row">
										<div class="col-md-2">											
											<label class="form-label"></label>										
										</div>	
										<div class="col-md-2">	
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
												<span class="custom-control-label">IoT</span>
											</label>
										</div>	
									</div>		
								</div>
							</div>
								
					      -->
						
		
								<!-- <div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">전화번호</label>
											<input type="text" class="form-control" placeholder="전화번호">
										</div>
									</div> -->								

									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">주소</label>
											<input type="text" class="form-control" placeholder="주소">
										</div>
									</div>
									<!--<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">업무가능여부</label>
											 <input type="text" class="form-control" placeholder="업무가능여부">											
										</div>										
									</div>-->
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
										<div class="col-md-3">
											<label class="form-label">업무가능여부</label>
										</div>
										<div class="col-md-9">
											<label class="custom-switch">
												<input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input">
												<span class="custom-switch-indicator"></span>
												<span class="custom-switch-description">불가능/가능</span>
											</label>
										</div>
										</div>
										</div>
									</div>
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
												<div class="col-md-3">
													<label class="form-label">업무가능일</label>
												</div>
										<div class="col-md-9">
											<div class="wd-200 mg-b-30">
												<div class="input-group">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
														</div>
													</div><input class="form-control fc-datepicker" placeholder="MM/DD/YYYY" type="text">
												</div>
											</div>
										</div>
										</div>
										</div>
									</div>	

									<div class="col-sm-6 col-md-12">	
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">업무장소</label>
											</div>
											<div class="col-md-9">
												  <select class="form-control">
	                                    			<option selected> </option>
	                                    			<option value="0">상주</option>
	                                    			<option value="1">반상주</option>
	                                   				 <option value="2">자택</option>
	                                   				 <option value="3">상관없음</option>
	                                			 </select>
											</div>
										</div>
									</div>
										
								<!-- 	<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label class="form-label">업무가능일</label>
											<input type="number" class="form-control" placeholder="업무가능일">
										</div>
									</div>
								-->	
									<!-- 
									<div class="col-md-5">
										<div class="form-group">
											<label class="form-label">선호지역</label>
											<select class="form-control select2-show-search border-bottom-0 w-100 select2-show-search" data-placeholder="Select">
												<optgroup label="Categories">
													<option>--Select--</option>
													<option value="1">Germany</option>
													<option value="2">Real Estate</option>
													<option value="3">Canada</option>
													<option value="4">Usa</option>
													<option value="5">Afghanistan</option>
													<option value="6">Albania</option>
													<option value="7">China</option>
													<option value="8">Denmark</option>
													<option value="9">Finland</option>
													<option value="10">India</option>
													<option value="11">Kiribati</option>
													<option value="12">Kuwait</option>
													<option value="13">Mexico</option>
													<option value="14">Pakistan</option>
												</optgroup>
											</select>
										</div>
									</div> 
									-->						
										
																	
				<!-- 					<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">Facebook</label>
											<input type="text" class="form-control" placeholder="https://www.facebook.com/">
										</div>
									</div>    -->
 

									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">자기소개</label>
											<textarea rows="5" class="form-control" placeholder=""></textarea>
										</div>
									</div>
							<!-- 	<div class="col-md-12">
										<div class="form-group mb-0">
											<label class="form-label">첨부파일</label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" name="example-file-input-custom">
												<label class="custom-file-label">Choose file</label>
											</div>
										</div>
									</div> 
									<div class="p-2 border mb-4">
										<div class="upload-images d-flex">
											<div>
												<img src="../images/faces/male/25.jpg" alt="img" class="w73 h73 border p-0">
											</div>
											<div class="ml-3 mt-2">
												<h6 class="mb-0 mt-3 font-weight-bold">25.jpg</h6>
												<small>4.5kb</small>
											</div>
											<div class="float-right ml-auto">
												<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5"><i class="fa fa-trash-o"></i></a>
											</div>
										</div>
									</div> -->
									<div class="col-md-12">
									<div class="form-group ">
										<div class="row">
											<div class="col-md-3">
												<label class="form-label mt-2">첨부파일</label>
											</div>
											<div class="col-md-9">
												<div class="form-group">
													<div class="custom-file">
														<input type="file" class="custom-file-input" name="example-file-input-custom">
														<label class="custom-file-label">Upload Files</label>
													</div>
												</div>
												<div class="p-2 border mb-4">
													<div class="upload-images d-flex">
														<div>
															<img src="../images/faces/male/25.jpg" alt="img" class="w73 h73 border p-0">
														</div>
														<div class="ml-3 mt-2">
															<h6 class="mb-0 mt-3 font-weight-bold">25.jpg</h6>
															<small>4.5kb</small>
														</div>
														<div class="float-right ml-auto">
															<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5"><i class="fa fa-trash-o"></i></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									</div>									
								</div>
							</div>
							<div class="card-footer" align="right">
								<button type="submit" class="btn btn-primary">수정하기</button>	
								<a href="profilelist" class="btn btn-secondary icons">삭제</a>
								<a href="profilelist" class="btn btn-secondary icons">목록</a>						
							</div>
						<!-- 	<div class="card-footer" align="right">
								<div class="icons">
									<a href="employer-list-right" class="btn btn-secondary icons">목록</a>
								</div>
							</div> -->	
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->
		

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->