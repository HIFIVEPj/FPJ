<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<section>
			<div class="banner-2 cover-image sptb-2 sptb-tab bg-background2" data-image-src="../images/banners/education.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="mb-1">한나영 김소담 윤별 김세영 송승훈</h1>
							<p>한나영 김소담 윤별 김세영 송승훈 한나영 김소담 윤별 김세영 송승훈 한나영 김소담 윤별 김세영 송승훈</p>
						</div>
						<div class="row">
							<div class="col-xl-10 col-lg-12 col-md-12 d-block mx-auto">
								<div class="item-search-tabs">
									<div class="item-search-menu">
										<ul class="nav">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">프로젝트</a></li>
											<li><a href="#tab2" data-toggle="tab">프리마켓</a></li>
											<li><a href="#tab3" data-toggle="tab">프리랜서</a></li>
										</ul>
									</div>
									<div class="tab-content index-search-select">
										<div class="tab-pane active" id="tab1">
											<div class="search-background">

												<div class="form row no-gutters">
													<div class="form-group  col-xl-6 col-lg-6 col-md-12 mb-0">
														<input type="text" class="form-control" id="Course-text" placeholder="프로젝트 검색">
													</div>
													<div class="form-group col-xl-4 col-lg-4 col-md-12 mb-0">
														<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
															<optgroup label="Categories">
																<option value="0">All</option>
																<option value="1">개발</option>
																<option value="2">퍼블리싱</option>
																<option value="3">디자인</option>
																<option value="4">기획</option>
																<option value="5">기타</option>
															</optgroup>
														</select>
													</div>
													<div class="form-group col-xl-2 col-lg-2  col-md-12 mb-0 location">
														<div class="row no-gutters bg-white br-2">
															<!-- 
															<div class="form-group  col-xl-0 col-lg-0 col-md-12 mb-0">
																<input type="text" class="form-control border" id="course-location" placeholder="Location">
															</div>
															 -->
															<div class="col-xl-12 col-lg-12 col-md-12 mb-0">
																<a href="construction" class="btn btn-block btn-secondary fs-14"><i class="fa fa-search"></i> Search</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tab2">
											<div class="search-background">
												<div class="form row no-gutters">
													<div class="form-group  col-xl-10 col-lg-10 col-md-12 mb-0">
														<input type="text" class="form-control" id="certificate-text" placeholder="프리마켓 검색">
													</div>
													<!--
													<div class="form-group col-xl-4 col-lg-4 col-md-12 mb-0">
														<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
															<optgroup label="Categories">
																<option value="0">All</option>
																<option value="1">개발</option>
																<option value="2">디자인</option>
															</optgroup>
														</select>
													</div>
													-->
													<div class="form-group col-xl-2 col-lg-2  col-md-12 mb-0 location">
														<div class="row no-gutters bg-white br-2">
															<!-- 
															<div class="form-group  col-xl-8 col-lg-7 col-md-12 mb-0">
																<input type="text" class="form-control border" id="certificate-location" placeholder="Location">
															</div>
															 -->
															<div class="col-xl-12 col-lg-12 col-md-12 mb-0">
																<a href="#" class="btn btn-block btn-secondary fs-14"><i class="fa fa-search"></i> Search</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tab3">
											<div class="search-background">
												<div class="form row no-gutters">
													<div class="form-group  col-xl-6 col-lg-6 col-md-12 mb-0">
														<input type="text" class="form-control" id="diploma-text" placeholder="프리랜서 검색">
													</div>
													<div class="form-group col-xl-4 col-lg-4 col-md-12 mb-0">
														<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
															<optgroup label="Categories">
																<option value="0">All</option>
																<option value="1">개발</option>
																<option value="2">디자인</option>
															</optgroup>
														</select>
													</div>
													<div class="form-group col-xl-2 col-lg-2  col-md-12 mb-0 location">
														<div class="row no-gutters bg-white br-2">
															<!-- 
															<div class="form-group  col-xl-8 col-lg-7 col-md-12 mb-0">
																<input type="text" class="form-control border" id="diploma-location" placeholder="Location">
															</div>
															 -->
															<div class="col-xl-12 col-lg-12 col-md-12 mb-0">
																<a href="#" class="btn btn-block btn-secondary fs-14"><i class="fa fa-search"></i> Search</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</section>
		<!--Sliders Section-->

		<!--통계-->
		<section class="sptb bg-white">
			<div class="container">
				<div class="statistics-info text-dark">
					<div class="row text-center">

						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status mb-6 mb-lg-0">
								<div class="counter-icon">
									<i class="fa fa-clipboard"></i>
									<!-- <i class="si si-screen-desktop"></i> -->
								</div>
								<h5>총 프로젝트 수</h5>
								<h2 class="counter mb-0">869</h2>건
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status mb-6 mb-lg-0">
								<div class="counter-icon">
									<i class="fa fa-diamond" style="font-size: 1.1rem;"></i>
								</div>
								<h5>총 프로젝트 금액</h5>
								<h2 class="counter mb-0">984,345,000</h2>원
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status mb-6 mb-sm-0">
								<div class="counter-icon">
									<i class="ti-shopping-cart-full"></i>
								</div>
								<h5>총 프리마켓 서비스 수</h5>
								<h2 class="counter mb-0">514</h2>건
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status">
								<div class="counter-icon">
									<i class="fa fa-drivers-license-o"></i>
								</div>
								<h5>총 프리랜서 수</h5>
								<h2 class="counter mb-0">753</h2>명
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/통계-->


		<!--프로젝트-->
		<section class="sptb">
			<div class="container">
				<div class="section-title center-block text-center">
					<h1>프로젝트</h1>
					<p>한나영 김소담 윤별 김세영 송승훈 한나영 김소담 윤별 김세영 송승훈</p>
				</div>
				<div class="business-item Marketplace ">
					<div class="items-gallery">
						<div class="items-blog-tab text-center">

							<div class="items-blog-tab-heading">
								<ul class="nav items-blog-tab-menu">
									<li class=""><a href="#tab-1" class="active show" data-toggle="tab">All</a></li>
									<li><a href="#tab-2" data-toggle="tab" class="">개발</a></li>
									<li><a href="#tab-3" data-toggle="tab" class="">퍼블리싱</a></li>
									<li><a href="#tab-4" data-toggle="tab" class="">디자인</a></li>
									<li><a href="#tab-5" data-toggle="tab" class="">기획</a></li>
									<li><a href="#tab-6" data-toggle="tab" class="">기타</a></li>
								</ul>
							</div>
							<div class="tab-content p-0 pt-3">
								<div class="tab-pane  active show" id="tab-1">
					<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-danger fs-12">개발</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							
							<div class="card-body">
								<div class="item-det row">
									<div class="col-md-9">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-danger fs-12">개발</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-info fs-12">퍼블리싱</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					
					
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					
					
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-primary fs-12">기획</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-default fs-12">기타</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->					
								</div>
								<div class="tab-pane" id="tab-2">
				<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-danger fs-12">개발</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>


					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->


						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-danger fs-12">개발</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-3">
				<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-info fs-12">퍼블리싱</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						
						
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->			
					

					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-4">
				<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
			
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					
					
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-warning fs-12">디자인</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-5">
				<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-primary fs-12">기획</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 4개, 그 다음부터 새로운 4개-->
					
					
						
					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->	
								</div>
								<div class="tab-pane" id="tab-6">
				<!--Project section-->
					<div class="row">
					<div class="col-xl-6">
						<div class="card overflow-hidden">
							<!-- 
							<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
							-->
							<!--
							<div class="ribbon ribbon-top-right text-dark"><span class="bg-danger">마감 임박</span></div>
							-->
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="jobs.html" class="text-dark"><h4 class="mb-2">프로젝트 테스트 입니다. <span class="badge badge-default fs-12">기타</span> <span class="badge badge-success fs-12"><b>D - 5</b></span><span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span></h4></a>
										<div class="">
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> 비트캠프 후암점</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 서울시 | 용산구</a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-settings text-muted mr-1"></i> Bootstrap</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> 2.4 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> 3,000,000 원/월</a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					
					
					<!--총 10개를 보여줄거면 여기까지가 5개, 그 다음부터 새로운 5개-->
					</div>
					<div class="col-xl-6">
					<!--총 10개를 보여줄거면 여기까지가 5개, 그 다음부터 새로운 5개-->
					
					
					</div>
				
					<div class style="align:center; margin:0 auto;">
						<a href="list.do" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
				<!--/Project section-->	
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/프로젝트-->

		<!--프리마켓-->
		<section class="sptb bg-white">
			<div class="container">
				<div class="section-title center-block text-center">
					<h1>프리마켓</h1>
					<p>한나영 김소담 윤별 김세영 송승훈 한나영 김소담 윤별 김세영 송승훈</p>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">최신 등록 서비스</h3>
							</div>
							<div class="card-body">
								<div id="categorizes-demo" class="owl-carousel owl-carousel-icons5">
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 즐겨찾기 해제 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
									
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 즐겨찾기 해제 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
									
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="card mb-0">
											<!--  
											<div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
											-->
											<div class="item-card-img">
												<a href="books.html"></a>
												<img src="../images/products/books/3.png" alt="img" class="cover-image">
											</div>
				
											
											<!-- 즐겨찾기 설정 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 즐겨찾기 해제 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
											<!-- 
											<div class="item-card7-overlaytext">
												<a href="books-list.html" class="text-white badge badge-primary">JAVA</a>
											</div>
											-->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: 윤별</small>
														<div class="item-card2-text mt-1">
															<a href="books.html" class="text-dark"><h4 class="font-weight-bold">AWS서버구축 및 기술지원</h4></a>
														</div>
														<p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>
														<h2>22,000 <span class="fs-16">원</span> <!-- <span class="fs-16"><del>$25</del></span> --></h2>
														<div>
															<a href="#" class="icons">
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star text-warning"></i>
																<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7</a>&nbsp;&nbsp;
																<span>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> 16</span></a>
																	<a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i> 36</span></a>
																</span>
														</div>
														<!-- 
														<a href="books.html" class="btn btn-primary text-white mt-3">자세히 보기</a>
														-->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>						
						</div>
						
						<br/>
						
					</div>
					
					<div class style="align:center; margin:0 auto;">
						<a href="marketList" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
					</div>
					
				</div>
			</div>
		</section>
		<!--/프리마켓-->

		<!--프리랜서-->
		<section class="sptb">
			<div class="container">
				<div class="section-title center-block text-center">
					<h1>프리랜서</h1>
					<p>한나영 김소담 윤별 김세영 송승훈 한나영 김소담 윤별 김세영 송승훈</p>
				</div>
				<div id="myCarousel1" class="owl-carousel owl-carousel-icons2">
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							
							<!-- 즐겨찾기 해제 상태
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							 -->
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
							<!-- 즐겨찾기 해제 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
						
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							
							<!-- 즐겨찾기 해제 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
							<!-- 즐겨찾기 해제 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
						
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
							<!-- 즐겨찾기 해제 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
						
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							
							<!-- 즐겨찾기 해제 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							
							<!-- 즐겨찾기 해제 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="card mb-0">
						
						
							<!-- 즐겨찾기 설정 상태 
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
							</div>
							-->
							<!-- 즐겨찾기 해제 상태 -->
							<div class="item-card2-icons">
								<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
							</div>
						
						
							<div class="card-body">
								<img src="../images/faces/female/test5.png" alt="img" class=" avatar avatar-xxl brround mx-auto">
								<div class="item-card2">
									<div class="item-card2-desc text-center">
										<div class="item-card2-text mt-3">
											<a href="employer-list.html" class="text-dark"><h4 class="font-weight-bold">한나영</h4></a>
										</div>
										<p class="">개발자</p>
										<p style="background-color:#eae8ed;">JAVA, SPRING, ORACLE DB</p>
										<a href="employer.html" class="btn btn-white btn-sm ">자세히 보기</a>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<div class="product-filter-desc">
								
								<div class="icons text-dark"><i class="si si-user text-muted mr-1"></i> 경력 3년
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="icons">
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star text-warning"></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>&nbsp;4.7
								</a>
								</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				<br/>
				<div class="text-center">
						<a href="employer-list-right" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
				</div>
				
			</div>
		</section>
		<!--프리랜서-->



<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->