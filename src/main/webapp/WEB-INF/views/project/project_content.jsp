<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<jsp:include page="../member/login_check.jsp"/>

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
						<div class="card overflow-hidden" id="printarea" >
					<!-- <div class="ribbon ribbon-top-right text-danger"><span class="bg-danger">긴급</span></div> -->
							<div class="card-body">
								<div class="item-det">
									<div style="margin-top:10px">
										<h3><strong>${projectCont.pj_sub}</strong></h3>
									</div>
									<div class="d-flex">
										<ul class="mb-0 d-flex">
											<li class="mr-5"><i class="si si-briefcase text-muted mr-1"></i> ${corInfo.cor_name}</li>
											<li class="mr-5"><i class="si si-location-pin text-muted mr-1"></i>
											<c:set var = "loc" value="${fn:split(projectCont.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
													<c:if test="${g.count<3}" >
														${pj_loc}
													</c:if>
												</c:forEach>
											</li>
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
							
										<div class="rating-stars d-inline-flex">
											<div class="rating-stars-container mr-1">
												<div class="rating-star sm"><i class="fa fa-heart"></i></div>
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
														<td><span class="font-weight-bold">근무 형태 : </span> 
															<c:if test="${projectCont.pj_place eq 0}">
																 비상주
															</c:if>
															<c:if test="${projectCont.pj_place eq 1}">
																 상주
															</c:if>
															<c:if test="${projectCont.pj_place eq 2}">
															 	반상주
															</c:if>
														</td>
													</tr>
													
													<tr>
														<td><span class="font-weight-bold">프로젝트 기간 :</span>${projectCont.pj_term} 개월</td>
													</tr>
													<tr>
														<td><span class="font-weight-bold">담당 업무 :</span> ${projectCont.type.type_name}</td>
													</tr>
													<tr>
														<td style="width:363px;"><span class="font-weight-bold">근무지 :</span> ${projectCont.pj_loc}</td>
													</tr>
												</tbody>
												<tbody class="col-lg-12 col-xl-6 p-0">
													<tr>
														<td><span class="font-weight-bold">급여 :</span>
															<fmt:formatNumber value="${projectCont.pj_pay}" pattern="#,###,###,###" />원

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
									<div class="col-xl-12 col-md-12" >
									<hr style="margin-top:20px; margin-bottom:15px;">											
												<span class="font-weight-bold">필요기술 : </span>
												<p style="margin-top:10px;">
													<c:choose>
														<c:when test="${projectCont.keyword eq '[]' }">
																키워드 없음
														</c:when>
														<c:otherwise>
															<c:forEach var="i" begin="0" end="${projectCont.keyword.size()-1}">
																<span class="tag tag-gray">${projectCont.keyword.get(i).key_name}</span>
															</c:forEach>
														</c:otherwise>
													</c:choose>
													</p>
												<hr style="margin-top:20px; margin-bottom:10px;">
											</div>	
							
								    <div class="card-header">
                                 		<h4 class="mb-0 font-weight-semibold"><strong>내용</strong></h4>       
  	                                </div>
								  <div style="width:95%; margin:0 auto;"><P style="padding-top:15px;">${projectCont.pj_cont}</P></div>
								
							</div>
							<span class="card-footer icons" id="btns">
								<c:if test="${empty appp}">
									<a href="#" class="btn btn-info icons" data-toggle="modal" data-target="#apply" id="app_btn"> 지원하기</a>
								</c:if>
								<c:if test="${!empty appp}">
									<a href="javascript:apply_done();" class="btn btn-info icons" > 지원하기</a>
								</c:if>
								<button type="button" class="btn btn-primary icons" data-toggle="modal" data-target="#shareModal"><i class="si si-share mr-1"></i> 공유하기</button>

								<a href="javascript:void(0)" onclick="javascript:print();" class="btn btn-secondary icons"><i class="si si-printer  mr-1"></i> 인쇄</a>
							<c:if test="${sessionScope.email eq corInfo.mem_email}">
								<span style="float:right;" >
									<a href="project_update?pj_num=${projectCont.pj_num}" class="btn btn-secondary icons" >수정</a>
									<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteModal">삭제</button>
								</span>
							</c:if>
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
								<h3 class="card-title">회사정보</h3>

							</div>
							<div class="card-body  item-user">
								<div class="profile-pic mb-0">
									
									<div class="">
										<h4 class="mt-3 mb-1 font-weight-semibold">
										<strong>${corInfo.cor_name}</strong></h4>
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
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">지도</h3>
							</div>
							<!-- 카카오 map 등록 -->
								
								<div id="map" class="mx-auto" style="width:90%; height:300px; margin-top:20px; margin-bottom:20px;"></div>
									
									<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e87f1e8bcbb6ac445c4b87fdbcf76e"></script>
									<script>
									var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
									    mapOption = { 
									        center: new kakao.maps.LatLng('${projectCont.pj_loc_y}', '${projectCont.pj_loc_x}'), // 지도의 중심좌표
									        level: 3 // 지도의 확대 레벨
									    };
									
									var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
									
									// 마커가 표시될 위치입니다 
									var markerPosition  = new kakao.maps.LatLng('${projectCont.pj_loc_y}', '${projectCont.pj_loc_x}'); 
									
									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
									    position: markerPosition
									});
									
									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
									
									// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
									// marker.setMap(null);    
									</script>
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
						<h5 class="modal-title" id="exampleModalLongTitle">지원하기</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									
									<label class="form-label">지원하시겠습니까?</label>
									<c:forEach var="profile_dto" items="${profile_select}">
										<input type="radio" class="custom-control-input" name="example-radios" value="${profile_dto.pro_num}" checked>
										<span>${profile_dto.profile_sub}</span>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer" id="app_footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						<c:choose>
							<c:when test="${empty free}">
								<button type="button" class="btn btn-success" onclick="freeolny()">지원하기</button>
							</c:when>
							<c:otherwise>
								<c:if test="${empty profile_select}">
									<button type="button" class="btn btn-success" onclick="profilePlease()">지원하기</button>
								</c:if>
								<c:if test="${!empty profile_select}">
									<button type="button" class="btn btn-success" onclick="apply()">지원하기</button>
								</c:if>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
			<script>
			function freeolny(){
				alert("프리랜서 회원만 이용할 수 있습니다.")
				$("#apply").modal('hide');
			}
			function profilePlease(){
				alert("프로필을 등록하셔야 이용할 수 있습니다.")
				$("#apply").modal('hide');
			}
			function apply(){	
				$.ajax({
					type:"get",  
					url:"<c:url value='apply'/>",
	    			data:"pj_num=${projectCont.pj_num}+&free_code=${free.free_code}",
					success: function(data){
						alert("성공");
						$('#app_btn').remove();
						$('#btns').prepend("<a href='javascript:apply_done();' class='btn btn-info icons' > 지원하기</a>")
						$("#apply").modal('hide');
					},
					error: function(data){
					alert("에러발생");
					}
				});
			}
			function apply_done(){
				alert("이미 지원한 프로젝트 입니다");
				$("#apply").modal('hide');
			}
			</script>
<!-- small Modal -->   
      <div id="deleteModal" class="modal fade">

         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <!--
                  <h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 삭제</b></h5>
                  -->
                  <div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <p>글을 정말 삭제할까요?</p>
               </div>
               
               <div class="modal-footer">
               
                 <a class="btn btn-primary" style="color:white;" href="project_delete?pj_num=${projectCont.pj_num}">네</a> 
                  
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
      <!-- /small Modal -->

    <!-- small Modal -->   
      <div id="" class="modal fade">
         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <!--
                  <h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 삭제</b></h5>
                  -->
                 
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
               
               </div>
            </div>
         </div>      
      </div>
      <!-- /small Modal -->  
      
      		<!-- Modal -->
			<div class="modal fade" id="shareModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"> <span class="float-right btn btn-icon btn-primary btn-sm mt-3"><i class="si si-share mr-1"></i></span></h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body " style="margin:0 auto;">
							<a id="kakao-link-btn" href="javascript:sendLink()" class="btn btn-icon brround kakao-btn">
								<span class="fa fa-comment"></span><!-- <img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/> -->
							</a>
						</div>
						<div class="modal-footer">
						
						 <input type="text" id = "shareUrl"  class="form-control">
               	 <span><button class = "btn btn-secondary" onclick="javascript:copyUrlToClipboard()">URL복사</button></span>
						</div>
					</div>
				</div>
			</div>
      <!--Modal 끝-->
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
<script>
var obShareUrl = document.getElementById("shareUrl");
obShareUrl.value=window.document.location.href;	
	function copyUrlToClipboard(){
		obShareUrl.select();
		document.execCommand("copy");
		obShareUrl.blur();
		alert("URL이 클립보드에 복사되었습니다.")
	}

</script>
<!-- 카카오 공유하기 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('50e87f1e8bcbb6ac445c4b87fdbcf76e');
    // // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    function sendLink() {
      Kakao.Link.sendDefault({
        objectType: 'feed',
        content: {
          title: '프로젝트 & 서비스 & IT 프리랜서 플랫폼 - 하이파이브',
          description: '${projectCont.pj_sub}',
          imageUrl: '../images/brand/logo1.png',
          link: {
            mobileWebUrl: 'http://127.0.0.1:8090/project_content?pj_num=${projectCont.pj_num}',
            webUrl: 'http://127.0.0.1:8090/project_content?pj_num=${projectCont.pj_num}'
          }
        },
        social: {
      		viewCount: ${projectCont.pj_vcnt},
       		likeCount: ${projectCont.pj_pcnt}
        },
        buttons: [
          {
            title: '페이지로 바로가기',
            link: {
              mobileWebUrl: 'https://developers.kakao.com',
              webUrl: 'https://developers.kakao.com'
            }
          }
        ]
      });
    }
  //]]>
</script>
<!-- 카카오 공유하기 -->

<!-- 프린트 특정영역 인쇄  
<script type="text/javascript">

var initBody;

function beforePrint() {
 printareas = document.body.innerHTML;
 document.body.innerHTML = printarea.innerHTML;
}
function afterPrint() { 
 document.body.innerHTML = printareas;
}
function printArea() {
 window.print();
}

window.onbeforeprint = beforePrint;
window.onafterprint = afterPrint;

</script>
-->