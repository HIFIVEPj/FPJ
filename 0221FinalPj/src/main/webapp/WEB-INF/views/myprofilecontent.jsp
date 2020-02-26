<<<<<<< HEAD
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
						<div class="card-body">
						<div id="profile-log-switch">
							<div class="fade show active " >
								<div class="table-responsive border ">
									<table class="table row table-borderless w-100 m-0 ">
										<tbody class="col-lg-12 col-xl-6 p-0">
											<tr>
												<td><strong>이름 :</strong> 강아지</td>
											</tr>
											<tr>
												<td><strong>업무가능지역 :</strong> 서울시 영등포구</td>
											</tr>
											<tr>
												<td><strong>키워드 :</strong> Java, C++, PHP.</td>
											</tr>
										</tbody>
										<tbody class="col-lg-12 col-xl-6 p-0">
											<tr>
												<td><strong>직종 :</strong>개발자</td>
											</tr>
											<tr>
												<td><strong>Email :</strong> georgemestayer@Pinlist.com</td>
											</tr>
											<tr>
												<td><strong>연락처 :</strong> +125 254 3562 </td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="row mt-5 profie-img">
									<div class="col-md-12">
										<div class="media-heading">
										<h5><strong>자기소개</strong></h5>
									</div>
									<p>
										 Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus</p>
									<p >because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter but because those who do not know how to pursue consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
					
									</div>
									<div class="col-md-12">			
										<div class="media-heading">
										<h5><strong>첨부파일</strong></h5>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table card-table table-vcenter border text-nowrap">
												<thead>
													<tr>
														<th>프로젝트명</th>
														<th>등록일</th>
														<th>파일</th>														
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents </a></td>
														<td>28 May 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
														
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>										

													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 July 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>14 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>													
													</tr>													
												</tbody>
											</table>
										</div>
									</div>
								
									</div>
								</div>
							</div>
						</div>
							</div>
							<div class="card-footer" align="right">
								<a href="mydashrewrite" class="btn btn-secondary icons">수정하기</a>
								<a href="#" class="btn btn-secondary icons">삭제하기</a>		
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
=======
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
						<div class="card-body">
						<div id="profile-log-switch">
							<div class="fade show active " >
								<div class="table-responsive border ">
									<table class="table row table-borderless w-100 m-0 ">
										<tbody class="col-lg-12 col-xl-6 p-0">
											<tr>
												<td><strong>이름 :</strong> 강아지</td>
											</tr>
											<tr>
												<td><strong>업무가능지역 :</strong> 서울시 영등포구</td>
											</tr>
											<tr>
												<td><strong>키워드 :</strong> Java, C++, PHP.</td>
											</tr>
										</tbody>
										<tbody class="col-lg-12 col-xl-6 p-0">
											<tr>
												<td><strong>직종 :</strong>개발자</td>
											</tr>
											<tr>
												<td><strong>Email :</strong> georgemestayer@Pinlist.com</td>
											</tr>
											<tr>
												<td><strong>연락처 :</strong> +125 254 3562 </td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="row mt-5 profie-img">
									<div class="col-md-12">
										<div class="media-heading">
										<h5><strong>자기소개</strong></h5>
									</div>
									<p>
										 Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus</p>
									<p >because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter but because those who do not know how to pursue consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
					
									</div>
									<div class="col-md-12">			
										<div class="media-heading">
										<h5><strong>첨부파일</strong></h5>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table card-table table-vcenter border text-nowrap">
												<thead>
													<tr>
														<th>프로젝트명</th>
														<th>등록일</th>
														<th>파일</th>														
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents </a></td>
														<td>28 May 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
														
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>										

													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 July 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>14 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>													
													</tr>													
												</tbody>
											</table>
										</div>
									</div>
								
									</div>
								</div>
							</div>
						</div>
							</div>
							<div class="card-footer" align="right">
								<a href="mydashrewrite" class="btn btn-secondary icons">수정하기</a>
								<a href="#" class="btn btn-secondary icons">삭제하기</a>		
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
>>>>>>> 6639d0921df9b65c8efd3090a1a3933ebc32d277
<!--/footer-->