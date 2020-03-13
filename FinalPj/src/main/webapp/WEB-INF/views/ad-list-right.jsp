
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class=""><span class="font-weight-bold">60,85,965</span> Ads Available in Pinlist</h1>
								</div>
								<div class="search-background mb-0">
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="Search Products">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Select</option>
													<option value="1">Vehicle</option>
													<option value="2">Real Estate</option>
													<option value="3">Computer</option>
													<option value="4">Clothing</option>
													<option value="5">Job</option>
													<option value="6">Services</option>
													<option value="7">Electronics</option>
													<option value="8">Mobile</option>
													<option value="9">Events</option>
													<option value="10">Constructions</option>
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
					<h4 class="page-title">Freelancer Market</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Ad List Right</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<!--Left Side Content-->
					<div class="col-xl-3 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Search
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Categories</h3>
							</div>
							<div class="card-body">
								<div class="" id="">
									<div class="filter-product-checkboxs">
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
											<span class="custom-control-label"><a href="#" class="text-dark">개발<span class="label label-secondary float-right">14</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
											<span class="custom-control-label">
												<a href="#" class="text-dark">퍼블리싱<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
											<span class="custom-control-label">
												<a href="#" class="text-dark">디자인<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
											<span class="custom-control-label">
												<a href="#" class="text-dark">기획<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
											<span class="custom-control-label">
												<a href="#" class="text-dark">기타<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
									</div>
								</div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Price Range</h3>
							</div>
							<div class="card-body">
								<h6>
								   <label for="price">Price Range:</label>
								   <input type="text" id="price">
								</h6>
								<div id="mySlider"></div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Grade</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											초급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											중급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											고급
										</span>
									</label>
								</div>
							</div>
						<!--
							<div class="card-header border-top">
								<h3 class="card-title">Place</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											반상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-0">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											자택
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-0">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											상관없음
										</span>
									</label>
								</div>
							</div>
						 -->
							<div class="card-footer">
								<a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
							</div>
							
						</div>
					<!--
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">Shares</h3>
							</div>
							<div class="card-body product-filter-desc">
								<div class="product-filter-icons text-center">
									<a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
									<a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
									<a href="#" class="google-bg"><i class="fa fa-google"></i></a>
									<a href="#" class="dribbble-bg"><i class="fa fa-dribbble"></i></a>
									<a href="#" class="pinterest-bg"><i class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
					-->
					</div>
					<!--/Left Side Content-->

					<!--Add Lists-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex">
										<h6 class="mb-0 mt-2">Showing 1 to 10 of 30 entries</h6>
										<ul class="nav item2-gl-menu ml-auto">
											<li class=""><a href="#tab-11" class="" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
											<li><a href="#tab-12" data-toggle="tab" class="active show" title="Grid"><i class="fa fa-th"></i></a></li>
										</ul>
										<div class="d-flex">
											<label class="mr-2 mt-1 mb-sm-1">Sort By:</label>
											<select name="item" class="form-control select-sm w-70">
												<option value="1">Latest</option>
												<option value="2">Oldest</option>
												<option value="3">Price:Low-to-High</option>
												<option value="5">Price:Hight-to-Low</option>
											</select>
										</div>
									</div>
									<div class="tab-content">
										<div class="tab-pane" id="tab-11">
											<div class="card overflow-hidden">
												<div class="d-md-flex">
													<div class="item-card9-img">
													<!--
														<div class="arrow-ribbon bg-primary">Rent</div>
													  -->	
														<div class="item-card9-imgs">
															<a href="business.html"></a>
															<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card9-icons">
															<a href="" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card9">
																<a href="/marketDetails">RealEstate</a>
																<a href="/marketDetails" class="text-dark"><h4 class="font-weight-semibold mt-1">2BK flat </h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">$263.99</h4>
																</div>
																<div class="ml-auto">
																	<div class="rating-stars block">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card overflow-hidden">
											<!--
												<div class="ribbon ribbon-top-left text-danger"><span class="bg-danger">featured</span></div>
											-->
												<div class="d-md-flex">
													<div class="item-card9-img">
														<div class="item-card9-imgs">
															<a href="business.html"></a>
															<img src="../images/products/j2.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card9-icons">
															<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card9">
																<a href="business.html">Jobs</a>
																<a href="business.html" class="text-dark"><h4 class="font-weight-semibold mt-1">Horbica Consulting </h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">$745.00</h4>
																</div>
																<div class="ml-auto">
																	<div class="rating-stars block">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card overflow-hidden">
											<!--
												<div class="ribbon ribbon-top-left text-danger"><span class="bg-danger">featured</span></div>
											-->	
												<div class="d-md-flex">
													<div class="item-card9-img">
														<div class="item-card9-imgs">
															<a href="#"></a>
															<img src="../images/products/pe1.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card9-icons">
															<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card9">
																<a href="business.html">Animals</a>
																<a href="business.html" class="text-dark"><h4 class="font-weight-semibold mt-1">kenco petcenter</h4></a>
																<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																	<h4 class="text-dark font-weight-semibold mb-0 mt-0">$149.00</h4>
																</div>
																<div class="ml-auto">
																	<div class="rating-stars block">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card overflow-hidden">
												<div class="d-md-flex">
													<div class="item-card9-img">
														<div class="item-card2-img ">
														<!--
															<div class="arrow-ribbon bg-primary">$13</div>
														-->	
															<img src="../images/products/b3.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card2-icons">
															<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card2">
																<div class="item-card2-desc">
																	<a href="business.html">Beauty & Spa</a>
																	<a href="business.html" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">Goozer Beauty & Spa</h4></a>
																	<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
																</div>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card2-footer d-sm-flex">
																<div class="rating-stars d-inline-flex">
																	<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																	</div> (145reviews)
																</div>
																<div class="ml-auto">
																	<a href="#" class="location"><i class="fa fa-map-marker text-muted mr-1"></i> Los Angles</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card overflow-hidden">
												<div class="d-md-flex">
													<div class="item-card9-img">
														<div class="item-card2-img ">
														<!--
															<div class="arrow-ribbon bg-primary">$42</div>
														-->	
															<a href="business.html"></a>
															<img src="../images/products/h6.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card2-icons">
															<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card2">
																<div class="item-card2-desc">
																	<a href="business.html">Restaurant</a>
																	<a href="business.html" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">GilkonStar Hotel</h4></a>
																	<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
																</div>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card2-footer d-sm-flex">
																<div class="rating-stars d-inline-flex">
																	<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																	</div> (145reviews)
																</div>
																<div class="ml-auto">
																	<a href="#" class="location"><i class="fa fa-map-marker text-muted mr-1"></i> Los Angles</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card overflow-hidden">
												<div class="d-md-flex">
													<div class="item-card9-img">
														<div class="item-card2-img ">
														<!--
															<div class="arrow-ribbon bg-primary">$50</div>
														-->	
															<a href="business.html"></a>
															<img src="../images/products/v1.png" alt="img" class="cover-image h-100">
														</div>
														<div class="item-card2-icons">
															<a href="" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
														</div>
													</div>
													<div class="card border-0 mb-0">
														<div class="card-body ">
															<div class="item-card2">
																<div class="item-card2-desc">
																	<a href="business.html" class="">Vehicles</a>
																	<a href="business.html" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">Seep Automobiles</h4></a>
																	<p class="mb-0 leading-tight">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit</p>
																</div>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card2-footer d-sm-flex">
																<div class="item-card2-rating">
																	<div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
																		</div> (46 reviews)
																	</div>
																</div>
																<div class="ml-auto">
																	<a href="#" class="location"><i class="fa fa-map-marker text-muted mr-1"></i> San Francisco</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="center-block text-center">
												<ul class="pagination mg-b-0 page-0 ">
													<li class="page-item">
														<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
													</li>
													<li class="page-item">
														<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
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
										</div>
										<div class="tab-pane active" id="tab-12">
											<div class="row">
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>  -->	
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>-->
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>-->
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>-->
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>-->
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>-->
															<div class="item-card9-imgs">
																<a href="marketDetails"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="marketDetails">김세영</a>
																<a href="marketDetails" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">개발자다 </h4></a>
																<p>나는개발자 올사람은 와라 돈많이줄사람만</p>
																<div class="item-card9-desc">
																	<h2>22,000 <span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
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
																		</div>&nbsp;5.0&nbsp;&nbsp;&nbsp;
																		
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
							<!--<div class="center-block text-center">  -->	
								<div>
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
							</div>
						</div>
					</div>
					<!--/Add Lists-->
				</div>
			</div>
		</section>
		<!--/Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->