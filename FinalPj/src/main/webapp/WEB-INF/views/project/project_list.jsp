
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
						<li class="breadcrumb-item"><a href="..">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Project</a></li>
						<li class="breadcrumb-item active" aria-current="page">Project List</li>
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
						<form id="no_submit">
						<!-- 구분 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">직종</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="1">
										<span class="custom-control-label">
											개발
											<span class="label label-secondary float-right">${countDevelop}</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="2">
										<span class="custom-control-label">
											퍼블리싱
											<span class="label label-secondary float-right">${countPublishing}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="3">
										<span class="custom-control-label">
											디자인
											<span class="label label-secondary float-right">${countDesign}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="4">
										<span class="custom-control-label">
											기획
											<span class="label label-secondary float-right">${countPlan}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="5">
										<span class="custom-control-label">
											기타
											<span class="label label-secondary float-right">${countEtc}</span>
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
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="1">
										<span class="custom-control-label">
											초급
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="2">
										<span class="custom-control-label">
											중급
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="3">
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
										<input type="checkbox" class="custom-control-input" name="pj_place" value="0">
										<span class="custom-control-label">
											비상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="1">
										<span class="custom-control-label">
											상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="2">
										<span class="custom-control-label">
											반상주
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="3">
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
							
							<div class="card-footer">
								<a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
							</div>
						</form>	
						</div>
					</div>
					<!--Left Side Content-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<!--Add lists-->
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex" style="width:100%;" align="right" >
									  <h6 class="mb-0 mt-2">Showing &nbsp;${pa.nowPage}&nbsp; to &nbsp;${pa.cntPerPage}&nbsp; of &nbsp;${pa.total}&nbsp; entries</h6> 	
										<ul class="nav item2-gl-menu ml-auto"></ul>
										<div class="d-flex"> 
								<!--  		<label class="mr-2 mt-1 mb-sm-1">Sort By:</label>  -->	
										<c:if test="${empty selectKeyword}">
											<select name="item" class="form-control select-sm"  style="width:160px;" id="selectbox_cate" onchange="sortSelectbox(this.value)">
												<option id ="pj_rdate" value="pj_rdate" selected>최신순</option>
												<option id ="pj_recnum" value="pj_recnum">모집인원순</option>
												<option id ="pj_pay" value="pj_pay">규모순</option>
												<option id ="pj_vcnt"  value="pj_vcnt">조회높은순</option>
											</select>
										</c:if>
										<c:if test="${!empty selectKeyword}">
											<select name="item" class="form-control select-sm"  style="width:160px;" id="selectbox_cate" onchange="sortSelectbox(this.value)">
												<option id ="pj_rdate" value="pj_rdate"<c:if test="${selectKeyword eq 'pj_rdate'}"> selected</c:if>>최신순</option>
												<option id ="pj_recnum" value="pj_recnum"<c:if test="${selectKeyword eq 'pj_recnum'}"> selected</c:if>>모집인원순</option>
												<option id ="pj_pay" value="pj_pay"<c:if test="${selectKeyword eq 'pj_pay'}"> selected</c:if>>규모순</option>
												<option id ="pj_vcnt"  value="pj_vcnt"<c:if test="${selectKeyword eq 'pj_vcnt'}"> selected</c:if>>조회높은순</option>
											</select>
										</c:if>
										</div>
										
									</div>
									<script>
									
									$("form#no_submit input:checkbox[name='type']").on("click",function(){
										var type = new Array();
										var type_cnt = 0;
										 $('input:checkbox[name="type"]').each(function() {
												if(this.checked){
													type[type_cnt] = this.value;
													type_cnt++;
												}
										});
										 sortAjax(type);
									});
									
									function sortAjax(value){
									var objParam={
											"typeList" : value
									};
										 $.ajax({
											 type:"get",
											 url:"<c:url value='project_list' />",
											 data:objParam,
											 dataType: "json",
											 success:function(data){
												 var list = data.countDevelop;
												 alert(list);
												 console.log(list);
											 },
											 error:function(data){
												 alert("에러발생");
											 }
										 });
									}	
									
									function sortSelectbox(value){
										var selectkey= value; 
										//alert(selectkey);
										var flag= ${!empty sessionScope.email};
										if(flag==true){
											var email="${sessionScope.email}";
											$.ajax({
												type:"get",
												url:"<c:url value='project_list_sort' />",
												data:"selectKeyword="+selectkey+"&mem_email="+email,
												success: function(data){
													location.href="project_list?"+data;
												},
												error: function(data){
												alert("에러발생");
												}
											});
										}else{
											$.ajax({
												type:"get",
												url:"<c:url value='project_list_sort' />",
												data:"selectKeyword="+selectkey,
												success: function(data){
													location.href="project_list?selectKeyword="+data;
												},
												error: function(data){
												alert("에러발생");
												}
											});
										}
									}
									</script>
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
													<input type="hidden" value="${free.free_code}" class="free_codes"/>
													<div class="card border-0 mb-0">
														<div class="card-body" style="padding:30px;">
														<c:if test="${empty free}">
															<div class="item-card9-icons zzim">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:onlyFree()">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==0}">
															<div class="item-card9-icons zzim">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:profilePlease()">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==1}">
														<c:choose>
															<c:when test="${pjnumList.contains(dto.pj_num)}">
																<div class="item-card9-icons"  id="zzim${dto.pj_num}" >
																	<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;" onclick="javascript:del_wish(${dto.pj_num})">
																	 <i class="fa fa fa-heart" style="color:white"></i></a>
																</div>
															</c:when>
															<c:otherwise>
																<div class="item-card9-icons">
																	<a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish${dto.pj_num}"style="margin-right:40%" onclick="javascript:wish(${dto.pj_num})">
																	 <i class="fa fa fa-heart-o" style=""></i></a>
																</div>
															</c:otherwise>	
														</c:choose>
														<div class="item-card9-icons"  id="zzim${dto.pj_num}">
														
														</div>
														</c:if>
														<script>
														
														function onlyFree(){
															alert("프리랜서 회원만 이용가능한 서비스 입니다.")
														}
														
														function profilePlease(){
															alert("프로필을 등록하셔야 이용할 수 있습니다.")
														}
														function wish(pj_num){	
															$.ajax({
																type:"get",  
																url:"<c:url value='project_wish'/>",
												    			data:"pj_num="+pj_num+"&free_code="+$(".free_codes").val(),
																success: function(data){
																	$('#insertwish'+pj_num).remove();
																	$('#zzim'+pj_num).append("<a href='javasript:void(0)' class='item-card9-icons' id='delwish"+pj_num+"' style='margin-right:40%; background-color:#e8564a' onclick='javascript:del_wish("+pj_num+")'><i class='fa fa fa-heart' style='color:white'></i></a>");
																	alert("프로젝트가 찜목록에 추가되었습니다.")
																},
																error: function(data){
																alert("에러발생");
																}
															});
														}
														function del_wish(pj_num){
															$.ajax({
																type:"get",
																url:"<c:url value='project_wish_del'/>",
																data: "pj_num="+pj_num+"&free_code="+$(".free_codes").val(),
																success:function(data){
																	$('#delwish'+pj_num).remove();
																	$('#zzim'+pj_num).append("<a href='javasript:void(0)' class='item-card9-icons wishlist' id='insertwish"+pj_num+"' style='margin-right:40%' onclick='javascript:wish("+pj_num+")'><i class='fa fa fa-heart-o'></i></a>");
																}
															})
														}
														</script>
															<div class="item-card9">
															<i class="fa fa-map-marker"></i>
															<c:set var = "loc" value="${fn:split(dto.pj_loc,' ')}"/>
															<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach>
															<span style="margin-left:10px; margin-right:10px">
																 <i class="fa fa-user" ></i>
																<c:if test="${dto.type_num==1}">
																개발
																</c:if>
																<c:if test="${dto.type_num==2}">
																퍼블리싱
																</c:if>
																<c:if test="${dto.type_num==3}">
																디자인
																</c:if>
																<c:if test="${dto.type_num==4}">
																기획
																</c:if>
																<c:if test="${dto.type_num==5}">
																기타
																</c:if>
																|<c:if test="${dto.pj_fgrade == 1}" >
																초급
																</c:if>
																<c:if test="${dto.pj_fgrade == 2}" >
																중급
																</c:if>
																<c:if test="${dto.pj_fgrade == 3}" >
																고급
																</c:if>
																</span>
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
																</c:forEach><br/><br/>
																<c:if test="${!empty sessionScope.email }">
																<a href="project_content?pj_num=${dto.pj_num}&mem_email=${sessionScope.email}" class="text-dark"><h3 class="font-weight-bold">${dto.pj_sub}</h3></a>
																</c:if>
																<c:if test="${empty sessionScope.email }">
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h3 class="font-weight-bold">${dto.pj_sub}</h3></a>
																</c:if>
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
															
																<c:if test="${dto.pj_status==0 && endDate > currentDate}">
																	D -${endDate - currentDate}
																</c:if>
																<c:if test="${dto.pj_status==1 || endDate <= currentDate}">
																	마감
																</c:if>
															
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
									</div>
								</div>
								<c:choose>
								<c:when test="${!empty sessionScope.email}">
								<c:if test="${!empty selectKeyword}">
								<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link mem_prev" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}&selectKeyword=${selectKeyword}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link mem_no_nowPage" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}&selectKeyword=${selectKeyword}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link mem_next" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}&selectKeyword=${selectKeyword}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
								</c:if>
								<c:if test="${empty selectKeyword}">
								<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link mem_prev" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link mem_no_nowPage" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link mem_next" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}&mem_email=${sessionScope.email}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
								</c:if>
								</c:when>
								<c:otherwise>
								<c:choose>
								<c:when test="${!empty selectKeyword}">
									<div class="center-block text-center">
										<ul class="pagination mb-0">
										<c:if test="${pa.nowPage != 1}">
															<!--이전 페이지 이동 -->
											<li class="page-item page-prev">
												<a class="page-link noMem_prev" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}&selectKeyword=${selectKeyword}">prev</a>
											</li>
										</c:if>
										<!--페이지번호 -->
										<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
											<c:choose>
												<c:when test="${p == pa.nowPage}">
													<li class='page-item active'><a class="page-link">${p}</a></li>
												</c:when>
												<c:when test = "${p != pa.nowPage }">
													<li class="page-item"><a class="page-link noMem_no_nowPage" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}&selectKeyword=${selectKeyword}">${p}</a></li>
												</c:when>
											</c:choose>
											</c:forEach>
											<c:if test ="${pa.nowPage != pa.lastPage}">
												<li class="page-item page-next">
													<a class="page-link noMem_next" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}&selectKeyword=${selectKeyword}">Next</a>
												</li>
											</c:if>
											<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
										</ul>
									</div>
								</c:when>
								<c:otherwise>
									<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link noMem_prev" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link noMem_no_nowPage" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link noMem_next" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
								</c:otherwise>
								</c:choose>
								</c:otherwise>
								</c:choose>
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