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
								<div class=" search-background">
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
					<h4 class="page-title">Ad Details</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Ad Details</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8 col-md-12">

						<!--Add Description-->
						<div class="card overflow-hidden">
							<div class="card-body h-100">
								<div class="item-det mb-4">
									<a href="#" class="text-dark"><h3 class="">마켓이름</h3></a>
									<ul class="d-flex">
										<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> RealEstate</a></li>
										<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> USA</a></li>
										<li class="mr-5"><a href="#" class="icons"><i class="si si-calendar text-muted mr-1"></i> 5 hours ago</a></li>
										<li class="mr-5"><a href="#" class="icons"><i class="si si-eye text-muted mr-1"></i> 765</a></li>
								<!--    <li class=""><a href="#" class="icons">
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star-half-o text-warning mr-1"></i>4.5</a></li>-->		
									</ul>
								</div>
								<div class="product-slider">
									<div id="carousel" class="carousel slide" data-ride="carousel">
										<!--<div class="arrow-ribbon2 bg-primary">$539</div>-->
										<div class="carousel-inner">
											<div class="carousel-item active"> <img src="../images/products/products/h1.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h2.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h1.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h2.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
										</div>
										<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
											<i class="fa fa-angle-left" aria-hidden="true"></i>
										</a>
										<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
											<i class="fa fa-angle-right" aria-hidden="true"></i>
										</a>
									</div>
									<div class="clearfix">
										<div id="thumbcarousel" class="carousel slide" data-interval="false">
											<div class="carousel-inner">
												<div class="carousel-item active">
													<div data-target="#carousel" data-slide-to="0" class="thumb"><img src="../images/products/h3.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="1" class="thumb"><img src="../images/products/h2.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="2" class="thumb"><img src="../images/products/h6.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="3" class="thumb"><img src="../images/products/h5.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="4" class="thumb"><img src="../images/products/h4.png" alt="img"></div>
												</div>
												<div class="carousel-item">
													<div data-target="#carousel" data-slide-to="0" class="thumb"><img src="../images/products/h1.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="1" class="thumb"><img src="../images/products/h2.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="2" class="thumb"><img src="../images/products/h3.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="3" class="thumb"><img src="../images/products/h4.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="4" class="thumb"><img src="../images/products/h5.png" alt="img"></div>
												</div>
											</div>
											<a class="carousel-control-prev" href="#thumbcarousel" role="button" data-slide="prev">
												<i class="fa fa-angle-left" aria-hidden="true"></i>
											</a>
											<a class="carousel-control-next" href="#thumbcarousel" role="button" data-slide="next">
												<i class="fa fa-angle-right" aria-hidden="true"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">마켓제목</h3>
							</div>
							<div class="card-body">
								<div class="mb-4">
									<p>안녕하세요.</p>
									<p>마켓소개글.</p>
								</div>
								<h4 class="mb-4">Specifications</h4>
								<div class="row">
									<div class="col-xl-6 col-md-12">
										<ul class="list-unstyled widget-spec mb-0">
											<li class="">
												<i class="fa fa-bed text-muted w-5"></i> 2 BedRooms
											</li>
											<li class="">
												<i class="fa fa-bath text-muted w-5"></i> 2 BathRooms
											</li>
											<li class="">
												<i class="fa fa-life-ring text-muted w-5"></i> Unfurnished
											</li>
											<li class="">
												<i class="fa fa-car text-muted w-5"></i> 2 Car Parking
											</li>
											<li class="">
												<i class="fa fa-globe text-muted w-5"></i> East East face
											</li>
											<li class="mb-xl-0">
												<i class="fa fa-pagelines text-muted w-5"></i> Garden
											</li>
										</ul>
									</div>
									
								</div>
							</div>
							<div class="card-footer">
								<div class="icons">
									<a href="#" class="btn btn-info icons"><i class="si si-share mr-1"></i> Share Ad</a>
								<!--<a href="#" class="btn btn-danger icons" data-toggle="modal" data-target="#report"><i class="si si-exclamation mr-1"></i> Report Abuse</a>-->
									<a href="#" class="btn btn-primary icons"><i class="si si-heart  mr-1"></i> 678</a>
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<!-- 세션일치시에만보이는거 -->
									<a href="market-delete" class="btn btn-info icons"><i class="fa fa-magic"></i>수정</a>
									<a href="market-delete" class="btn btn-info icons"><i class="fa fa-bitbucket"></i>삭제</a>
								<!--// 세션일치시에만보이는거 -->
								</div>
								
							</div>
						</div>
						<!--/Add Description-->

						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">리뷰</h3>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<div class="badge badge-default mb-2">5 <i class="fa fa-star"></i></div>
										
										<!--
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-success w-100">6,532</div>
										</div>-->
										<span class="rated-products-ratings">
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star-o text-warning"> </i>
											<i class="fa fa-star-o text-warning"> </i>
										</span>
									</div>
									<div class="col-md-6 text-center align-items-center">

									</div>
								</div>
							</div>
							<div class="card-body p-0">
								<div class="media mt-0 p-5">
                                    <div class="d-flex mr-3">
                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-1 font-weight-semibold">세영
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
											<span class="fs-14 ml-2"> 4 <i class="fa fa-star text-yellow"></i></span>
										</h5>
										<small class="text-muted"><i class="fa fa-calendar"></i> Dec 21st  <i class=" ml-3 fa fa-clock-o"></i> 13.00  <i class=" ml-3 fa fa-map-marker"></i> Brezil</small>
                                        <p class="font-13  mb-2 mt-2">
                                           Ut enim ad minim veniam, quis Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et  nostrud exercitation ullamco laboris   commodo consequat.
                                        </p>
										<a href="#" class="mr-2"><span class="badge badge-primary">Helpful</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="">Comment</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="">Report</span></a>
                                        <div class="media mt-5">
                                            <div class="d-flex mr-3">
                                                <a href="#"> <img class="media-object brround" alt="64x64" src="../images/faces/female/2.jpg"> </a>
                                            </div>
											<div class="media-body">
												<h5 class="mt-0 mb-1 font-weight-semibold">로즈 <span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span></h5>
												<small class="text-muted"><i class="fa fa-calendar"></i> Dec 22st  <i class=" ml-3 fa fa-clock-o"></i> 6.00  <i class=" ml-3 fa fa-map-marker"></i> Brezil</small>
												<p class="font-13  mb-2 mt-2">
												   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris   commodo Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur consequat.
												</p>
												<a href="" data-toggle="modal" data-target="#Comment"><span class="badge badge-default">Comment</span></a>
											</div>
										</div>
									</div>
								</div>
								<div class="media p-5 border-top mt-0">
									<div class="d-flex mr-3">
										<a href="#"> <img class="media-object brround" alt="64x64" src="../images/faces/male/3.jpg"> </a>
									</div>
									<div class="media-body">
										<h5 class="mt-0 mb-1 font-weight-semibold">에드워드
										<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
										<span class="fs-14 ml-2"> 4 <i class="fa fa-star text-yellow"></i></span>
										</h5>
										<small class="text-muted"><i class="fa fa-calendar"></i> Dec 21st  <i class=" ml-3 fa fa-clock-o"></i> 16.35  <i class=" ml-3 fa fa-map-marker"></i> UK</small>
                                        <p class="font-13  mb-2 mt-2">
                                           Ut enim ad minim veniam, quis Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et  nostrud exercitation ullamco laboris   commodo consequat.
                                        </p>
										<a href="#" class="mr-2"><span class="badge badge-primary">Helpful</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="">Comment</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="">Report</span></a>
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
						<br/><br/>
						<!--/Comments-->

						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">리뷰 남기기</h3>
							</div>
							<div class="card-body">
							
								<div>
							<!--	<li class="icons">><a href="#" >
								 <i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>4.5</a></li><br/>
									 -->	
									
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
									<div class="col-md-6 text-center align-items-center"></div>
									<div class="form-group">
										<input type="text" class="form-control" id="name1" placeholder="Your Name">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" placeholder="Email Address">
									</div>
									<div class="form-group">
										<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Comment"></textarea>
									</div>
									<a href="#" class="btn btn-primary">Send Reply</a>
								</div>
							</div>
						</div>
						<br/><br/>
						
						
						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">문의</h3>
							</div>
							
							<div class="card-body p-0">
								<div class="media mt-0 p-5">
                                    <div class="d-flex mr-3">
                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-1 font-weight-semibold">조안스콧
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
										
										</h5>
										<small class="text-muted"><i class="fa fa-calendar"></i> Dec 21st  <i class=" ml-3 fa fa-clock-o"></i> 13.00  <i class=" ml-3 fa fa-map-marker"></i> Brezil</small>
                                        <p class="font-13  mb-2 mt-2">
                                           Ut enim ad minim veniam, quis Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et  nostrud exercitation ullamco laboris   commodo consequat.
                                        </p>
										<a href="#" class="mr-2"><span class="badge badge-primary">Helpful</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="">Comment</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="">Report</span></a>
                                        <div class="media mt-5">
                                            <div class="d-flex mr-3">
                                                <a href="#"> <img class="media-object brround" alt="64x64" src="../images/faces/female/2.jpg"> </a>
                                            </div>
											<div class="media-body">
												<h5 class="mt-0 mb-1 font-weight-semibold">로즈 <span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span></h5>
												<small class="text-muted"><i class="fa fa-calendar"></i> Dec 22st  <i class=" ml-3 fa fa-clock-o"></i> 6.00  <i class=" ml-3 fa fa-map-marker"></i> Brezil</small>
												<p class="font-13  mb-2 mt-2">
												   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris   commodo Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur consequat.
												</p>
												<a href="" data-toggle="modal" data-target="#Comment"><span class="badge badge-default">Comment</span></a>
											</div>
										</div>
									</div>
								</div>
								<div class="media p-5 border-top mt-0">
									<div class="d-flex mr-3">
										<a href="#"> <img class="media-object brround" alt="64x64" src="../images/faces/male/3.jpg"> </a>
									</div>
									<div class="media-body">
										<h5 class="mt-0 mb-1 font-weight-semibold">루피
										<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
										</h5>
										<small class="text-muted"><i class="fa fa-calendar"></i> Dec 21st  <i class=" ml-3 fa fa-clock-o"></i> 16.35  <i class=" ml-3 fa fa-map-marker"></i> UK</small>
                                        <p class="font-13  mb-2 mt-2">
                                           Ut enim ad minim veniam, quis Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et  nostrud exercitation ullamco laboris   commodo consequat.
                                        </p>
										<a href="#" class="mr-2"><span class="badge badge-primary">Helpful</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="">Comment</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="">Report</span></a>
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
						<br/><br/>
						<!--/Comments-->

						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">문의 남기기</h3>
							</div>
							<div class="card-body">
								<div>
							<!--	<li class="icons">><a href="#" >
								 <i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>4.5</a></li><br/>
									 -->	
									<div class="ml-auto">
										<div class="rating-stars block">
											<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
										</div>
									</div>	
									<div class="form-group">
										<input type="text" class="form-control" id="name1" placeholder="Your Name">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" placeholder="Email Address">
									</div>
									<div class="form-group">
										<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Comment"></textarea>
									</div>
									<a href="#" class="btn btn-primary">Send Reply</a>
									&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 
									&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
									&emsp; &emsp; &emsp; &emsp;
									<input type="radio"  name="market_qa" value="secret" checked="">비밀글
									<input type="radio"  name="market_qa" value="open" checked="">공개글
									<!--
										<div class="d-md-flex ad-post-details">
											<label class="custom-control custom-radio mb-2 mr-4">
												<input type="radio" class="custom-control-input" name="radios2" value="option1" checked="">
												<span class="custom-control-label"><a href="#" class="text-muted">비밀글 </a></span>
											</label>
											<label class="custom-control custom-radio  mb-2">
												<input type="radio" class="custom-control-input" name="radios2" value="option2" >
												<span class="custom-control-label"><a href="#" class="text-muted">공개글</a></span>
											</label>
										</div>
									  -->
								</div>
							</div>
						</div>
					</div>
					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Posted By</h3>
							</div>
							<div class="card-body  item-user">
								<div class="profile-pic mb-0">
									<img src="../images/faces/male/25.jpg" class="brround avatar-xxl" alt="user">
									<div class="">
										<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-semibold">Robert McLean</h4></a>
										<span class="text-muted">Member Since November 2008</span>
										<h6 class="mt-2 mb-0"><a href="#" class="btn btn-primary btn-sm">프로필 보기</a></h6>
									</div>
								</div>
							</div>
						<!--	
							<div class="card-body item-user">
								<h4 class="mb-4">Contact Info</h4>
								<div>
									<h6><span class="font-weight-semibold"><i class="fa fa-envelope mr-2 mb-2"></i></span><a href="#" class="text-body"> robert123@gmail.com</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-phone mr-2  mb-2"></i></span><a href="#" class="text-primary"> 0-235-657-24587</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-link mr-2 "></i></span><a href="#" class="text-primary">http://spruko.com/</a></h6>
								</div>
								
								<div class=" item-user-icons mt-4">
									<a href="#" class="facebook-bg mt-0"><i class="fa fa-facebook"></i></a>
									<a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
									<a href="#" class="google-bg"><i class="fa fa-google"></i></a>
									<a href="#" class="dribbble-bg"><i class="fa fa-dribbble"></i></a>
								</div>
							  	
							</div>
						-->	
							
								<div class="card-footer">
									<div style="text-align: right; vertical-align:center;">
										<span style="font-size:20px">결제금액</span></br>
										<span style="font-size:30px">￦30,000</span>
									</div>
								</div>
								<div class="card-footer">	
									<div style="text-align: right;">
								
								<!--	<a href="marketPayments" class="btn btn-info"><i class="ti-credit-card"></i> 문의하기</a> 
										<a href="marketPayments" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> 구매하기</a>-->
										<a href="marketPayments" class="btn btn-primary2"><i class="ti-credit-card"></i > 구매하기</a>
									</div>
								</div>
						
						</div>
				<!--		
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Keywords</h3>
							</div>
							<div class="card-body product-filter-desc">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">Home</a></li>
										<li><a href="#">Real estate</a></li>
										<li><a href="#">2BHK</a></li>
									</ul>
								</div>
							</div>
						</div>
				-->		
						<!--
						<div class="card">
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
					<!--
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Map location</h3>
							</div>
							<div class="card-body">
								<div class="map-header">
									<div class="map-header-layer" id="map2"></div>
								</div>
							</div>
						</div>
					
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Search Ads</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="text2" placeholder="What are you looking for?">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected>All Categories</option>
										<option value="2">RealEstate</option>
										<option value="3">Restaurant</option>
										<option value="4">Beauty</option>
										<option value="5">Jobs</option>
										<option value="6">Services</option>
										<option value="7">Vehicle</option>
										<option value="8">Education</option>
										<option value="9">Electronics</option>
										<option value="10">Pets & Animals</option>
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
					<!--
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Popular Tags</h3>
							</div>
							<div class="card-body">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">RealEstate</a></li>
										<li><a href="#">Vehicles</a></li>
										<li><a href="#">Events</a></li>
										<li><a href="#">Health& Beauty</a></li>
										<li><a href="#">Services</a></li>
										<li><a href="#">Restaurant</a></li>
										<li><a href="#">Events</a></li>
										<li><a href="#">Jobs</a></li>
										<li><a href="#">Automobiles</a></li>
										<li><a href="#">Computer</a></li>
										<li><a href="#" class="mb-0">Electronics</a></li>
									</ul>
								</div>
							</div>
						</div>
					-->	
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">확인한 게시물들</h3>
							</div>
							<div class="card-body pb-3">
								<ul class="vertical-scroll">
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/1.png"  class="w-8 bg-secondary border"/></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/2.png" class="w-8 bg-secondary border"/></td>
												<td><h5 class="mb-1 ">Trending New Model Watches</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/3.png" class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/4.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Trending New Model Watches</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/5.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/6.png" class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Shoes</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/7.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Trending New Model Shoes</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>

						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">유사한 프리랜서</h3>
							</div>
							<div class="card-body pb-3">
								<div class="rated-products">
									<ul class="vertical-scroll">
										<li class="item">
											<div class="media m-0 mt-0 p-5">
												<img class="mr-4" src="../images/products/toys.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Kids Toys</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$17 - $29</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class="mr-4" src="../images/products/1.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Leather Watch</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$22 - $45</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class=" mr-4" src="../images/products/4.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Digital Watch</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-half-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$35 - $72</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class=" mr-4" src="../images/products/6.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Sports Shoe</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-half-o text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$12 - $21</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media  mb-0 p-5 mt-0">
												<img class=" mr-4" src="../images/products/8.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Ladies shoes</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$89 - $97</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--Right Side Content-->
				</div>
			</div>
		</section>
		<!--/Add listing-->

		<!-- Message Modal -->
		<div class="modal fade" id="contact" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Send Message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="customername" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="customeremail" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Send</button>
					</div>
				</div>
			</div>
		</div>

		<!--Comment Modal -->
		<div class="modal fade" id="Comment" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleCommentLongTitle">Leave a Comment</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="Comment-email" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Send</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Report Modal -->
		<div class="modal fade" id="report" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="examplereportLongTitle">Report Abuse</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="report-name" placeholder="Enter url">
						</div>
						<div class="form-group">
							<select name="country" id="select-countries2" class="form-control custom-select">
								<option value="1" selected>Categories</option>
								<option value="2">Spam</option>
								<option value="3">Identity Theft</option>
								<option value="4">Online Shopping Fraud</option>
								<option value="5">Service Providers</option>
								<option value="6">Phishing</option>
								<option value="7">Spyware</option>
							</select>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="report-email" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Submit</button>
					</div>
				</div>
			</div>
		</div>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->