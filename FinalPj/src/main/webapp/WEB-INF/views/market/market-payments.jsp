
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
							<h1 class="">Payments</h1>
							<!--
							<ol class="breadcrumb text-center"> 
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Managed Ads</li>
							</ol>
							-->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User dashboard-->
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
										<span class="bg-success dots" data-toggle="tooltip" data-placement="top" title="online"></span>
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<br/>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">me</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">프로필 수정</span></a>
										<!--	
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">내정보 수정</span><i class="angle fa fa-angle-right"></i></a>						 
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">Edit Profile-1</a></li>
												<li><a class="slide-item" href="mydash.html">Edit Profile-2</a></li>
											</ul>
										 -->
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-diamond"></i><span class="side-menu__label"> My Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myads.html"> My Ads-1</a></li>
												<li><a class="slide-item" href="myads.html"> My Ads-2</a></li>
											</ul>
										</li>
									-->
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label"> 찜한 프로젝트</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-1</a></li>
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-2</a></li>
											</ul>
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">Managed Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged.html">Managed Ads-1</a></li>
												<li class="sub-slide">
													<a class="side-menu__item border-top-0  slide-item" href="#" data-toggle="sub-slide"><span class="side-menu__label">Managed Ads-2</span> <i class="sub-angle fa fa-angle-right"></i></a>
													<ul class="child-sub-menu ">
														<li><a class="slide-item" href="manged.html">Managed Ads-3</a></li>
														<li><a class="slide-item" href="manged.html">Managed Ads-4</a></li>
													</ul>
												</li>
											</ul>
										</li>
									-->
										
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-basket"></i><span class="side-menu__label">주문내역</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="orders.html">Orders-1</a></li>
												<li><a class="slide-item" href="orders.html">Orders-2</a></li>
											</ul>
										</li>
										<!-- 
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-game-controller"></i><span class="side-menu__label"> Safety Tips</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="tips.html">Safety Tips-1</a></li>
												<li><a class="slide-item" href="tips.html">Safety Tips-2</a></li>
											</ul>
										</li>
										 -->
										 <li>
											<a class="side-menu__item active" href="#"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">결제</span></a>
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-settings"></i><span class="side-menu__label"> 설정 </span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="settings.html">Settings-1</a></li>
												<li><a class="slide-item" href="settings.html">Settings-2</a></li>
											</ul>
										</li>
									-->
									<!-- <li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">로그아웃</span></a>
										</li>	 -->
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
						-->
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">결제시 주의사항</h3>
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
						<div class="card">
								<div class="card-header">
								<div class="card-title" style="font-size: 18pt"><strong>마켓 결제</strong></div>				
						</div>	
							<div class="card-body">
								<div class="card-pay">
							<!-- 	<ul class="tabs-menu nav">
										<li class=""><a href="#tab1" class="active" data-toggle="tab"><i class="fa fa-credit-card"></i> 신용카드</a></li>
										<li><a href="#tab2" data-toggle="tab" class=""><i class="fa fa-paypal"></i>  Paypal</a></li>
										<li><a href="#tab3" data-toggle="tab" class=""><i class="fa fa-university"></i>  Bank Transfer</a></li>
									</ul>	 -->	
									<div class="tab-content">
										<div class="tab-pane active show" id="tab1">
											<div class="form-group">
					
										<div class="card-body">
										<div class="item-card7-desc">
										<!--	
											<span><strong>마켓 결제방식번호:</strong></span>
											&nbsp;&nbsp;
											<span>112233</span>
											<br/><br/>	
										 -->	
											<span><strong>구매자:</strong></span>
											&nbsp;&nbsp;
											<span>이름</span>
											<br/><br/>		
											<span><strong>마켓 번호:</strong></span>
											&nbsp;&nbsp;
											<span>112233</span>
											<br/><br/>									
											<a href="jobs.html" class="text-dark"><span class="font-weight-semibold"><strong>상품명:</strong></span></a>
											&nbsp;&nbsp;
											<span>상품이름</span>
											<br/>
										<!--<span><i class="si si-user text-muted mr-1"></i><strong>&nbsp;결제방식명PG</strong></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span>aaa</span>
											<br/>
											<span><i class="si si-user text-muted mr-1"></i><strong>&nbsp;결제방식</strong></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span>aaa</span>
											<br/>
										  		
											<span><i class="si si-user text-muted mr-1"></i><strong>&nbsp;구매자식별코드</strong></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span>aaa</span>
											<br/>
											<span><i class="si si-user text-muted mr-1"></i><strong>&nbsp;수수료율</strong></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span>02-1234-1234</span>
											&nbsp;&nbsp;&nbsp;<br/><br/>
											<span><i class="si si-user text-muted mr-1"></i><strong>&nbsp;금액</strong></span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span>123</span>
											<br/>
											-->
											</ul><br/>	
									<div class="item-card7-desc"> 
										<!-- <h4 class="card-header"><strong>포인트</strong></h4>
											<br/><br/>
											<span class="text-dark"><strong>보유 포인트</strong></span>
											<span>&nbsp;&nbsp;&nbsp;123,456 point</span><br/><br/>
											<span class="text-dark"><strong>사용 포인트</strong></span>
											&nbsp;&nbsp;&nbsp;
											<input type="text"><span>&nbsp;&nbsp;&nbsp;point</span>
											&nbsp;&nbsp;
											<a href="marketPaymentsDone"  style="WIDTH: 40pt; height: 28px" class="btn btn-primary" >사용</a>
										<div class="card-header"></div>
										<br/><br/>
										-->
											<div class="form-group" style=text-align:right; >
												<span class="card-header"><strong>  </span></h3>
												<span style="font-size: 20pt"><strong>결제금액</span></h3>
												<br/>
												<span style="font-size: 20pt;"><strong> 30,000 원</strong></span>
											</div>
										</div>	
									<!--	<div class="card-header">
											<label class="form-label" style="font-size: 15pt"><strong>결제방식</strong></label>
										</div>-->
									</div>	
										</div>
										<!--<div class="form-group">
												
													<tbody class="col-lg-12 col-xl-6 p-0">	
														<div class="d-md-flex ad-post-details">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<label class="custom-control custom-radio mb-2 mr-4">
																<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
																	<span class="custom-control-label">신용카드</span>
															</label>
														</div>
													</tbody>
												</div>
											</div>-->
											<center>
											<a href="marketPaymentsDone" class="btn btn-primary">결제</a>
											</center>
										</div>				
									</div>
								</div>
							</div>
						</div>
				<!-- <div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Payments</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive border-top">
									<table class="table table-bordered table-hover text-nowrap">
										<thead>
											<tr>
												<th>Invoice ID</th>
												<th>Category</th>
												<th>Purchase Date</th>
												<th>Price</th>
												<th>Due Date</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>#INV-348</td>
												<td>Restaurant</td>
												<td>07-12-2018</td>
												<td class="font-weight-semibold fs-16">$89</td>
												<td>17-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-186</td>
												<td>Rela Estate</td>
												<td>02-12-2018</td>
												<td class="font-weight-semibold fs-16">$14,276</td>
												<td>14-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-831</td>
												<td>Jobs</td>
												<td>30-11-2018</td>
												<td class="font-weight-semibold fs-16">$25,000</td>
												<td>04-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-672</td>
												<td>Education</td>
												<td>25-18-2018</td>
												<td class="font-weight-semibold fs-16">$50.00</td>
												<td>07-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-428</td>
												<td>Electornics</td>
												<td>24-11-2018</td>
												<td class="font-weight-semibold fs-16">$99.99</td>
												<td>11-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-543</td>
												<td>Vechicle</td>
												<td>22-11-2018</td>
												<td class="font-weight-semibold fs-16">$145</td>
												<td>12-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-986</td>
												<td>Pet & Animals</td>
												<td>18-11-2018</td>
												<td class="font-weight-semibold fs-16">$378</td>
												<td>07-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-867</td>
												<td>Cloting</td>
												<td>17-11-2018</td>
												<td class="font-weight-semibold fs-16">$509.00</td>
												<td>06-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-893</td>
												<td>Computer</td>
												<td>16-11-2018</td>
												<td class="font-weight-semibold fs-16">$347</td>
												<td>30-11-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-267</td>
												<td>Health & Fitness</td>
												<td>12-11-2018</td>
												<td class="font-weight-semibold fs-16">$895</td>
												<td>27-11-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
											<tr>
												<td>#INV-931</td>
												<td>Beauty & Spa</td>
												<td>11-11-2018</td>
												<td class="font-weight-semibold fs-16">$765</td>
												<td>25-12-2018</td>
												<td>
													<a class="btn btn-primary btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
													<a class="btn btn-danger btn-sm text-white mb-1" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a><br>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<ul class="pagination">
									<li class="page-item page-prev disabled">
										<a class="page-link" href="#" tabindex="-1">Prev</a>
									</li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item page-next">
										<a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</section>
		<!--/User dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->