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
							<h1 class="">Managed Ads</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard </a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Managed Ads</li>
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
												<li><a class="slide-item" href="mydash.html">프리랜서</a></li>
												<li><a class="slide-item" href="myprofile.html">프리랜서 프로필</a></li>
												<li><a class="slide-item " href="mydash_cor.html">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite_cor.html">프리랜서 찜</a></li>
												<li><a class="slide-item" href="myfavorite_market.html">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="managed-market.html">마켓관리</a></li>
												<li><a class="slide-item" href="managed_order.html">구매관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
								<h3 class="card-title">마켓관리</h3>
							</div>
							<div class="card-body">
								<div class="managed-ad table-responsive border-top userprof-tab">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th></th>
												<th colspan="2"><b>제목</b></th>
												<th><b>가격</b></th>
												<th><b>상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td colspan="2">
													<div class="media mt-0 mb-0">
														<div class="card-aside-img">
															<a href="#"></a>
															<img src="../images/products/h1.png" alt="img">
														</div>
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="#" class="text-dark"><h4 class=""><b>반응형 홈페이지 만들어 드립니다</b></h4></a>
																<span class="font-12">고 퀄리티 반응형 홈페이지 제작 가능합니다. </span><br>
																<div style="padding-top:5px;">
																<span class="text-warning">
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	</span>
																	<i class="fa fa-star"> </i> | <i class="fa fa-eye"></i> 344<br>
																</div>
															</div>
														</div>
													</div>
												</td>
												
												<td class="font-weight-semibold fs-16">10,000,000원</td>
												<td>
													<a href="#" class="badge badge-warning">판매중</a>
												</td>
												<td>
													<a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
													<a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
					
												</td>
											</tr>
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td colspan="2">
													<div class="media mt-0 mb-0">
														<div class="card-aside-img">
															<a href="#"></a>
															<img src="../images/products/h1.png" alt="img">
														</div>
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="#" class="text-dark"><h4 class=""><b>디자인 작업해드립니다</b></h4></a>
																<span class="font-12">SNS, 카드뉴스 및 웹디자인 가능</span><br>
																<div style="padding-top:5px;">
																<span class="text-warning">
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	<i class="fa fa-star"> </i>
																	</span>
																	<i class="fa fa-star"> </i> | <i class="fa fa-eye"></i> 344<br>
																</div>
															</div>
														</div>
													</div>
												</td>
												
												<td class="font-weight-semibold fs-16">50,000원</td>
												<td>
													<a href="#" class="badge badge-warning">판매중</a>
												</td>
												<td>
													<a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
													<a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--User Dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->