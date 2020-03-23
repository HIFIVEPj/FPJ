
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
   



		<!--Sliders Section-->
		<section>
        <div id="output"></div>
			<div class="banner-2 cover-image sptb-2 sptb-tab bg-background2" data-image-src="../images/banners/education.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="mb-1">당신이 원하는 그 가치, 바로 이 곳에 있습니다.</h1>
							<p>프로젝트 & 서비스 & IT 프리랜서 플랫폼 - 하이파이브</p>
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
											<form name="no_submitPj">
												<div class="form row no-gutters">
													<div class="form-group  col-xl-6 col-lg-6 col-md-12 mb-0">
														<input type="text" class="form-control pjSearch" id="Course-text" placeholder="프로젝트 검색">
													</div>
													<div class="form-group col-xl-4 col-lg-4 col-md-12 mb-0">
														<select class="form-control select2-show-search border-bottom-0 w-100 pjType" data-placeholder="Select">
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
																<a href="javascript:void(0)" class="btn btn-block btn-secondary fs-14" onclick="pjSearch();"><i class="fa fa-search"></i> Search</a>
															</div>
														</div>
													</div>
												</div>
											</form>
											</div>
										</div>
										<script type="text/javascript">
											function pjSearch(){
												var type= $(".pjType").val();
												var searchKey=$(".pjSearch").val();
												
												location.href="project_list?type="+type+"&searchKey="+searchKey;
											}
										</script>
										<!-- 프리마켓검색 -->
										<div class="tab-pane" id="tab2">
											<div class="search-background">
												<div class="form row no-gutters">
													<div class="form-group  col-xl-10 col-lg-10 col-md-12 mb-0">
														<input type="text" class="form-control searchWord" id="certificate-text" placeholder="프리마켓 검색">
													</div>
													
													<div class="form-group col-xl-2 col-lg-2  col-md-12 mb-0 location">
														<div class="row no-gutters bg-white br-2">
															
															<div class="col-xl-12 col-lg-12 col-md-12 mb-0">
																<a href="javascript:void(0)" class="btn btn-block btn-secondary fs-14" onclick="marketSearch();"><i class="fa fa-search"></i> Search</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<script>
										function marketSearch(){
											var searchWord=$(".searchWord").val();
											
											location.href="market-list?searchWord="+searchWord;
										}
										</script>
										<!-- 프리마켓검색 -->
										
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
								<h2 class="counter mb-0">${totalCount}</h2>건
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status mb-6 mb-lg-0">
								<div class="counter-icon">
									<i class="fa fa-diamond" style="font-size: 1.1rem;"></i>
								</div>
								<h5>총 프로젝트 금액</h5>
								<h2 class="counter mb-0"><fmt:formatNumber value="${sumCountCorIndex}" pattern="#,###,###,###" /></h2>원
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status mb-6 mb-sm-0">
								<div class="counter-icon">
									<i class="ti-shopping-cart-full"></i>
								</div>
								<h5>총 프리마켓 서비스 수</h5>
								<h2 class="counter mb-0">${marketTotal}</h2>건
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="counter-status">
								<div class="counter-icon">
									<i class="fa fa-drivers-license-o"></i>
								</div>
								<h5>총 프리랜서 수</h5>
								<h2 class="counter mb-0">${countFree}</h2>명
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
					<p>다양한 카테고리와 세분화된 조건으로  IT프로젝트를 만나실 수 있습니다</p>
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
							<style>
								.projectBack:nth-child(2n-1){
									margin-left:10%;
								}
							</style>
							<div class="tab-content p-0 pt-3">
								<div class="tab-pane  active show" id="tab-1">
					<!--Project section-->
					<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
					
				<!--/Project section-->					
								</div>
								<div class="tab-pane" id="tab-2">
				<!--Project section-->
					<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					<c:choose>
					<c:when test ="${pjList.type_num==1}">
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:when>
					</c:choose>	
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list?type=1" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
					
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-3">
				<!--Project section-->
					<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					<c:choose>
					<c:when test ="${pjList.type_num==2}">
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:when>
					</c:choose>	
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list?type=2" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-4">
				<!--Project section-->
					<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					<c:choose>
					<c:when test ="${pjList.type_num==3}">
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:when>
					</c:choose>	
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list?type=3" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
				<!--/Project section-->
								</div>
								<div class="tab-pane" id="tab-5">
				<!--Project section-->
					<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					<c:choose>
					<c:when test ="${pjList.type_num==4}">
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:when>
					</c:choose>	
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list?type=4" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
				<!--/Project section-->	
								</div>
								<div class="tab-pane" id="tab-6">
				<!--Project section-->
				<div class="row" style="margin:0 auto; align:center;padding-left:9%;">
					<c:forEach items="${pjList}" var="pjList">
					<c:choose>
					<c:when test ="${pjList.type_num==5}">
						<div class="card overflow-hidden col-xl-5 projectBack" style="margin-left:2%">
							<div class="card-body mx-auto">
								<div class="item-det row">
									<div class="col-md-12">
										<a href="project_content?pj_num=${pjList.pj_num}" class="text-dark"><span style="font-size:18px; margin-right:8px;">${pjList.pj_sub} </span> 
										<c:if test="${pjList.type_num==1}">
										<span class="badge badge-danger fs-12">
										개발
										</span>
										</c:if>
										<c:if test="${pjList.type_num==2}">
										<span class="badge badge-info fs-12">
										퍼블리싱
										</span>
										</c:if>
										<c:if test="${pjList.type_num==3}">
										<span class="badge badge-warning fs-12">
										디자인
										</span>
										</c:if>
										<c:if test="${pjList.type_num==4}">
										<span class="badge badge-primary fs-12">
										기획
										</span>
										</c:if>
										<c:if test="${pjList.type_num==5}">
										<span class="badge badge-default fs-12">
										기타
										</span>
										</c:if>
										
										<fmt:parseDate value="${pjList.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
										
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
										
											<c:if test="${pjList.pj_status==0 && endDate > currentDate}">
											<span class="badge badge-success fs-12"><b>	D -${endDate - currentDate}</b></span>
											<c:if test="${endDate - currentDate<6}">
												<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>
											</c:if>
											</c:if>
											<c:if test="${pjList.pj_status==1 || endDate <= currentDate}">
											<span class="badge badge-danger fs-12"><b>	마감</b></span>
											</c:if>
										<!--<span class="fs-10 label label-danger arrowed-in-right arrowed">마감 임박</span>--></h4></a>
										<div class="mt-2" >
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i> ${pjList.corporation.cor_name}</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> 
												<c:set var = "loc" value="${fn:split(pjList.pj_loc,' ')}"/>
												<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach></a></li>
															
											</ul>
											<ul class="mb-0 d-flex">
												<li class="mr-5"><a href="#" class="icons"><i class="si si-bulb text-muted mr-1"></i>
												<c:if test="${pjList.pj_fgrade == 1}" >
												초급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 2}" >
												중급
												</c:if>
												<c:if test="${pjList.pj_fgrade == 3}" >
												고급
												</c:if>
												</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-clock text-muted mr-1"></i> ${pjList.pj_term} 개월</a></li>
												<li class="mr-5"><a href="#" class="icons"><i class="si si-diamond text-muted mr-1"></i> :
												<fmt:formatNumber value="${pjList.pj_pay}" pattern="#,###,###,###" />원/<span style="font-size:10px;">전체</span></a></li>
											</ul>
										</div>
									</div>											 
								</div>
							</div>
						</div>
					</c:when>
					</c:choose>	
					</c:forEach>
				</div>
					<div style=" text-align:center; margin:0 auto;">
						<a href="project_list?type=5" class="btn btn-primary"><i class="si si-options-vertical mr-1"></i> 더 보기</a>
					</div>
				<!--/Project section-->	
							</div>
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
					<p>다양한 카테고리와 세분화된 조건으로 IT프리랜서를 만나실 수 있습니다</p>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">최신 등록 서비스</h3>
							</div>
							
							
							<div class="card-body">
								<div id="categorizes-demo" class="owl-carousel owl-carousel-icons5">
								
						<c:forEach items="${list}" var="list"  varStatus="status">		
									<div class="item">
										<div class="card mb-0">
											
											<div class="item-card-img">
												<a href="market-content?market_num=${list.market_num}"></a>
												<img  src="../hifiveImages/marketThumbnails/${list.market_fname}" alt="${list.market_fname}">
											</div>
									<!-- 즐겨찾기 설정 상태 -->
										 <!-- 
										 	<div class="item-card9-icons" id="heartDivID${list.market_num}">
												<c:if test="${fn:length(marketNumList) > 0}">	
													<c:choose>
														<c:when test="${marketNumList.contains(list.market_num)}">
															<a href="javasript:void(0)" class="item-card9-icons1 delwish" onclick="delPick(${list.market_num})" id="fullHeart${list.market_num}" style="margin-right:40%; background-color: #e8564a;"><i class="fa fa fa-heart" style="color:white" ></i></a>
														</c:when>
														<c:otherwise>
															<a href="javasript:void(0)" class="item-card9-icons1 wishlist" onclick="addPick(${list.market_num})" id="emptyHeart${list.market_num}"> <i class="fa fa fa-heart-o" ></i></a>
														</c:otherwise>
													</c:choose>
												</c:if>
												<c:choose>
													<c:when test="${sessionScope.email != null}">
														<c:if test="${fn:length(marketNumList) == 0}">	
															<a href="javasript:void(0)" class="item-card9-icons1 wishlist"  onclick="addPick(${list.market_num})"  id="emptyHeart${list.market_num}"> <i class="fa fa fa-heart-o"></i></a>
														</c:if>
													</c:when>
													<c:otherwise>
														<a href="javascript:void(0);" class="item-card9-icons1 wishlist" onclick="loginCheck()"> <i class="fa fa fa-heart-o"></i></a>
													</c:otherwise>
												</c:choose>
											</div>										
									 -->
										<!-- 즐겨찾기 설정 상태 -->
											<div class="card-body">
												<div class="item-card2">
													<div class="item-card2-desc">
														<small class="">By: ${list.freelancer.free_name}</small>
														<div class="item-card2-text mt-1">
															<a href="market-content?market_num=${list.market_num}" class="text-dark"><h4 class="font-weight-bold">${list.market_sub}</h4></a>
														</div>
														<!--  <p class="">AWS(아마존 웹 서비스) 및 리눅스 서버 구축,이전,컨설팅,기술지원 해드립니다.</p>-->
														<h2><fmt:formatNumber value="${list.market_price}" pattern="#,###,###,###" /><span class="fs-16">원</span></h2>
														<div>
															<a href="#" class="icons">
																<span class="rated-products-ratings">
																	<c:if test="${list.marketRev.marketRev_star >= 0}" ><!-- 마켓리뷰점수가 -->
																		<c:forEach var="1" begin="1" end="${list.marketRev.marketRev_star}">
																			<i class="fa fa-star text-warning"> </i>
																		</c:forEach>
																		<c:forEach var="1" begin="1" end="${5-list.marketRev.marketRev_star}">
																			<i class="fa fa-star-o text-warning"> </i>
																		</c:forEach>	
																	</c:if>
																</span>&nbsp;${list.marketRev.marketRev_star}&nbsp;&nbsp;&nbsp;
																
																<span>
																	 <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> ${list.marketRev.marketRev_num}</span></a>
					 												 <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i>${list.market_vcnt}</span></a>
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
								</c:forEach>	
								</div>
							</div>						
						</div>		
						<br/>
					</div>
					<div class style="align:center; margin:0 auto;">
						<a href="market-list" class="btn btn-primary">　　<i class="si si-options-vertical mr-1"></i> 더 보기　　</a>
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
<script>
	/*function loginCheck(){
		alert("로그인 후 이용해주세요");
	}
	
	function addPick(market_num){
		//alert("marketnum"+market_num);
		$.ajax({
			type:"get",  
			url:'marketPick-add?market_num='+market_num+'&mem_email=${sessionScope.email}',
			success: function(){
				$('#emptyHeart'+market_num).remove();
				$('#heartDivID'+market_num).append('<a href="javasript:void(0)" class="item-card9-icons1 delwish" onclick="delPick('+market_num+')" id="fullHeart'+market_num+'" style="margin-right:40%; background-color: #e8564a;"><i class="fa fa fa-heart" style="color:white" ></i></a>');
			},
			error: function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	function delPick(market_num){
		//alert("marketnum"+market_num);
		$.ajax({
			type:"get",  
			url:'marketPick-del?market_num='+market_num+'&mem_email=${sessionScope.email}',
			success: function(){
				$('#fullHeart'+market_num).remove();
				$('#heartDivID'+market_num).append('<a href="javasript:void(0)" class="item-card9-icons1 wishlist" onclick="addPick('+market_num+')" id="emptyHeart'+market_num+'"> <i class="fa fa fa-heart-o" ></i></a>');
			},
			error: function(request,status,error){
				 console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	 }*/
</script>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5e74822feec7650c33215c87/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->




  		                            





<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
