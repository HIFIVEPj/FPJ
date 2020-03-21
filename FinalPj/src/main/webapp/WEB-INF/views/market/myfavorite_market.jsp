<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">찜한 마켓</h1>
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
		
		</section>
		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">FreeMarket</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
					</ol>
				</div>
			</div>
		</div>
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
												<li><a class="slide-item" href="myfavorite?mem_email=${sessionScope.email}">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavoriteMarket?mem_email=${sessionScope.email}">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myMarket1">나의마켓</a></li>
												<li><a class="slide-item" href="myMarket2">판매마켓</a></li>
												<li><a class="slide-item" href="myMarket3">구매마켓</a></li>
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
								<h3 class="card-title"><b>관심있는 마켓</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
										<c:choose>
											<c:when test="${selectTab == 'tab1'}">
												<li class=""><a href="#tab1" class="active" data-toggle="tab">찜 목록</a></li>
												<li><a href="#tab2" data-toggle="tab">구매한 마켓</a></li>
											</c:when>
											<c:when test="${selectTab =='tab2'}">
												<li class=""><a href="#tab1" data-toggle="tab">찜 목록</a></li>
												<li><a href="#tab2" class="active" data-toggle="tab">구매한 마켓</a></li>
											</c:when>
										</c:choose>
										</ul>
									</div>
								<div class="tab-content">
								
								
								
								<!-- 탭1 -->
									<c:if test="${fn:length(mPickList)>0 }">
									 <c:if test="${selectTab == 'tab1'}">
										<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
										</c:if>
										<c:if test="${selectTab =='tab2'}">
										<div class="tab-pane table-responsive border-top userprof-tab" id="tab1">
										</c:if>
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
																	<!--	<span class="text-warning">
																			<i class="fa fa-star"> </i>
																			<i class="fa fa-star"> </i>
																			<i class="fa fa-star"> </i>
																			<i class="fa fa-star"> </i>
																			</span>-->
																			<i class="fa fa-eye"   data-toggle="tooltip" title="조회수"></i> ${pickList.market.market_vcnt}		
																			 <i class="fa fa-gratipay"  data-toggle="tooltip" title="찜수"></i> ${pickList.market.market_pcnt}
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
															<a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="구매하기"><i class="fa fa-shopping-cart"></i></a>
							
														</td>
													</tr>
												</tbody>
											</c:forEach>	
											</table>
										 <!-- 페이징 -->
										 <c:if test="${paging.total>0}">
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
									</c:if>
									<c:if test="${fn:length(mPickList)==0 }">
										<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
										</div>
									</c:if>
								<!-- 탭1 -->	
								
								
								
								
							<!-- 탭2 -->			
							<c:if test="${fn:length(mBuyList)>0 }">
							
							<c:if test="${selectTab == 'tab1'}">
								<div class="tab-pane  table-responsive border-top userprof-tab" id="tab2">
							</c:if>
							<c:if test="${selectTab == 'tab2'}">
							<div class="tab-pane active table-responsive border-top userprof-tab" id="tab2">
							</c:if>
							
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th colspan="2"><b>제목</b></th>
												<th><b>가격</b></th>
												<th><b>상태</b></th>
												<th><b>구매일</b></th>
											</tr>
										</thead>
										
										<c:forEach var="mBuyList" items="${mBuyList}">
											<tbody>
											<tr>
												<td colspan="2">
													<div class="media mt-0 mb-0">
													 	<div class="card-aside-img">
															<a href="market-content?market_num=${mBuyList.market_num }"></a>
															<img src="../hifiveImages/marketThumbnails/${mBuyList.market.market_fname}" alt="img">
														</div>
																										
														 <div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="market-content?market_num=${mBuyList.market_num }" class="text-dark"><h4 class=""><b>${mBuyList.market.market_sub}</b></h4></a>
																
																<div style="padding-top:5px;">
																
																</div>
															</div>
														</div>
													</div>
												</td>
												
												<td class="font-weight-semibold fs-16">
													<fmt:formatNumber value="${mBuyList.market.market_price}" pattern="#,###,###,###" /><span class="fs-16">원</span>
												</td> 
												<td>
													<c:if test="${mBuyList.mbuysell_state==0 }">
														<a href="#" class="badge badge-secondary">거래중</a>
													</c:if>
													<c:if test="${mBuyList.mbuysell_state==1}">
														<a href="#" class="badge badge-secondary">거래완료</a>
													</c:if>
													<c:if test="${mBuyList.mbuysell_state==2 }">
														<a href="#" class="badge badge-secondary">거래취소</a>
													</c:if>
												</td>
												<td class="font-weight-semibold fs-16">
													${mBuyList.mbuysell_date}
												</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
									
								 <!-- 페이징 -->		
										<div class="card">
											<div class="card-body" style="margin:0 auto; align:center;">
												<ul class="pagination mg-b-0 page-0 ">
													<c:if test="${paging2.nowPage !=1}">
														<li class="page-item">
															<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
														</li>
														<li class="page-item">
															<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
														</li>
													</c:if>
												
													<c:forEach var="p" begin="${paging2.startPage}" end="${paging2.endPage}">
														<c:choose>
															<c:when test="${paging2.nowPage == p }">
																<li class="page-item active">
																	<a class="page-link" href="#">${p}</a>
																</li>
															</c:when>	
															<c:otherwise>
																<li class="page-item">
																	<a class="page-link hidden-xs-down" href="myfavoriteMarket?nowPageB=${p}&cntPerPageB=${paging2.cntPerPage}">${p}</a>
																</li>
															</c:otherwise>
														</c:choose>
													</c:forEach>
													<c:if test="${ paging2.nowPage!=paging2.lastPage }">
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
								<!-- 페이징 -->	

								</div>
							</c:if>
								<c:if test="${fn:length(mBuyList)==0 }">
									<div class="tab-pane  table-responsive border-top userprof-tab" id="tab2">
									</div>
								</c:if>
							<!-- 탭2 -->		
								

	 <!-- 페이징 -->
	 <!-- 
							<div class="card">
								<div class="card-body" style="margin:0 auto; align:center;">
									<ul class="pagination mg-b-0 page-0 ">
									<c:if test="${fn:length(mPickList)>0 }">

										<c:if test="${paging.nowPage !=1}">
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
											</li>
										</c:if>
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
														<a class="page-link hidden-xs-down" href="myfavoriteMarket?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
													</li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									<c:if test="${fn:length(mPickList)>0 }">
										<c:if test="${ paging.nowPage!=paging.lastPage }">
											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
											</li>
										</c:if>
									</c:if>	
									</ul>
								</div>
								<!-- pagination-wrapper 
							</div>
							-->
	<!-- 페이징 -->	
							<!-- section-wrapper -->
						</div>
					</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->

<script type="text/javascript">
    $(function() {
        var hijax = function(panel) {
            $('a.pagination', panel).click(function(){
                $(panel).load(this.href, {}, function() {
                    hijax(this);
                });
                return false;
            });
        };
        $("#tabs").tabs({
            ajaxOptions: {
                error: function(xhr, status, index, anchor) {
                    $(anchor.hash).html("Couldn't load this tab.");
                },
            },
            load: function(event, ui) {
                hijax(ui.panel);

            }
        });
    });
</script>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
