<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<!--
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/rating.jpg">
			-->
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="">문의 게시판</h1>
								</div>
								<div class=" search-background">
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="질문 검색">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control border-bottom-0 w-100" id="job" data-placeholder="Select">
												<optgroup label="Categories">
													<option value="1">Admin</option>
													<option value="2">Chef</option>
													<option value="3">Beautician</option>
													<option value="4">IT/Hardware</option>
													<option value="5">Driver</option>
													<option value="6">IT/Software</option>
													<option value="7">HR Recruiter</option>
													<option value="8">Customer Support(BPO)</option>
													<option value="9">Sales</option>
													<option value="10">Teachers/Lecturers</option>
													<option value="11">Life Insurance</option>
													<option value="12">Delivery Boy</option>
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
		<div class="bg-white">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Jobs</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Categories</a></li>
						<li class="breadcrumb-item active" aria-current="page">Jobs</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-12 col-md-12">
						<!--Jobs Description-->
						<div class="card overflow-hidden">
							<div class="ribbon ribbon-top-right text-danger"><span class="bg-danger">Urgent</span></div>
							<div class="card-body">
								<div class="item-det">
									<a href="#" class="text-dark"><h3 class="">Hard ware Technician</h3></a>
									<div class="d-flex">
										<ul class="mb-0 d-flex">
											<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> IT Hardware & Network Pvt ltd</a></li>
											<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> USA</a></li>
											<li class="mr-5"><a href="#" class="icons"><i class="si si-calendar text-muted mr-1"></i> 5 hours ago</a></li>
											<li class="mr-5"><a href="#" class="icons"><i class="si si-eye text-muted mr-1"></i> 765</a></li>

										</ul>
										<div class="rating-stars d-inline-flex mb-4 mr-3">
											<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="4">
											<div class="rating-stars-container mr-2">
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
											</div> 4.0
										</div>
										<div class="rating-stars d-inline-flex mb-4">
											<div class="rating-stars-container mr-1">
												<div class="rating-star sm">
													<i class="fa fa-heart"></i>
												</div>

											</div> 145
										</div>
									</div>
									<div class="icons">
										<a href="#" class="btn btn-info icons" data-toggle="modal" data-target="#apply"> Apply</a>
										<a href="#" class="btn btn-primary icons" data-toggle="modal" data-target="#contact"><i class="si si-phone mr-1"></i> Contact Now</a>
									</div>
								</div>
							</div>
							<div class="card-body border-top">
								<h4 class="mb-4 font-weight-semibold">Job Description</h4>
								<div class="mb-4">
									<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
									<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>
								</div>
								<h4 class="mb-4 font-weight-semibold">Job Details</h4>
								<div class="row">
									<div class="col-xl-12 col-md-12">
										<div class="table-responsive">
											<table class="table row table-borderless w-100 m-0 text-nowrap ">
												<tbody class="col-lg-12 col-xl-6 p-0">
													<tr>
														<td><span class="font-weight-bold">Job Type :</span> Full Time</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Role :</span> Hard ware Technician</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Min Salary :</span> $12,000</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Max Salary :</span> $15,000</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Min Exp :</span> 0yrs</td>
													</tr>
												</tbody>
												<tbody class="col-lg-12 col-xl-6 p-0">
													<tr>
														<td><span class="font-weight-bold">Max Exp :</span> 2yrs</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Languages :</span> English , Hindi</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Locality :</span> USA , UK , India </td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Eligibility :</span> Any Graduate </td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">Company :</span> Acme Corporation pvt ltd </td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="list-id">
									<div class="row">
										<div class="col">
											<a class="mb-0">Job ID : #8976542</a>
										</div>
										<div class="col col-auto">
											Posted By <a class="mb-0 font-weight-bold">Company</a> / 25th Dec 2018
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="icons">
									<a href="#" class="btn btn-info icons" data-toggle="modal" data-target="#apply"> Apply</a>
									<a href="#" class="btn btn-primary icons"><i class="si si-share mr-1"></i> Share Job</a>
									<a href="#" class="btn btn-secondary icons"><i class="si si-printer  mr-1"></i> Print</a>
								</div>
							</div>
						</div>
						<!--Jobs Description-->

						<h3 class="mb-5 mt-4">Related Posts</h3>

						<!--Related Posts-->
						<div id="myCarousel2" class="owl-carousel owl-carousel-icons3">
							<div class="item">
								<div class="card">
									<div class="arrow-ribbon bg-purple">Part time</div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j1.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs </a>
											<h4  class="font-weight-semibold mb-0">$389</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Hard ware Technician</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="ribbon ribbon-top-left text-danger"><span class="bg-danger">featured</span></div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j2.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$854</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Hair dresser-Beauticia</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="arrow-ribbon bg-info">Full time</div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j3.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$786</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">System Operator</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="ribbon ribbon-top-left text-warning"><span class="bg-warning">Urgent</span></div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j2.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$539</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">HR Executive</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="arrow-ribbon bg-purple">Part time</div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j1.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$925</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Delivery Boys Jobs </h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="ribbon ribbon-top-left text-danger"><span class="bg-danger">featured</span></div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j2.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$925</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Wanted Sales Girls</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="arrow-ribbon bg-info">Full time</div>
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j3.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$378</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Female Receptionist</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="card">
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											<img src="../images/products/products/j1.jpg" alt="img" class="cover-image">
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$836</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Play school teacher</h4></a>
										</div>
										<div class="item-card7-text">
											<ul class="icon-card mb-0">
												<li class=""><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i>  Los Angles</a></li>
												<li><a href="#" class="icons"><i class="si si-event text-muted mr-1"></i> 5 hours ago</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-user text-muted mr-1"></i> Sally Peake</a></li>
												<li class="mb-0"><a href="#" class="icons"><i class="si si-phone text-muted mr-1"></i> 5-67987608</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--/Related Posts-->

						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Rating And Reviews</h3>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<div class="badge badge-default mb-2">5 <i class="fa fa-star"></i></div>
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-success w-100">6,532</div>
										</div>
										<div class="badge badge-default mb-2">4 <i class="fa fa-star"></i></div>
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-primary w-80">7,532</div>
										</div>
										<div class="badge badge-default mb-2">3 <i class="fa fa-star"></i></div>
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-info w-60">3,526</div>
										</div>
										<div class="badge badge-default mb-2">2 <i class="fa fa-star"></i></div>
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-warning w-60">485</div>
										</div>
										<div class="badge badge-default mb-2">1 <i class="fa fa-star"></i></div>
										<div class="progress progress-md mb-0">
											<div class="progress-bar bg-danger w-20">126</div>
										</div>
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
                                        <h5 class="mt-0 mb-1 font-weight-semibold">Joanne Scott
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
											<span class="fs-14 ml-2"> 4.5 <i class="fa fa-star text-yellow"></i></span>
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
												<h5 class="mt-0 mb-1 font-weight-semibold">Rose Slater <span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span></h5>
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
										<h5 class="mt-0 mb-1 font-weight-semibold">Edward
										<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
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
						<!--Comments-->

						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">Leave a reply</h3>
							</div>
							<div class="card-body">
								<div>
									<div class="form-group">
										<input type="text" class="form-control" id="name1" placeholder="Your Name">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" placeholder="Email Address">
									</div>
									<div class="form-group">
										<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Comment"></textarea>
									</div>
									<div class="text-right">
										<a href="#" class="btn btn-primary">Send Reply</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Posted By</h3>
							</div>
							<div class="card-body  item-user">
								<div class="profile-pic mb-0">
									<img src="../images/faces/male/25.jpg" class="brround avatar-xxl" alt="user">
									<div class="">
										<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-semibold">Robert McLean</h4></a>
										<span class="text-gray">Hr Recruiter of IT Hardware & Network Pvt ltd</span>
										<span class="text-muted">Member Since November 2008</span>
										<h6 class="mt-2 mb-0"><a href="#" class="btn btn-primary btn-sm">See All Ads</a></h6>
									</div>

								</div>
							</div>
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
							<div class="card-footer">
								<div class="text-left">
									<a href="#" class="btn  btn-info"><i class="fa fa-envelope"></i> Chat</a>
									<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> Contact Me</a>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Keywords</h3>
							</div>
							<div class="card-body product-filter-desc">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">Software</a></li>
										<li><a href="#">Hardware &amp; Network</a></li>
										<li><a href="#">Job in USA</a></li>
									</ul>
								</div>
							</div>
						</div>
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
									<input type="text" class="form-control" id="search-text" placeholder="What are you looking for?">
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
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Similar Jobs</h3>
							</div>
							<div class="card-body pb-3">
								<ul class="vertical-scroll">
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">Hard ware Engineer</h4></a>
											<small class="text-muted"><i class="si si-briefcase text-muted"></i> IT Hardware & Network Pvt ltd  <i class="si si-location-pin text-muted ml-3"></i> USA</a></small>
											<div class="icons mt-3 pb-0 ">
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												<a href="#" class="btn btn-primary btn-sm icons"> View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">Web Developer</h4></a>
											<small class="text-muted"><i class="si si-briefcase text-muted"></i> Iactorne Pvt ltd  <i class="si si-location-pin text-muted ml-3"></i> USA</a></small>
											<div class="icons mt-3 pb-0 ">
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												<a href="#" class="btn btn-primary btn-sm icons"> View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">Web Designer</h4></a>
											<small class="text-muted"><i class="si si-briefcase text-muted"></i> Designer Solutions  <i class="si si-location-pin text-muted ml-3"></i> USA</a></small>
											<div class="icons mt-3 pb-0 ">
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												<a href="#" class="btn btn-primary btn-sm icons"> View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">HR Recruiter</h4></a>
											<small class="text-muted"><i class="si si-briefcase text-muted"></i> IT Hardware & Network Pvt ltd  <i class="si si-location-pin text-muted ml-3"></i> USA</a></small>
											<div class="icons mt-3 pb-0 ">
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												<a href="#" class="btn btn-primary btn-sm icons"> View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">Java Developer</h4></a>
											<small class="text-muted"><i class="si si-briefcase text-muted"></i> Infrastructure Solutions  <i class="si si-location-pin text-muted ml-3"></i> USA</a></small>
											<div class="icons mt-3 pb-0 ">
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												<a href="#" class="btn btn-primary btn-sm icons"> View Details</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--/Right Side Content-->
				</div>
			</div>
		</section>
		<!--/Add listing-->

		<!-- Message Modal -->
		<div class="modal fade" id="contact" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Send Message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="contact-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="contact-email" placeholder="Email Address">
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
						<h5 class="modal-title">Leave a Comment</h5>
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
						<h5 class="modal-title">Report Abuse</h5>
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

		<!-- Apply Modal -->
		<div class="modal fade" id="apply" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Apply Jobs</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" class="form-control" placeholder="Name">
								</div>
							</div>
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="form-label">Phone number</label>
									<input type="number" class="form-control" placeholder="Number">
								</div>
							</div>
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="form-label">Email</label>
									<input type="email" class="form-control" placeholder="Email address">
								</div>
							</div>
							<div class="col-sm-6 col-md-6">
								<label class="form-label">Choose Location</label>
								<select name="country" id="select-countries3" class="form-control custom-select">
									<option >Search</option>
									<option value="2">USA</option>
									<option value="3">UK</option>
									<option value="4">India</option>
								</select>
							</div>
							<div class="col-sm-12">
								<div class="form-group mb-0">
									<label class="form-label">File Attachment</label>
									<div class="custom-file">
										<input type="file" class="custom-file-input" name="example-file-input-custom">
										<label class="custom-file-label">Attach file</label>
									</div>
								</div>
							</div>
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