
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner7.jpg">
				<div class="header-text1 mb-0">
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
				<!--  				<h1 class=""><span class="font-weight-bold">12,32,523</span> Books Available</h1>  -->	
								</div>
								<div class="search-background mb-0">
						 <!--			<div class="form row no-gutters">
											<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="Search Your Book">
										</div>  
										
											
								  	<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Category</option>
													<option value="1">Action and adventure</option>
													<option value="2">Alternate history</option>
													<option value="3">Anthology</option>
													<option value="4">Chick lit</option>
													<option value="5">Children's literature</option>
													<option value="6">Comic book</option>
													<option value="7">Coming-of-age</option>
													<option value="8">Crime</option>
													<option value="9">Drama</option>
													<option value="10">Fairytale</option>
													<option value="11">Fantasy</option>
													<option value="12">Graphic novel</option>
													<option value="13">Historical fiction</option>
													<option value="14">Mystery</option>
													<option value="15">Paranormal romance</option>
													<option value="16">Picture book</option>
													<option value="17">Poetry</option>
													<option value="18">Political thriller</option>
													<option value="19">Romance</option>
													<option value="20">Satire</option>
													<option value="21">Science fiction</option>
													<option value="22">Love</option>
													<option value="23">Short story</option>
													<option value="24">Suspense</option>
													<option value="25">Thriller</option>
													<option value="26">Art</option>
													<option value="27">Autobiography</option>
													<option value="28">Biography</option>
													<option value="29">Book review</option>
												</optgroup>
											</select>
										</div>   
										
										
										
										<div class="col-xl-2 col-lg-3 col-md-12 mb-0">
											<a href="#" class="btn btn-lg btn-block btn-secondary">Search</a>
										</div>
									</div>  -->	
									
									
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
					<h4 class="page-title">Project</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Books List Right</li>
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
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="검색">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											검색
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
						
						<!-- 구분 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">구분</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											개발
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											퍼블리싱
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											디자인
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											기획
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											기타
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
								</div>
							</div>
						<!-- /구분 카테고리 -->
						<!-- 등급 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">경력</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											초급
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											중급
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											고급
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
								</div>
							</div>
						<!-- /등급 카테고리 -->
						<!-- 근무형태 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">근무형태	
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											비상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											반상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											상관없음
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
								</div>
							</div>
						<!-- /근무형태 카테고리 -->
						<!-- 지역 카테고리 -->
								<div class="card-header border-top">
								<h3 class="card-title">지역</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
																				<div class="d-flex"> 
											<select name="all_area" id="all_area" class="form-control select-sm w-100">
												<option>전체</option>
												<option value="100">서울</option>
												<option value="200">경기</option>
												<option value="300">부산</option>
												<option value="400">대구</option>
												<option value="500">인천</option>
												<option value="600">광주</option>
												<option value="700">대전</option>
												<option value="800">울산</option>
												<option value="900">세종</option>
												<option value="1000">강원</option>				
												<option value="1100">충북</option>
												<option value="1200">충남</option>
												<option value="1300">전북</option>
												<option value="1400">전남</option>
												<option value="1500">경북</option>
												<option value="1600">경남</option>
												<option value="1700">제주</option>
												<option value="1800">기타</option>
											</select>
										</div>
										<br/>
							
											<select name="subCategory" id="subCategory" class="form-control select-sm w-100">
												<option>전체</option>
												<option value="101">강남구</option>
												<option value="102">강동구</option>
												<option value="103">강북구</option>
												<option value="104">강서구</option>
												<option value="105">관악구</option>
												<option value="106">광진구</option>
												<option value="107">구로구</option>
												<option value="108">금천구</option>
												<option value="109">노원구</option>
												<option value="110">도봉구</option>				
												<option value="111">동대문구</option>
												<option value="112">동작구</option>
												<option value="113">마포구</option>
												<option value="114">서대문구</option>
												<option value="115">서초구</option>
												<option value="116">성동구</option>
												<option value="117">성북구</option>
												<option value="118">송파구</option>
												<option value="119">양천구</option>
												<option value="120">영등포구</option>
												<option value="121">용산구</option>
												<option value="122">은평구</option>
												<option value="123">종로구</option>
												<option value="124">중구</option>		
												<option value="125">중랑구</option>																																		
										</select>	
						
	
								</div>
							</div>
						<!-- /지역 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">관련기술</h3>
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
												<a href="#" class="text-dark">Angular<span class="label label-secondary float-right">45</span></a>
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
												<a href="#" class="text-dark">JavaScript<span class="label label-secondary float-right">32</span></a>
											</span>
										</label>
										<label class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox7" value="option3">
											<span class="custom-control-label">
												<a href="#" class="text-dark">MySQL<span class="label label-secondary float-right">23</span></a>
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
						<!-- /관련기술 카테고리 -->	
				<!--  	<div class="card-header border-top">
								<h3 class="card-title">Price Range</h3>
							</div>
							<div class="card-body">
								<h6>
								   <label for="price">Price Range:</label>
								   <input type="text" id="price">
								</h6>
								<div id="mySlider"></div>
							</div> 	-->		
							
				<!-- 	<div class="card-header border-top">
								<h3 class="card-title">Posted By</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											Individually
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Authors
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-0">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											Publications
										</span>
									</label>
								</div>
							</div> -->
							<div class="card-footer">
								<a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
							</div>
						</div>
						<div class="card mb-lg-0">
					<!--  	<div class="card-header">
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
							</div> -->
						</div>
					</div>
					<!--Left Side Content-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<!--Add lists-->
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex" style="width:100%; margin-right:-70px;" >
								<!--  <h6 class="mb-0 mt-2">Showing 1 to 10 of 30 entries</h6> -->		
										<ul class="nav item2-gl-menu ml-auto">
											<li class=""><a href="#tab-11" class="" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
											<li><a href="#tab-12" data-toggle="tab" class="active show" title="Grid"><i class="fa fa-th"></i></a></li>
										</ul>
										<div class="d-flex" style="margin-right:-50px;"> 
								<!--  		<label class="mr-2 mt-1 mb-sm-1">Sort By:</label>  -->	
											<select name="item" class="form-control select-sm w-70">
												<option value="1">Latest</option>
												<option value="2">Oldest</option>
												<option value="3">Price:Low-to-High</option>
												<option value="5">Price:Hight-to-Low</option>
											</select>
										</div>
										
									</div>
									<!--  <div><a href="project_write" class="btn btn-primary" style="margin-top:-85px; margin-left:15px;">글쓰기</a></div>
									-->
									<div class="tab-content">
										<div class="tab-pane active" id="tab-11">
									
									<c:if test="${empty list}">
										등록된 프로젝트가 없습니다
									</c:if>
									<c:if test="${not empty list}">
									<c:forEach var="dto" items="${list}">	
											<div class="card overflow-hidden">
												<div class="d-md-flex">
													<div>
										<!--  			<div class="arrow-ribbon bg-primary">New</div>-->	
														<div class="item-card9-imgs">
															<a href="books.html"></a>
											<!--				<img src alt="img" class="cover-image h-100">-->	
														</div>
														
													</div>
													<input type="hidden" value="${dto.pj_num}" class="pj_nums"/>
													<input type="hidden" value="${free.free_code}" class="free_codes"/>
													<div class="card border-0 mb-0">
														<div class="card-body" style="padding:30px;">
														<c:if test="${empty free}">
															<div class="item-card9-icons">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" id="wish" onclick="javascript:onlyFree()">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==0}">
															<div class="item-card9-icons">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" id="wish" onclick="javascript:profilePlease()">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==1}">
														<c:choose>
															<c:when test ="${empty pjplist}">
																<div class="item-card9-icons">
																	<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" id="wish" onclick="javascript:wish()">
																	 <i class="fa fa fa-heart-o" style=""></i></a>
																</div>
															</c:when>
															<c:otherwise>
																<c:forEach var = "pjp" items="${pjplist}">
																	<c:if test="${pjp.pj_num != dto.pj_num}">
																		<div class="item-card9-icons">
																			<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" id="wish" onclick="javascript:wish()">
																			 <i class="fa fa fa-heart-o" style=""></i></a>
																		</div>
																	</c:if>
																	<c:if test = "${pjp.pj_num==dto.pj_num}">
																		<div class="item-card9-icons"  style="" >
																			<a href="javasript:void(0)" class="item-card9-icons " style="margin-right:40%; background-color:#e8564a" id="wish" onclick="javascript:del_wish()">
																			 <i class="fa fa fa-heart" style="color:white"></i></a>
																		</div>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
														</c:if>
														<script>
														function onlyFree(){
															alert("프리랜서만 이용가능한 서비스 입니다.")
														}
														
														function profilePlease(){
															alert("프로필을 등록하셔야 이용할 수 있습니다.")
														}
														function wish(){	
															$.ajax({
																type:"get",  
																url:"<c:url value='project_wish'/>",
												    			data:"pj_num="+$(".pj_nums").val()+"&free_code="+$(".free_codes").val(),
																success: function(data){
																	alert("성공");
																},
															error: function(data){
																alert("에러발생");
															}
															});
														}
														
														</script>
															<div class="item-card9">
															<c:set var = "loc" value="${fn:split(dto.pj_loc,' ')}"/>
															<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															${pj_loc}
															</c:if>
															</c:forEach>
																/
																<c:forEach var="key" items="${keyname}">
																	<c:if test="${key.pj_num eq dto.pj_num}">
																		<c:choose>
																			<c:when test="${key.keyword eq '[]'}">
																				키워드 없음
																			</c:when>
																			<c:otherwise>
																				<c:choose>
																				<c:when test="${key.keyword.size()>2}">
																					<c:forEach var="i" begin="0" end="2">
																						<span class="tag tag-gray">${key.keyword.get(i).key_name}</span>
																					</c:forEach>
																				</c:when>
																				<c:otherwise>
																					<c:forEach var="i" begin="0" end="${key.keyword.size()-1}">
																						<span class="tag tag-gray">${key.keyword.get(i).key_name}</span>
																					</c:forEach>
																				</c:otherwise>
																				</c:choose>
																			</c:otherwise>
																		</c:choose>
																	</c:if>
																</c:forEach>
																/ ${dto.corporation.cor_name}<br/><br/>
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h3 class="font-weight-bold">${dto.pj_sub}</h3></a>
																<div style="width:85%">
																<span id = "content" style="width:10px">
														          <c:choose>
														           <c:when test="${fn:length(dto.pj_cont) > 101}">
														            <c:out value='${fn:substring(dto.pj_cont.replaceAll("\\\<.*?\\\>",""),0, 100)}' escapeXml='false'/>....
														           </c:when>
														           <c:otherwise>
														            <c:out value='${dto.pj_cont.replaceAll("\\\<.*?\\\>","")}' escapeXml="false"/>
														           </c:otherwise> 
														          </c:choose>
																</span>
																</div><br/>
																<p class="mb-0 leading-tight mt-1">급여 :<fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost" style="padding-left: 10px">
														<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1.5em;"><strong>
															<fmt:parseDate value="${dto.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
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
															</c:choose>
															</strong></span>
														&nbsp;&nbsp;&nbsp;
														<span> (${dto.pj_ddate})</span>
																</div>
													
															</div>
														</div>
													</div>
													
												</div>
											</div>

											</c:forEach>
										</c:if>
										</div>
										<div class="tab-pane" id="tab-12">
											<div class="row">
											<c:forEach var="dto" items="${list}">	
												<div class="col-lg-6 col-md-12 col-xl-6">
													<div class="card overflow-hidden">
														<div >
											<!--  			<div class="arrow-ribbon bg-primary">New</div> -->	
															<div class="item-card9-imgs">
																<a href="books.html"></a>
												<!-- 				<img src="../images/products/books/11.png" alt="img" class="cover-image h-100">  -->	
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body ">
															<div class="item-card9">
																${dto.pj_loc} / 사용언어 /${dto.corporation.cor_name}<br/><br/>
																<a href="content.do" class="text-dark"><h4 class="font-weight-bold mt-1 mb-1">${dto.pj_sub}</h4></a>
																<small class="">${dto.pj_cont}</small><br/><br/>
																<p class="mb-0 leading-tight mt-1">급여 : ${dto.pj_pay}</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost">
																<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1.5em;"><strong>D - 10</strong></span>
																&nbsp;&nbsp;&nbsp;
																<span> (${dto.pj_ddate})</span>
													<!--  					<h4 class="text-dark font-weight-semibold mb-0 mt-0">$263.99</h4>-->	
																</div>
														<!-- 		<div class="ml-auto">
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
																</div> -->
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
							</div>
						</div>
						<!--Add lists-->
					</div>
				</div>
			</div>
		</section>
		<!--Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->