<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">문의하기</h1>
									<!--
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="page">문의하기</li>
									</ol>
									-->
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
					<h4 class="page-title">문의하기</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
				
					<div class="col-xl-2 col-lg-3 col-md-12">
						
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">문의하기 분류</h3>
							</div>
							<div class="card-body p-0">
								<div class="list-catergory">
									<div class="item-list">
										<ul class="list-group mb-0">
											<li class="list-group-item">
												<a href="#" class="">
													전체
													<span class="badgetext badge badge-pill mb-0" style="background-color:#e8564a; color:#fff;">100</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프로젝트
													<span class="badgetext badge badge-pill mb-0" style="background-color:#e8564a; color:#fff;">20</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리마켓
													<span class="badgetext badge badge-pill mb-0" style="background-color:#1f719a; color:#fff;">20</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리랜서
													<span class="badgetext badge badge-pill mb-0" style="background-color:#1f719a; color:#fff;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													가입/탈퇴
													<span class="badgetext badge badge-pill mb-0" style="background-color:#7fa5b8; color:#fff;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													회원정보
													<span class="badgetext badge badge-pill mb-0" style="background-color:#7fa5b8; color:#fff;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													결제/환불
													<span class="badgetext badge badge-pill badge-secondary mb-0">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													할인
													<span class="badgetext badge badge-pill badge-secondary mb-0">10</span>
												</a>
											</li>
											<li class="list-group-item border-bottom-0">
												<a href="#" class="">
													기타
													<span class="badgetext badge badge-pill badge-secondary mb-0">10</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>						
						</div>					
					</div>
				
				
				
					<div class="col-xl-10 col-lg-9 col-md-12">
				
				<!-- 문의하기  연습-->
					<div class="card mb-0">
							<div class="card-header">	
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
										</div><input class="form-control fc-datepicker" placeholder="YYYY/MM/DD" type="text">
									</div>
								</div>
								<h1 class="card-title">&nbsp;<b>~</b>&nbsp;</h1>
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
										</div><input class="form-control fc-datepicker" placeholder="YYYY/MM/DD" type="text">
									</div>
								</div>
								&nbsp;&nbsp;
								<div class="wd-20 mg-b-10">
									<div class="input-group">
									<label class="form-label" style="margin-bottom:-0.05rem;">
									<select class="form-control select2">
										<!--
										<optgroup label="Mountain Time Zone">
										-->
											<option value="전체" selected>전체</option>
											<option value="분류">분류</option>
											<option value="제목">제목</option>
											<option value="내용">내용</option>
											<option value="제목+내용">제목+내용</option>
											<option value="글쓴이">글쓴이</option>
										<!--
										</optgroup>
										-->
									</select>
										<span>에서 검색&nbsp;:&nbsp;</span>
									</label>
									</div>
								</div>
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<input type="text" class="form-control" id="search-text" placeholder="검색어 입력">
									</div>
								</div>
							</div>
							<div class="card-body">
							
							<div class="panel panel-primary">
								<div class="tab_wrapper first_tab">
									<ul class="tab_list">
										<li class="">전체(100)</li>
										<li>프로젝트(20)</li>
										<li>프리마켓(20)</li>
										<li>프리랜서(10)</li>
										<li>가입/탈퇴(10)</li>
										<li>회원정보(10)</li>
										<li>결제/환불(10)</li>
										<li>할인(10)</li>
										<li>기타(10)</li>
									</ul>
								</div>
							</div>						
								<div class="table-responsive border-top">
									<table class="table table-bordered table-hover text-nowrap">
										<thead>
											<tr class="text-center" style="background-color:#f6f3ed;">
												<th class="font-weight-bold">번호</th>
												<th class="font-weight-bold">분류</th>
												<th class="font-weight-bold">제목</th>
												<th class="font-weight-bold">글쓴이</th>
												<th class="font-weight-bold">날짜</th>
												<th class="font-weight-bold">조회</th>
												<th class="font-weight-bold">추천</th>
											</tr>
										</thead>
										<tbody>
										<tr class="border-bottom">
											<c:if test="${empty qa_list}">
												<tr align="center">
													<td colspan="7">데이터가 없습니다.</td>
												</tr>
											</c:if>
										
											<c:forEach items="${qa_list}" var="qa_list">
												<tr class="border-bottom">
													<td class="text-center">${qa_list.qa_num}</td>
													<td class="text-center">${qa_list.qa_cate}</td>
													<td><a href='customer_service_qa_content?qa_num=${qa_list.qa_num}'>${qa_list.qa_sub}</a></td>
													<td class="text-center">${qa_list.mem_email}</td>
													<td class="text-center"><fmt:formatDate value="${qa_list.qa_rdate}" pattern="yyyy.MM.dd"/></td>
													<td class="text-center">${qa_list.qa_vcnt}</td>
													<td class="text-center">${qa_list.qa_recommnum}</td>
												</tr>
											</c:forEach>
										</tr>
										
									</tbody>
									</table>
								</div>
								<div class="row">
									<div class="col-md-4 text-left">
										<div class="row" style="padding-left: 0.75rem;">
											<label class="form-label">페이지당
											<select class="form-control select2">
												<!--
												<optgroup label="Mountain Time Zone">
												-->
													<option value="5">5</option>
													<option value="10" selected>10</option>
													<option value="20">20</option>
													<option value="50">50</option>
													<option value="100">100</option>
												<!--
												</optgroup>
												-->
											</select>
											개씩 보기
											</label>
										</div>	
									</div>
		
									
									
									<div class="col-md-4 text-center">
										<ul class="pagination mg-b-0 page-0">
											<li class="page-item disabled">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
											</li>
											<li class="page-item disabled">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
											</li>
		
											<li class="page-item active">
												<a class="page-link" href="#">1</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">2</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">3</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">4</a>
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
									
									<div class="col-md-4 text-right">
										<a href="customer_service_qa_test" class="btn btn-primary"><i class="fa fa-user-circle"></i>&nbsp;내 문의 보기</a>
										<a href="customer_service_qa_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>
									</div>
								</div>
								
							</div>
						</div>
					<!-- /문의하기 연습-->
						<div>
						<br/>
						<br/>
						<br/>
						<br/>
						</div>
				
				
				<!-- 문의하기  연습-->
					<div class="card mb-0">
							<div class="card-header">
							
							
								
								
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
										</div><input class="form-control fc-datepicker" placeholder="MM/DD/YYYY/" type="text">
									</div>
								</div>
								<h1 class="card-title">&nbsp;<b>~</b>&nbsp;</h1>
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
											</div>
										</div><input class="form-control fc-datepicker" placeholder="MM/DD/YYYY/" type="text">
									</div>
								</div>
								&nbsp;&nbsp;
								<div class="wd-20 mg-b-10">
									<div class="input-group">
									<label class="form-label" style="margin-bottom:-0.05rem;">
									<select class="form-control select2">
										<!--
										<optgroup label="Mountain Time Zone">
										-->
											<option value="전체" selected>전체</option>
											<option value="분류">분류</option>
											<option value="제목">제목</option>
											<option value="내용">내용</option>
											<option value="제목+내용">제목+내용</option>
											<option value="글쓴이">글쓴이</option>
										<!--
										</optgroup>
										-->
									</select>
										<span>에서 검색&nbsp;:&nbsp;</span>
									</label>
									</div>
								</div>
								<div class="wd-20 mg-b-10">
									<div class="input-group">
										<input type="text" class="form-control" id="search-text" placeholder="검색어 입력">
									</div>
								</div>
							</div>
							<div class="card-body">
							
							<div class="panel panel-primary">
								<div class="tab_wrapper first_tab">
									<ul class="tab_list">
										<li class="">전체(100)</li>
										<li>프로젝트(20)</li>
										<li>프리마켓(20)</li>
										<li>프리랜서(10)</li>
										<li>가입/탈퇴(10)</li>
										<li>회원정보(10)</li>
										<li>결제/환불(10)</li>
										<li>할인(10)</li>
										<li>기타(10)</li>
									</ul>
								</div>
							</div>						
								<div class="table-responsive border-top">
									<table class="table table-bordered table-hover text-nowrap">
										<thead>
											<tr class="text-center" style="background-color:#f6f3ed;">
												<th class="font-weight-bold">번호</th>
												<th class="font-weight-bold">분류</th>
												<th class="font-weight-bold">제목</th>
												<th class="font-weight-bold">글쓴이</th>
												<th class="font-weight-bold">날짜</th>
												<th class="font-weight-bold">조회</th>
												<th class="font-weight-bold">추천</th>
											</tr>
										</thead>
										<tbody>
										<tr class="border-bottom">
											<td class="text-center">13</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다.</a>&nbsp;<span style="color:red">+5</span></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">12</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content"><i class="fa fa-lock"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">11</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content"><i class="fa fa-expeditedssl"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">14</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">&nbsp;&nbsp;<i class="fe fe-corner-down-right"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">15</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fe fe-corner-down-right"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">10</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김세영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">9</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">윤별</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">8</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">송승훈</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">7</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김소담</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">6</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">5</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">4</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">3</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">2</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">1</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
									</tbody>
									</table>
								</div>
								<!--
								<ul class="pagination">
									<li class="page-item page-prev disabled">
										<a class="page-link" href="#" tabindex="-1">Prev</a>
									</li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item page-next">
										<a class="page-link" href="#">Next</a>
									</li>
								</ul>
								-->
								
								<div class="row">
									<!--
									<div class ="col-md-4 text-left">
										<div>	
											<label>
												show
													<select >
														<option value="10">10</option>
														<option value="25">25</option>
														<option value="50">50</option>
														<option value="100">100</option>
													</select>
													entries
											</label>
										</div>
									</div>					
									-->
									<!--
									<div class="form-group">
									-->
									<div class="col-md-4 text-left">
										<div class="row" style="padding-left: 0.75rem;">
											<label class="form-label">페이지당
											<select class="form-control select2">
												<!--
												<optgroup label="Mountain Time Zone">
												-->
													<option value="5">5</option>
													<option value="10" selected>10</option>
													<option value="20">20</option>
													<option value="50">50</option>
													<option value="100">100</option>
												<!--
												</optgroup>
												-->
											</select>
											개씩 보기
											</label>
										</div>	
									</div>
		
									
									
									<div class="col-md-4 text-center">
										<ul class="pagination mg-b-0 page-0">
											<li class="page-item disabled">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
											</li>
											<li class="page-item disabled">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
											</li>
		
											<li class="page-item active">
												<a class="page-link" href="#">1</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">2</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">3</a>
											</li>
											<li class="page-item">
												<a class="page-link" href="#">4</a>
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
									
									<div class="col-md-4 text-right">
										<a href="#" class="btn btn-primary">내 문의 보기</a>
										<a href="customer_service_qa_write" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>
									</div>
								</div>
								
							</div>
						</div>
					<!-- /문의하기 연습-->		
					
					
						<div>
						<br/>
						<br/>
						<br/>
						<br/>
						</div>
						
						
						<div class="card mb-lg-0">
										
							<div class="table-responsive p-5">
							
							<div class="panel panel-primary">
								<div class="tab_wrapper first_tab">
									<ul class="tab_list">
										<li class="">전체(100)</li>
										<li>프로젝트(20)</li>
										<li>프리마켓(20)</li>
										<li>프리랜서(10)</li>
										<li>가입/탈퇴(10)</li>
										<li>회원정보(10)</li>
										<li>결제/환불(10)</li>
										<li>할인(10)</li>
										<li>기타(10)</li>
									</ul>
								</div>
							</div>
							
							
								<table id="example" class="table table-bordered ico-listing text-nowrap">
									<thead>
									<!-- #1f719a -->
										<tr class="border-bottom text-center" style="background-color: #f6f3ed;">
											<th class="font-weight-bold">번호</th>
											<th class="font-weight-bold">분류</th>
											<th class="font-weight-bold">제목</th>
											<th class="font-weight-bold">글쓴이</th>
											<th class="font-weight-bold">날짜</th>
											<th class="font-weight-bold">조회</th>
											<th class="font-weight-bold">추천</th>
										</tr>
									</thead>
									<tbody>
										<tr class="border-bottom">
											<td class="text-center">15</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">14</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content"><i class="fa fa-lock"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">13</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content"><i class="fa fa-expeditedssl"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">12</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">&nbsp;&nbsp;<i class="fe fe-corner-down-right"></i>&nbsp;&nbsp;마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">11</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">10</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김세영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">9</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">윤별</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">8</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">송승훈</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">7</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">환불 관련 문의 드립니다.</a></td>
											<td class="text-center">김소담</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">6</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">5</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">4</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">3</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">2</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
										<tr class="border-bottom">
											<td class="text-center">1</td>
											<td class="text-center">결제</td>
											<td><a href="customer_service_qa_content">마켓 서비스가 마음에 들지 않아 중도 취소하려고 합니다...</a></td>
											<td class="text-center">한나영</td>
											<td class="text-center">2020.01.27</td>
											<td class="text-center">213</td>
											<td class="text-center">3</td>
										</tr>
									</tbody>									
								</table>
								
								<br/>
									<div class="text-right">
										<a href="customer_service_qa_write" class="btn btn-danger">　글쓰기　</a>
									</div>
								
							</div>
						</div>
					
					
								
					</div>

				</div>
			</div>
		</section>
		<!--Add Listing-->
		
		
		
		
		
		
		

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->