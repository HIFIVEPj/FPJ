<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
									<h1 class=""><span class="font-weight-bold">132,523</span> Jobs Available in Hyderabad</h1>
								</div>
								<div class=" search-background">
									<div class="form row no-gutters">

		
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
					<h4 class="page-title"></h4>
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
					<!-- <div class="ribbon ribbon-top-right text-danger"><span class="bg-danger">긴급</span></div> -->
							<div class="card-body">
								<div class="item-det">
									<a href="#" class="text-dark"><h3><strong>${projectCont.pj_sub}</strong></h3></a>
									<br/>
									<div class="d-flex">
										<ul class="mb-0 d-flex">
											<li class="mr-5"><i class="si si-briefcase text-muted mr-1"></i> ${projectCont.pj_name}</li>
											<li class="mr-5"><i class="si si-location-pin text-muted mr-1"></i> 서울 금천구</li>
											<li class="mr-5"><i class="si si-calendar text-muted mr-1"></i> 
												<fmt:parseDate value="${projectCont.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
												<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
															
												<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
												<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
												<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
													<c:choose>
														<c:when test="${endDate > currentDate}">
															D -${endDate - currentDate}
														</c:when>
														<c:otherwise>
															마감
														</c:otherwise>
													</c:choose></li>
											<li class="mr-5"><i class="si si-eye text-muted mr-1"></i> ${projectCont.pj_vcnt}</li>
										</ul>
							
										<div class="rating-stars d-inline-flex mb-4">
											<div class="rating-stars-container mr-1">
												<div class="rating-star sm">
													<i class="fa fa-heart"></i>
												</div>
											</div> ${projectCont.pj_pcnt}
										</div>
									</div>

								</div>
							</div>
							<div class="card-body border-top">
								<div class="mb-4">
										<div class="row">
									<div class="col-xl-12 col-md-12">
										<div class="table-responsive">
											<table class="table row table-borderless w-100 m-0 text-nowrap ">
												<tbody class="col-lg-12 col-xl-6 p-0">
													<tr>
													<td><span class="font-weight-bold">	프로젝트 명 : </span>${projectCont.pj_sub}</td>
													
													</tr>
													<tr>
														<td><span class="font-weight-bold">근무 형태 : </span> 
															<c:if test="${projectCont.pj_place eq 0}">
																 상주
															</c:if>
															<c:if test="${projectCont.pj_place eq 1}">
																 반상주
															</c:if>
															<c:if test="${projectCont.pj_place eq 2}">
															 	자택
															</c:if>
														</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">근무지 :</span> ${projectCont.pj_loc}</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">프로젝트 기간 :</span>${projectCont.pj_term}</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">담당 업무 :</span> ${projectCont.type.type_name}</td>
													</tr>
												
												</tbody>
												<tbody class="col-lg-12 col-xl-6 p-0">
													<tr>
														<td>
															<span class="font-weight-bold">
																급여 :
															</span>
															 <fmt:formatNumber value="${projectCont.pj_pay}" pattern="#,###,###,###" />원
														</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">사용 기술 :</span><c:choose>
																			<c:when test="${projectCont.keyword eq '[]'}">
																				키워드 없음
																			</c:when>
																			<c:otherwise>
																				<c:forEach var="i" begin="0" end="${projectCont.keyword.size()-1}">
																					<span class="tag tag-gray">${projectCont.keyword.get(i).key_name}</span>
																				</c:forEach>
																			</c:otherwise>
																		</c:choose>
															</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">경력 :</span>
														<c:if test="${projectCont.pj_fgrade eq 1}">
																 초급
															</c:if>
															<c:if test="${projectCont.pj_fgrade eq 2}">
																 중급
															</c:if>
															<c:if test="${projectCont.pj_fgrade eq 3}">
															 	고급
															</c:if>
														</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">필요 인력 :</span>${projectCont.pj_recnum} 명 </td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">총 투입인력 :</span> ${projectCont.pj_totalp} 명 </td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								</div>
								
								    <div class="card-header">
                                 	<h4 class="mb-0 font-weight-semibold"><strong>내용</strong></h4>       
  	                                  </div>
								  <div><P style=" padding-top:15px;">${projectCont.pj_cont}</P></div>
								
							</div>
							<span class="card-footer icons"  >
									<a href="#" class="btn btn-info icons" data-toggle="modal" data-target="#apply"> 지원하기</a>
									<a href="#" class="btn btn-primary icons"><i class="si si-share mr-1"></i> 공유하기</a>
									<a href="#" class="btn btn-secondary icons"><i class="si si-printer  mr-1"></i> 인쇄</a>

							<span style="float:right;" >
									<a href="update.do" class="btn btn-secondary icons" >수정</a>
									<a href="#" class="btn btn-secondary icons">삭제</a>
							</span>
					</div>
			<!--Jobs Description-->
					<h3 class="mb-5 mt-4">비슷한 프로젝트</h3>
						<!--Related Posts-->
						<div id="myCarousel2" class="owl-carousel owl-carousel-icons3">
							<div class="item">
								<div class="card">
							<!--<div class="arrow-ribbon bg-purple">new</div><br/> -->
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
										
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
									
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
										
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
								<!-- <div class="arrow-ribbon bg-info">긴급</div><br/><br/> -->
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
									
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
									
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
										
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
							<!-- <div class="arrow-ribbon bg-purple">긴급</div><br/><br/> -->
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											
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
									
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											
										</div>
										<div class="item-card7-overlaytext">
											<a href="jobs.html" class="text-white"> Jobs</a>
											<h4  class="font-weight-semibold mb-0">$925</h4>
										</div>
									</div>
									<div class="card-body">
										<div class="item-card7-desc">
											<a href="jobs.html" class="text-dark"><h4 class="font-weight-semibold">Wanted Sales Men</h4></a>
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
								<!-- 	<div class="arrow-ribbon bg-info">new</div><br/><br/> -->
									<div class="item-card7-img">
										<div class="item-card7-imgs">
											<a href="jobs.html"></a>
											
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
	
						<!--Comments-->

				
					</div>

					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Posted By</h3>
							</div>
							<div class="card-body  item-user">
								<div class="profile-pic mb-0">
									
									<div class="">
										<h4 class="mt-3 mb-1 font-weight-semibold">
										<strong>${projectCont.pj_name}</strong></h4>
										<br/>
										<span class="text-gray"> ${corInfo.cor_type}</span><br/>
										<!--  <span class="text-gray"> IT솔루션 채널영업 및 영업관리 </span><br/>-->
										<span class="text-muted">${corInfo.cor_profile}</span>
										
										<br/><br/>
										<h6 class="mt-2 mb-0"><a href="#" class="btn btn-primary btn-sm">이 기업의 다른공고</a></h6>
									</div>

								</div>
							</div>
							<div class="card-body item-user">
								<h4 class="mb-4">Contact Info</h4>
								<div>
									<h6><span class="font-weight-semibold"><i class="fa fa-envelope mr-2 mb-2"></i></span><a href="#" class="text-body">${corInfo.mem_email}</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-phone mr-2  mb-2"></i></span><a href="#" class="text-primary"> ${corInfo.cor_tel}</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-link mr-2 "></i></span>
												<a href="http://bitcamp.co.kr/" class="text-primary"> ${projectCont.pj_homepage} </a></h6>
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
									<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> 문의하기</a>
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
										<li><a href="#">JAVA</a></li>
										<li><a href="#">PHP</a></li>
										<li><a href="#">DB</a></li>
										<li><a href="#">ORACLE</a></li>
										<li><a href="#">Python</a></li>
										<li><a href="#">C</a></li>
										<li><a href="#">C++</a></li>
									</ul>
								</div>
							</div>
						</div>		
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">지도</h3>
							</div>
							<div class="card-body">
								<div class="map-header">
									<div class="map-header-layer" id="map2"></div>
								</div>
							</div>
						</div>
				<!-- 	<div class="card">
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
						</div> -->
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