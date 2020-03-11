
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Dashboard</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Dashboard</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--Breadcrumb-->

		<!--User Dashboard-->
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
										<!-- <span class="bg-success dots" data-toggle="tooltip" data-placement="top" title="" data-original-title="online"></span> -->
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class=" doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">프리랜서</a></li>
												<li><a class="slide-item " href="freelancerProfile_list?mem_email=${sessionScope.email}">프리랜서 프로필</a></li>
												<li><a class="slide-item " href="mydash.html">기업</a></li>
											</ul>
										</li>
								<!-- 		<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-diamond"></i><span class="side-menu__label"> My Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myads.html"> My Ads-1</a></li>
												<li><a class="slide-item" href="myads.html"> My Ads-2</a></li>
											</ul>
										</li> -->
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html"> 프론젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite.html"> 프리랜서 찜</a></li>
												<li><a class="slide-item" href="myfavorite.html"> 마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged.html">마켓관리</a></li>
												<li><a class="slide-item" href="manged.html">구매관리</a></li>
												<li class="sub-slide">
												<!--  <a class="side-menu__item border-top-0 slide-item" href="#" data-toggle="sub-slide"><span class="side-menu__label">Managed Ads-2</span> <i class="sub-angle fa fa-angle-right"></i></a>-->	
													<ul class="child-sub-menu ">
														<li><a class="slide-item" href="manged.html">Managed Ads-3</a></li>
														<li><a class="slide-item" href="manged.html">Managed Ads-4</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-basket"></i><span class="side-menu__label">Orders</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="orders.html">Orders-1</a></li>
												<li><a class="slide-item" href="orders.html">Orders-2</a></li>
											</ul>
										</li>
								<!--  		<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-game-controller"></i><span class="side-menu__label"> Safety Tips</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="tips.html">Safety Tips-1</a></li>
												<li><a class="slide-item" href="tips.html">Safety Tips-2</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-settings"></i><span class="side-menu__label"> Settings </span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="settings.html">Settings-1</a></li>
												<li><a class="slide-item" href="settings.html">Settings-2</a></li>
											</ul>
										</li>-->
										<li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
			<!-- 			<div class="card my-select">
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
						</div>-->
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">프로필 등록하기</h3>
							</div>
							
					<div class="card-body">
						<div class="card-body">
						<div id="profile-log-switch">
							<div class="fade show active " >
								<div class="table-responsive border ">
									<table class="table row table-borderless w-100 m-0 ">
										<tbody class="col-lg-12 col-xl-6 p-0">
										
										
											<tr>
											
												<td><strong>이름 :</strong> ${content[0].free_name}</td>
											</tr>
											
											<c:forEach  var="contentdata" items="${content}" varStatus="status">
											<c:forEach  var="place" items="${contentdata.freelancerprofile}" varStatus="status">
											<tr>
												<td><strong>업무가능지역 : </strong>${place.pro_workplace}</td>
											</tr>
											</c:forEach>
											</c:forEach>
											
											
											
											<tr>
												<td><strong>사용기술 : </strong>
											<c:forEach  var="key" items="${content3}" varStatus="status" begin="0" end="2">	
											<c:forEach  var="keyname" items="${key.keyword}" varStatus="status">	
												 ${keyname.key_name} / 
											</c:forEach>
											</c:forEach>
										</td></tr>
										</tbody>
										<tbody class="col-lg-12 col-xl-6 p-0">
											
										
											<tr><td><strong>직종 : </strong>
												
											<c:forEach  var="typenum" items="${content2}" varStatus="status" begin="0" end="0">	
												${typenum.type_name}
											</tr>
											</c:forEach>
											
											<tr>
												<td><strong>Email : </strong>${content[0].mem_email}</td>
											</tr>
											<tr>
												<td><strong>연락처 : </strong>${content[0].free_tel}</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="row mt-5 profie-img">
									<div class="col-md-12">
										<div class="media-heading">
										<h5><strong>자기소개</strong></h5>
									</div>
									<c:forEach  var="contentdata" items="${content}" varStatus="status">
										<c:forEach  var="cv" items="${contentdata.freelancerprofile}" varStatus="status">
									<p>${cv.pro_cv}</p>					
										</c:forEach>
									</c:forEach>
									</div>
									
									<div class="col-md-12">			
										<div class="media-heading">
										<br/><br/>
										<h5><strong>첨부파일</strong></h5>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table card-table table-vcenter border text-nowrap">
												<thead>
													<tr>
														<th>프로젝트명</th>
														<th>등록일</th>
														<th>파일</th>														
													</tr>
												</thead>
												<tbody>
												
												
									
													<tr>
													<c:forEach  var="content" items="${content4}" varStatus="status">
													<c:forEach  var="name" items="${content.project}" varStatus="status">
														<tr><td><a href="store.html" class="text-inherit">${name.pj_sub}</a></td><td>
														<fmt:formatDate value="${name.pj_rdate}" pattern="yyyy.MM.dd"></fmt:formatDate></td>
													</c:forEach>
													</c:forEach>



													   				
                           
                                   	<c:set var="doneLoop" value="true" />					
                                   	<c:choose>
                                   	   <c:when test="${empty file_name}">
									   </c:when>
											
										<c:otherwise>
											<c:forEach var="file" items="${file_name}">
													<c:if test="${file.pro_num eq freelancer.pro_num && doneLoop}">	
														<c:set var="doneLoop" value="false" />		
													</c:if>	
																				
											</c:forEach>   
											 	
										</c:otherwise>
									</c:choose>
									
									<c:choose>
									    <c:when test="${!doneLoop}">
									   
									         <td><i class="fa fa-save"></i><a href="#">&nbsp;</a>${file_name[0].profile_ofname}</td>
									     
									    </c:when>
									       
									    
									    <c:otherwise>
									         <td><i class="fa fa-save"></i>&nbsp;등록된 파일이 없습니다.</td>
									    </c:otherwise>
									</c:choose>
									
										</tr></tr>
													
										<!--  			<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>										

													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 July 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>14 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>													
													</tr>		-->											
												</tbody>
											</table>
										</div>
									</div>
								
									</div>
								</div>
							</div>
						</div>
							</div>
							<div class="card-footer" align="right">
							
								<a href="freelancerMyprofile_change?mem_email=${sessionScope.email}&pro_num=${content2.get(0).freelancerprofile.get(0).pro_num}" class="btn btn-secondary icons">수정하기</a>
								
								<a href='freelancerProfile_delete?mem_email=${sessionScope.email}&PRO_NUM=${content2.get(0).freelancerprofile.get(0).pro_num}' class="btn btn-secondary icons">삭제하기</a>		
								
								<a href="freelancerProfile_list?mem_email=${sessionScope.email}" class="btn btn-secondary icons">목록</a>				
									
							</div>
						
						<!-- 	<div class="card-footer" align="right">
								<div class="icons">
									<a href="employer-list-right" class="btn btn-secondary icons">목록</a>
								</div>
							</div> -->	
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->