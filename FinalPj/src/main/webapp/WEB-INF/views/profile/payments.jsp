
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
						<div class="card">
							<div class="card-header">
								<h3 class="card-title"><b>계좌정보</b></h3>
							</div>
							<div class="card-body">
								<div class="card-pay">
									<ul class="tabs-menu nav">
										<li class=""><a href="#tab1" class="active" data-toggle="tab"><i class="fa fa-credit-card"></i> 계좌등록</a></li>
										<!--  <li><a href="#tab2" data-toggle="tab" class=""><i class="fa fa-paypal"></i>  Paypal</a></li>-->
										<li><a href="#tab2" data-toggle="tab" class=""><i class="fa fa-university"></i> 내 계좌정보</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active show" id="tab1">
										<div class="row">
										<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">예금주</label>
												<input type="text" class="form-control" id="name1" placeholder="예금주를 입력하세요">
											</div>
											</div>
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">은행</label>
														<select class="form-control">
															<option selected> </option>
															<option>기업은행</option>
															<option>국민은행</option>
															<option>케이뱅크</option>
															<option>신한은행</option>
															<option>우리은행</option>
															<option>카카오뱅크</option>
														</select>
											</div>
											</div>
											<div class = "col-sm-12 col-md-12">
											<div class="form-group">
												<label class="form-label">계좌번호</label>
												<input type="text" class="form-control" id="name1" placeholder="계좌번호를 입력하세요">
											</div>
											</div>
											</div>
											<!--  
											<div class="row">
												<div class="col-sm-8">
													<div class="form-group">
														<label class="form-label">Expiration</label>
														<div class="input-group">
															<input type="number" class="form-control" placeholder="MM" name="expire-month">
															<input type="number" class="form-control" placeholder="YY" name="expire-year">
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="form-label">CVV <i class="fa fa-question-circle"></i></label>
														<input type="number" class="form-control" required="">
													</div>
												</div>
											</div>
											-->
											<div class="col-md-12">
												<div class="card-footer" style="text-align:center;">
													<button type="submit" class="btn btn-primary" id="edit_ok">등록완료</button>
												</div>
											</div>
										</div>
										<!--  
										<div class="tab-pane" id="tab2">
											<h6 class="font-weight-semibold">Paypal is easiest way to pay online</h6>
											<p><a href="#" class="btn btn-primary"><i class="fa fa-paypal"></i> Log in my Paypal</a></p>
											<p class="mb-0"><strong>Note:</strong> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
										</div>
										-->
										<div class="tab-pane" id="tab2">
											<div class="row">
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">예금주</label>
												<input type="text" class="form-control" value="김소담" readonly>
											</div>
											</div>
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">은행</label>
												<input type="text" class="form-control" value="기업은행" readonly>
											</div>
											</div>
											<div class = "col-sm-12 col-md-12">
											<div class="form-group">
												<label class="form-label">계좌번호</label>
												<input type="text" class="form-control" value="123412341233" readonly>
											</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>결제내역</b></h3>
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
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!--/User dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
>>>>>>> b1c1c09c3d9f1dffa0a9b5aa66034261f9603eb9
<!--/footer-->