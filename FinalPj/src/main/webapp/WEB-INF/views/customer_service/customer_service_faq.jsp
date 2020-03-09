<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
									<h1 class="" style="margin-bottom:0rem;">FAQ</h1>
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
					<h4 class="page-title">FAQ</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">FAQ</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">											
					<div class="col-md-9 mx-auto">
					
					<!-- 상단 탭 -->
					<div class="panel panel-primary">
						<div>
							<div class="user-tabs mb-4">
								<!-- Tabs -->
								<ul class="nav panel-tabs">
									<li class=""><a href="#tab1" class="active" data-toggle="tab">프로젝트&nbsp;(${faq_cate_count_project})</a></li>
									<li><a href="#tab2" data-toggle="tab">프리마켓&nbsp;(${faq_cate_count_freemarket})</a></li>
									<li><a href="#tab3" data-toggle="tab">프리랜서&nbsp;(${faq_cate_count_freelancer})</a></li>
									<li><a href="#tab4" data-toggle="tab">가입/탈퇴&nbsp;(${faq_cate_count_sign})</a></li>
									<li><a href="#tab5" data-toggle="tab">회원정보&nbsp;(${faq_cate_count_meminfo})</a></li>
									<li><a href="#tab6" data-toggle="tab">결제/환불&nbsp;(${faq_cate_count_payment})</a></li>
									<li><a href="#tab7" data-toggle="tab">할인&nbsp;(${faq_cate_count_discount})</a></li>
									<li><a href="#tab8" data-toggle="tab">기타&nbsp;(${faq_cate_count_etc})</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 상단 탭 -->					
					
					<div class="tab-content">
						
						<!-- 프로젝트 -->
						<div class="tab-pane active " id="tab1">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 프로젝트</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_project==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='프로젝트'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
					
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																	
																	<!--
																	<input type="button" class="btn btn-danger btn-xs" value="삭제" onclick="location.href='customer_service_faq_delete?faq_num=${faq_list.faq_num}';" data-toggle="modal" data-target="#smallModal">																																																															
																	<input type="button" class="btn btn-danger btn-xs" value="삭제" onclick="location.href='customer_service_faq_delete?faq_num=${faq_list.faq_num}';">
																	-->
																	<!--
																	<input type="button" class="btn btn-danger btn-xs" value="삭제" data-toggle="modal" data-target="#deleteFaq" data-faq_num='${faq_list.faq_num}'>
																	<button id="deleteFaq" class="btn btn-danger btn-xs" value="${faq_list.faq_num}" data-toggle="modal" data-target="#deleteFaqModal">삭제</button>
																	<button data-toggle="modal" data-target="#deleteFaq" data-faq_num="${faq_list.faq_num}" class="btn btn-danger btn-xs">삭제</button>
																	-->	
																	<!--																												
																	<input type="button" class="btn btn-danger btn-xs" value="삭제" onclick="location.href='customer_service_faq_delete?faq_num=${faq_list.faq_num}';">
																	-->
																	
																	<button class='btn btn-danger btn-xs' onclick="deleteFaq(${faq_list.faq_num})">삭제</button>
																	<!--
																	<a href="javascript:void(0)" class="btn btn-danger btn-xs" onclick="deleteFaq(${faq_list.faq_num})">삭제</a>
																	-->															
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 프로젝트 -->
						
						<!-- 프리마켓-->
						<div class="tab-pane " id="tab2">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 프리마켓</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_freemarket==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='프리마켓'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 프리마켓 -->
						
						
						<!-- 프리랜서 -->
						<div class="tab-pane " id="tab3">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 프리랜서</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_freelancer==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='프리랜서'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 프리랜서 -->
						
						
						<!-- 가입/탈퇴  -->
						<div class="tab-pane " id="tab4">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 가입/탈퇴</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_sign==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='가입/탈퇴'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 가입/탈퇴  -->
						
						
						<!-- 회원정보  -->
						<div class="tab-pane " id="tab5">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 회원정보</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_meminfo==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='회원정보'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 회원정보  -->
						
						
						<!-- 결제/환불 -->
						<div class="tab-pane " id="tab6">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 결제/환불</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_payment==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='결제/환불'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 결제/환불 -->
						
						
						<!-- 할인  -->
						<div class="tab-pane " id="tab7">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 할인</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_discount==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='할인'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 할인  -->
						
						
						<!-- 기타  -->
						<div class="tab-pane " id="tab8">										
							<div class="card mb-lg-0">
								<div class="card-header">
									<h3 class="card-title">FAQ - 기타</h3>
								</div>
								
								<div class="card-body">		
									<div class="panel-group1" id="accordion2">
									
										<c:if test="${faq_cate_count_etc==0}">
											<div class="panel panel-default mb-4">
												<div class="panel-heading1 ">
													<h4 class="panel-title1">
														<a class="accordion-toggle collapsed border">데이터가 없습니다.</a>
													</h4>
												</div>
											</div>		
										</c:if>
										
										<c:forEach items="${faq_list}" var="faq_list">
											<c:if test="${faq_list.faq_cate=='기타'}">
												<div class="panel panel-default mb-4">
													<div class="panel-heading1 ">
														<h4 class="panel-title1">
															<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href='#collapse${faq_list.faq_num}' aria-expanded="false">${faq_list.faq_sub}&nbsp;&nbsp;
																<c:if test="${sessionScope.class_num == 1}">
																	<input type="button" class="btn btn-primary btn-xs" value="수정" onclick="location.href='customer_service_faq_modify?faq_num=${faq_list.faq_num}';">
																</c:if>
															</a>
														</h4>
													</div>
													<!--
													<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
													-->
													<div id="collapse${faq_list.faq_num}" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
														<div class="panel-body border-top-0 text-justify">
															<p>${faq_list.faq_cont}</p>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>										
									</div>									
								</div>
								<c:if test="${sessionScope.class_num == 1}">
									<div class="card-footer text-right">
										<!--			
										<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
										-->
										<a href="customer_service_faq_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>																			
									</div>
								</c:if>
							</div>						
						</div>
						<!-- 기타  -->
										
						
						
					</div>
						
				</div>				
			</div>
		</div>
	</section>
	<!--/Add listing-->
	
	<!-- small Modal -->

	<div id="deleteModal" class="modal fade">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">				
					<div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>글을 정말 삭제할까요?</p>
				</div>
				<div class="modal-footer">				
					<a class="btn btn-primary" href="#" id="deleteYes">네</a> 
					<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
				</div>
			</div>
		</div>		
	</div>	

	<!-- /small Modal -->

	<script>
	function deleteFaq(faq_num){
	   $("#deleteYes").attr("href","customer_service_faq_delete?faq_num="+faq_num);
	   $("#deleteModal").modal("show");
	}
	</script>
}
	

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->