
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
							<h1 class="">My Favorite Ads</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Favorite Ads</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">김소담</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">회원정보</a></li>
												<li><a class="slide-item " href="profilelist">프로필</a></li>
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
											<a class="side-menu__item " data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite_cor.html">프리랜서 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged-market.html">마켓관리</a></li>
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
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
						<!--  
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
						-->
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>프로필 리스트</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
							  		<div class="tabs-menus" align="right">
									<!--  Tabs --> 
										<!--  <ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">등록</a></li> 
											<li><a href="mydash" class="btn btn-secondary icons">등록</a></li>
											<li><a href="#" class="btn btn-secondary icons">삭제</a></li>
										</ul> -->
									</div>  
									
								<!-- <a href="mydash" class="btn btn-secondary icons">등록</a>		
									<a href="#" class="btn btn-secondary icons">삭제</a>	-->
										
								<div class="tab-content">
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead>
											<tr>												
													<th></th>													
													<th>프로필명</th>
													<th>이메일</th>
													<th>등록일</th>
													<th>첨부파일</th>
											</tr>
										</thead>
										<tbody>
												<tr>
													<td scope="row">
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label"></span>
														</label>
													</td>
													<td><a href="myprofilecontent" class="btn-link">개발만이 살길이다</td>
													<td>Associate Developer</td>
													<td>$450,870</td>
													<td><a href="#"><i class="fa fa-save"></i>자바.java</a></td>
												</tr>
												<tr>
													<td scope="row">
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label"></span>
														</label>
													</td>									
													<td><a href="myprofilecontent" class="btn-link">Gavin Gibson</td>
													<td>Account manager</td>
													<td>$230,540</td>
													<td><a href="#"><i class="fa fa-save"></i>개발.java</a></td>
												</tr>												
										</tbody>
									</table>
								</div>


							</div>
							</div>
								
							
							<div class="card">
								<div class="card-footer" align="right">
								<button type="submit" class="btn btn-primary">등록</button>	
								<a href="profilelist" class="btn btn-secondary icons">삭제</a>						
								</div>
								<div class="card-body" style="margin:0 auto; align:center;">
									<ul class="pagination mg-b-0 page-0 ">
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
										</li>
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
										</li>
				
										<li class="page-item active">
											<a class="page-link" href="#">1</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">2</a>
										</li>
										<li class="page-item">
											<a class="page-link hidden-xs-down" href="#">3</a>
										</li>
										<li class="page-item ">
											<a class="page-link" href="#">4</a>
										</li>
										<li class="page-item">
											<a class="page-link hidden-xs-down" href="#">5</a>
										</li>
								
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
										</li>
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
										</li>
									</ul>
								</div>
								<!-- pagination-wrapper -->
							</div>
							<!-- section-wrapper -->
						</div>
					</div>
				</div>
			</div>
	
		</section>
		<!--/User Dashboard-->

<<<<<<< HEAD

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

=======

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
							<h1 class="">My Favorite Ads</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Favorite Ads</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">김소담</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">회원정보</a></li>
												<li><a class="slide-item " href="profilelist">프로필</a></li>
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
											<a class="side-menu__item " data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite_cor.html">프리랜서 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged-market.html">마켓관리</a></li>
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
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
						<!--  
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
						-->
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>프로필 리스트</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
							  		<div class="tabs-menus" align="right">
									<!--  Tabs --> 
										<!--  <ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">등록</a></li> 
											<li><a href="mydash" class="btn btn-secondary icons">등록</a></li>
											<li><a href="#" class="btn btn-secondary icons">삭제</a></li>
										</ul> -->
									</div>  
									
								<!-- <a href="mydash" class="btn btn-secondary icons">등록</a>		
									<a href="#" class="btn btn-secondary icons">삭제</a>	-->
										
								<div class="tab-content">
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead>
											<tr>												
													<th></th>													
													<th>프로필명</th>
													<th>이메일</th>
													<th>등록일</th>
													<th>첨부파일</th>
											</tr>
										</thead>
										<tbody>
												<tr>
													<td scope="row">
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label"></span>
														</label>
													</td>
													<td><a href="myprofilecontent" class="btn-link">개발만이 살길이다</td>
													<td>Associate Developer</td>
													<td>$450,870</td>
													<td><a href="#"><i class="fa fa-save"></i>자바.java</a></td>
												</tr>
												<tr>
													<td scope="row">
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label"></span>
														</label>
													</td>									
													<td><a href="myprofilecontent" class="btn-link">Gavin Gibson</td>
													<td>Account manager</td>
													<td>$230,540</td>
													<td><a href="#"><i class="fa fa-save"></i>개발.java</a></td>
												</tr>												
										</tbody>
									</table>
								</div>


							</div>
							</div>
								
							
							<div class="card">
								<div class="card-footer" align="right">
								<button type="submit" class="btn btn-primary">등록</button>	
								<a href="profilelist" class="btn btn-secondary icons">삭제</a>						
								</div>
								<div class="card-body" style="margin:0 auto; align:center;">
									<ul class="pagination mg-b-0 page-0 ">
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
										</li>
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
										</li>
				
										<li class="page-item active">
											<a class="page-link" href="#">1</a>
										</li>
										<li class="page-item">
											<a class="page-link" href="#">2</a>
										</li>
										<li class="page-item">
											<a class="page-link hidden-xs-down" href="#">3</a>
										</li>
										<li class="page-item ">
											<a class="page-link" href="#">4</a>
										</li>
										<li class="page-item">
											<a class="page-link hidden-xs-down" href="#">5</a>
										</li>
								
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
										</li>
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
										</li>
									</ul>
								</div>
								<!-- pagination-wrapper -->
							</div>
							<!-- section-wrapper -->
						</div>
					</div>
				</div>
			</div>
	
		</section>
		<!--/User Dashboard-->


<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->