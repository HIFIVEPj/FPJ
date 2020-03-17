<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Favorite Ads</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Favorite Ads</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
					<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
								<c:if test="${free.free_fname eq null}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${free.free_fname ne null}">
									<div class="profile-pic-img">
										<img src="../hifiveImages/free_thumb/${free.free_fname}" class="brround" alt="user">
									</div>
								</c:if>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash_free?mem_email=${sessionScope.email}">프리랜서</a></li>
												<li><a class="slide-item" href="freelancerProfile_list?mem_email=${sessionScope.email}">프리랜서 프로필</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavoriteMarket">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="managed-market.html">마켓관리</a></li>
												<li><a class="slide-item" href="managed_order.html">구매관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
					
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>나의 찜한마켓</b></h3>
							</div>
							<div class="card-body">
							
								<div class="tab-content">
								
								
								
								<!-- 탭1 -->
									<c:if test="${fn:length(mPickList)>0 }">
								
											<table class="table table-bordered table-hover mb-0 text-nowrap">
												<thead style="text-align:center;">
													<tr>
														<th></th>
														<th colspan="2"><b>제목</b></th>
														<th><b>가격</b></th>
														<th><b>상태</b></th>
														<th><b>버튼</b></th>
													</tr>
												</thead>
												
												
											<c:forEach items="${mPickList }" var="pickList">	
												<tbody>
													<tr>
														<td>
															<label class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
																<span class="custom-control-label"></span>
															</label>
														</td>
														<td colspan="2">
															<div class="media mt-0 mb-0">
																<div class="card-aside-img">
																	<a href="market-content?market_num=${pickList.market_num }"></a>
																	<img src="../hifiveImages/marketThumbnails/${pickList.market.market_fname}" alt="img">
																</div>
																<div class="media-body">
																	<div class="card-item-desc ml-4 p-0 mt-2">
																		<a href="market-content?market_num=${pickList.market_num }" class="text-dark"><h4 class=""><b>${pickList.market.market_sub }</b></h4></a>
															<!-- 		<span class="font-12">고 퀄리티 반응형 홈페이지 제작 가능합니다. </span><br>-->
																 	<div style="padding-top:5px;">
																	<span class="rated-products-ratings">
																					
																				<c:if test="${pickList.marketRev.marketRev_star >= 0}" ><!-- 마켓리뷰점수가 -->
																					<c:forEach var="1" begin="1" end="${pickList.marketRev.marketRev_star}">
																						<i class="fa fa-star text-warning"> </i>
																					</c:forEach>
																					<c:forEach var="1" begin="1" end="${5-pickList.marketRev.marketRev_star}">
																						<i class="fa fa-star-o text-warning"> </i>
																					</c:forEach>	
																				</c:if>
																				
																			</span>|
																			<i class="fa fa-eye"   data-toggle="tooltip" title="조회수"></i> ${pickList.market.market_vcnt}	
																			 <i class="fa fa-gratipay"  data-toggle="tooltip" title="찜수"></i> ${pickList.market.market_pcnt}
																			 <i class="fa fa-comment-o" data-toggle="tooltip" title="리뷰"></i> ${pickList.marketRev.marketRev_num }
																		</div> 
																	</div>
																</div>
															</div>			
														</td>
														
														<td class="font-weight-semibold fs-16">
															<fmt:formatNumber value="${pickList.market.market_price}" pattern="#,###,###,###" /><span class="fs-16">원</span>
														</td> 
														
														
														
														<c:if test="${pickList.market.market_state==1}">
															<td>
																<a href="#" class="badge badge-warning">판매중</a>
															</td>
														</c:if>
														<td>
															<a href="deleteMarketPick?marketP_num=${pickList.marketP_num}" class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
															<a href="javascript:void(0);" onclick="paymentFormSubmit()" class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="구매하기"><i class="fa fa-shopping-cart"></i></a>
		
														<form id="paymentsForm" action="market-payments" method="post">
															<input type="hidden" value="${pickList.market.market_sub}" name="marketPaym_pdName">
															<input type="hidden" value="${pickList.market.market_num}" name="market_num">
															<input type="hidden" value="${sessionScope.email}" name="mem_email">
															<input type="hidden" value="${pickList.market.market_price}" name="marketPaym_price">
															<c:choose>
																<c:when test="${pickList.market.market_price<=500000}">
																	<input type="hidden" value=20 name="marketPaym_feeRate">
																</c:when>
																<c:when test="${pickList.market.market_price<=2000000}">
																	<input type="hidden" value=12 name="marketPaym_feeRate">
																</c:when>
																<c:otherwise>
																	<input type="hidden" value=6 name="marketPaym_feeRate">
																</c:otherwise>
															</c:choose>
														</form>
																		
														<script>
															function paymentFormSubmit(){
																//document.paymentsForm.submit(); 
																document.getElementById("paymentsForm").submit();
															}
														</script>
																		
														</td>
													</tr>
												</tbody>
											</c:forEach>	
											</table>
											</c:if>
											<c:if test="${fn:length(mPickList)==0 }">
												<div class="card">
													<div class="card-body" style="margin:0 auto; align:center;">
														찜한 마켓이 없습니다.
													</div>
												</div>
											</c:if>
										 <!-- 페이징 -->
										 <c:if test="${fn:length(mPickList)>0 }">
											<div class="card">
												<div class="card-body" style="margin:0 auto; align:center;">
													<ul class="pagination mg-b-0 page-0 ">
														<c:if test="${paging.nowPage !=1}">
															<li class="page-item">
																<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
															</li>
															<li class="page-item">
																<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
															</li>
														</c:if>
													
														<c:forEach var="p" begin="${paging.startPage}" end="${paging.endPage}">
															<c:choose>
																<c:when test="${paging.nowPage == p }">
																	<li class="page-item active">
																		<a class="page-link" href="#">${p}</a>
																	</li>
																</c:when>	
																<c:otherwise>
																	<li class="page-item">
																		<a class="page-link hidden-xs-down" href="myfavoriteMarket?nowPageP=${p}&cntPerPageP=${paging.cntPerPage}">${p}</a>
																	</li>
																</c:otherwise>
															</c:choose>
														</c:forEach>
														<c:if test="${ paging.nowPage!=paging.lastPage }">
															<li class="page-item">
																<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
															</li>
															<li class="page-item">
																<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
															</li>
														</c:if>
													</ul>
												</div>
											</div>
											</c:if>
									<!-- 페이징 -->	
										</div>
								<!-- 탭1 -->	
							<!-- section-wrapper -->
						</div>
					</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
