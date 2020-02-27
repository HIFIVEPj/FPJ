<<<<<<< HEAD
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
									<h2 class=""><span class="font-weight-bold"></span> Freelancer</h2>
									<h6>56,868개의 클라이언트 기업과 73,392개의 개발회사 & 프리랜서가 함께하는 위시켓</h6>
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
					<h4 class="page-title">Job List</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Job List</li>
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
						<!--Add lists-->
						<div class="card mb-lg-0">
							<div class="card-body  item-user">
								<div class="row">
									<div class="col">
										<div class="profile-pic mb-0">
											<div class="d-md-flex"> 
											   <!--	<img src="../images/faces/female/25.jpg" class="w100 h-100 brround" alt="user">   --> 
											 	<a class="icons"><i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i></a> 
												<div class="ml-4">
													<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-bold">김OO</h4></a>
													<span class="text-gray">개발자</span>&nbsp;
													<span class="text-muted">3년</span><br>
													<span class="text-muted">java/oracle/javaScript/jQuery</span><br>
													<span class="text-gray">서울</span>&nbsp;
													<a class="icons"><i class="fa fa-eye text-muted mr-1"></i> 22 Views</a><br>
													<div class="rating-stars d-inline-flex mb-2 mr-3">
														<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
												</div>
											</div>
										</div>
									</div>
									
																	<div class="item-card2-icons">
									<a href="" class="item-card9-icons1 wishlist active"><i  class="fa fa fa-heart-o"></i></a>
								</div>
	
								</div>
								<h4 class="pb-3 border-bottom mt-4">Profile</h4>
								<ul class="usertab-list mb-0">
									<li><span class="font-weight-semibold">이름 :</span> 김oo</li>
									<li><span class="font-weight-semibold">경력 :</span> 3년</li>
									<li><span class="font-weight-semibold">직업:</span> 개발자</li>
									<li><span class="font-weight-semibold">분야 :</span> It Software/ Developer </li>																											
									<li><span class="font-weight-semibold">주소 :</span> 서울시 마포구</li>
									<li><span class="font-weight-semibold">선호지역 :</span> 서울시</li>														
									<li><span class="font-weight-semibold">Email :</span> rubincarmody@Pinlist.com</li>
									<li><span class="font-weight-semibold">연락처 :</span> +82 10 9283 3562 </li>
									<li><span class="font-weight-semibold">현재 근무가능여부 :</span> yes </li>
									<li><span class="font-weight-semibold">업무가능일 :</span> 20-02-17 </li>									
									<br/><br/><br/>
									<li class="w-100 mt-3"><span class="font-weight-semibold">최종학력 </span> </li>
									<li><span class="font-weight-semibold"></span> 201402</li>
									<li><span class="font-weight-semibold"></span> 서강대학교</li>
								
								</ul>


					<!--  		<h4 class="pb-3 border-bottom mt-4">Employment Details</h4>
								<div><i class="fa fa-caret-right mr-2"></i> Currently Working at  <span class="font-weight-bold">Info Tech Pvt Ltd</span></div>
								<div><i class="fa fa-caret-right mr-2"></i> 3 Yrs Of Working Experience in   <span class="font-weight-bold">Info Tech Pvt Ltd</span></div> -->	
								<h4 class="pb-3 border-bottom mt-5">프로젝트</h4>
								<div class="table-responsive">
									<table class="table table-bordered border-top mb-0">
										<thead>
											<tr>
												<th>프로젝트 & 담당업무</th>
												<th>사용언어  & 주요기술</th>
												<th>첨부파일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td scope="row"><b>Cafe24 app</b>
												<br/>  
												<span>2017-09-08!2018-09-07</span>
												</td>
												<td>java/oracle/http</td>
												<td><a href="#"><i class="fa fa-save"></i>java.zip</td>
												
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="card-footer" align="right">
								<div class="icons">
									<a href="employer-list-right" class="btn btn-secondary icons">목록</a>
								</div>
							</div>
						</div>
						<!--Add lists-->
					</div>

					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
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
								<div class="" id="container">
									<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">CGI<span class="label label-secondary float-right">14</span></a>
		                                 </span>
		                              </label>
		
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">jQuery<span class="label label-secondary float-right">22</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">.Net<span class="label label-secondary float-right">78</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Java<span class="label label-secondary float-right">35</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox5" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">C<span class="label label-secondary float-right">23</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox6" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">C++<span class="label label-secondary float-right">14</span></a>
		                                 </span>
		                              </label>
		
		
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Angular Js<span class="label label-secondary float-right">45</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">HTML<span class="label label-secondary float-right">34</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">CFML<span class="label label-secondary float-right">12</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Ajax<span class="label label-secondary float-right">18</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Flash<span class="label label-secondary float-right">02</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Android<span class="label label-secondary float-right">15</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Java Script<span class="label label-secondary float-right">32</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">My SQL<span class="label label-secondary float-right">23</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">SQL<span class="label label-secondary float-right">19</span></a>
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
								   <label for="price">Package:</label>
								   <input type="text" id="price">
								</h6>
								<div id="mySlider"></div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Condition</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											Part time
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Full time
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-0">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Work Home
										</span>
									</label>
								</div>
							</div>

							<div class="card-footer">
								<a href="#" class="btn btn-primary btn-block">검색하기</a>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Shares</h3>
							</div>
							<div class="card-body product-filter-desc">
								<ul class="vertical-scroll1">
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/female/17.jpg" alt="img">
											<div class="">
												<h4 class="mb-1 mt-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													Web Designer (1+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/male/17.jpg" alt="img">
											<div class="">
												<h4 class="mb-1 mt-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													Java Programmer (1+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/female/20.jpg" alt="img">
											<div class="">
												<h4 class="mt-1 mb-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													PHP Developer (2+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--Right Side Content-->
				</div>
			</div>
		</section>
		<!--Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
=======
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
									<h2 class=""><span class="font-weight-bold"></span> Freelancer</h2>
									<h6>56,868개의 클라이언트 기업과 73,392개의 개발회사 & 프리랜서가 함께하는 위시켓</h6>
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
					<h4 class="page-title">Job List</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Job List</li>
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
						<!--Add lists-->
						<div class="card mb-lg-0">
							<div class="card-body  item-user">
								<div class="row">
									<div class="col">
										<div class="profile-pic mb-0">
											<div class="d-md-flex"> 
											   <!--	<img src="../images/faces/female/25.jpg" class="w100 h-100 brround" alt="user">   --> 
											 	<a class="icons"><i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i></a> 
												<div class="ml-4">
													<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-bold">김OO</h4></a>
													<span class="text-gray">개발자</span>&nbsp;
													<span class="text-muted">3년</span><br>
													<span class="text-muted">java/oracle/javaScript/jQuery</span><br>
													<span class="text-gray">서울</span>&nbsp;
													<a class="icons"><i class="fa fa-eye text-muted mr-1"></i> 22 Views</a><br>
													<div class="rating-stars d-inline-flex mb-2 mr-3">
														<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
												</div>
											</div>
										</div>
									</div>
									
																	<div class="item-card2-icons">
									<a href="" class="item-card9-icons1 wishlist active"><i  class="fa fa fa-heart-o"></i></a>
								</div>
	
								</div>
								<h4 class="pb-3 border-bottom mt-4">Profile</h4>
								<ul class="usertab-list mb-0">
									<li><span class="font-weight-semibold">이름 :</span> 김oo</li>
									<li><span class="font-weight-semibold">경력 :</span> 3년</li>
									<li><span class="font-weight-semibold">직업:</span> 개발자</li>
									<li><span class="font-weight-semibold">분야 :</span> It Software/ Developer </li>																											
									<li><span class="font-weight-semibold">주소 :</span> 서울시 마포구</li>
									<li><span class="font-weight-semibold">선호지역 :</span> 서울시</li>														
									<li><span class="font-weight-semibold">Email :</span> rubincarmody@Pinlist.com</li>
									<li><span class="font-weight-semibold">연락처 :</span> +82 10 9283 3562 </li>
									<li><span class="font-weight-semibold">현재 근무가능여부 :</span> yes </li>
									<li><span class="font-weight-semibold">업무가능일 :</span> 20-02-17 </li>									
									<br/><br/><br/>
									<li class="w-100 mt-3"><span class="font-weight-semibold">최종학력 </span> </li>
									<li><span class="font-weight-semibold"></span> 201402</li>
									<li><span class="font-weight-semibold"></span> 서강대학교</li>
								
								</ul>


					<!--  		<h4 class="pb-3 border-bottom mt-4">Employment Details</h4>
								<div><i class="fa fa-caret-right mr-2"></i> Currently Working at  <span class="font-weight-bold">Info Tech Pvt Ltd</span></div>
								<div><i class="fa fa-caret-right mr-2"></i> 3 Yrs Of Working Experience in   <span class="font-weight-bold">Info Tech Pvt Ltd</span></div> -->	
								<h4 class="pb-3 border-bottom mt-5">프로젝트</h4>
								<div class="table-responsive">
									<table class="table table-bordered border-top mb-0">
										<thead>
											<tr>
												<th>프로젝트 & 담당업무</th>
												<th>사용언어  & 주요기술</th>
												<th>첨부파일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td scope="row"><b>Cafe24 app</b>
												<br/>  
												<span>2017-09-08!2018-09-07</span>
												</td>
												<td>java/oracle/http</td>
												<td><a href="#"><i class="fa fa-save"></i>java.zip</td>
												
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="card-footer" align="right">
								<div class="icons">
									<a href="employer-list-right" class="btn btn-secondary icons">목록</a>
								</div>
							</div>
						</div>
						<!--Add lists-->
					</div>

					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
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
								<div class="" id="container">
									<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">CGI<span class="label label-secondary float-right">14</span></a>
		                                 </span>
		                              </label>
		
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">jQuery<span class="label label-secondary float-right">22</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox3" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">.Net<span class="label label-secondary float-right">78</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox4" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Java<span class="label label-secondary float-right">35</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox5" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">C<span class="label label-secondary float-right">23</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox6" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">C++<span class="label label-secondary float-right">14</span></a>
		                                 </span>
		                              </label>
		
		
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Angular Js<span class="label label-secondary float-right">45</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">HTML<span class="label label-secondary float-right">34</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">CFML<span class="label label-secondary float-right">12</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Ajax<span class="label label-secondary float-right">18</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Flash<span class="label label-secondary float-right">02</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Android<span class="label label-secondary float-right">15</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">Java Script<span class="label label-secondary float-right">32</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">My SQL<span class="label label-secondary float-right">23</span></a>
		                                 </span>
		                              </label>
		                              <label class="custom-control custom-checkbox mb-3">
		                                 <input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
		                                 <span class="custom-control-label">
		                                    <a href="#" class="text-dark">SQL<span class="label label-secondary float-right">19</span></a>
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
								   <label for="price">Package:</label>
								   <input type="text" id="price">
								</h6>
								<div id="mySlider"></div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Condition</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											Part time
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Full time
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-0">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Work Home
										</span>
									</label>
								</div>
							</div>

							<div class="card-footer">
								<a href="#" class="btn btn-primary btn-block">검색하기</a>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Shares</h3>
							</div>
							<div class="card-body product-filter-desc">
								<ul class="vertical-scroll1">
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/female/17.jpg" alt="img">
											<div class="">
												<h4 class="mb-1 mt-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													Web Designer (1+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/male/17.jpg" alt="img">
											<div class="">
												<h4 class="mb-1 mt-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													Java Programmer (1+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="d-flex m-0 mt-0 p-3">
											<img class="mr-4 avatar avatar-xxl brround" src="../images/faces/female/20.jpg" alt="img">
											<div class="">
												<h4 class="mt-1 mb-1">광과스폰문의 환영</h4>
												<div class="text-muted mb-2">
													PHP Developer (2+ Exp)
												</div>
												<a class="btn-link" href="">View Details</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--Right Side Content-->
				</div>
			</div>
		</section>
		<!--Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
>>>>>>> 6639d0921df9b65c8efd3090a1a3933ebc32d277
<!--/footer-->