<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
									<div class="profile-pic-img">
										<img src="../images/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
							<!--<aside class="app-sidebar doc-sidebar my-dash">-->
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item " href="mydash_cor?mem_email=${sessionScope.email}">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite_cor">프리랜서 찜</a></li>
												<li><a class="slide-item" href="myfavorite_market">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">내 프로젝트관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="project_write?mem_email=${sessionScope.email}">프로젝트 작성하기</a></li>
												<li><a class="slide-item" href="managed_project?mem_email=${sessionScope.email}">프로젝트관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li>
											<a class="side-menu__item" href="logout.do"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>내 프로젝트 관리</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">작성한 프로젝트</a></li>
											<li class=""><a href="#tab2" data-toggle="tab">결제대기 프로젝트</a></li>
											<li><a href="#tab3" data-toggle="tab">모집중인 공고</a></li>
											<li><a href="#tab4" data-toggle="tab">마감된 공고</a></li>
										</ul>
									</div>
								<div class="tab-content">
								
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
							
								<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr >
												<th></th>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>결제상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${empty list}">
										<tr>
											<td colspan="6"  id="center">
												<b>등록된 프로젝트가 없습니다</b>
											</td>
										</tr>
										</c:if>
									<c:if test="${not empty list}">
									<c:forEach var="dto" items="${list}">	
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="${dto.pj_num}">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td>
													<div class="media mt-0 mb-0">
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h4 class="font-weight-semibold"><b>${dto.pj_sub}</b></h4></a>
																<i class="fa fa-user mr-1"></i> 
																<c:if test="${dto.type_num ==1}"><c:out value="개발" /></c:if>
																<c:if test="${dto.type_num ==2}"><c:out value="퍼블리셔" /></c:if>
																<c:if test="${dto.type_num ==3}"><c:out value="디자인" /></c:if>
																<c:if test="${dto.type_num ==4}"><c:out value="기획" /></c:if>
																<c:if test="${dto.type_num ==5}"><c:out value="기타" /></c:if>/
																<c:if test="${dto.pj_fgrade==0}"><c:out value="초급" /></c:if>
																<c:if test="${dto.pj_fgrade==1}"><c:out value="중급" /></c:if>
																<c:if test="${dto.pj_fgrade==2}"><c:out value="고급" /></c:if>
																
																&nbsp;|&nbsp;
																<i class="fa fa-clock-o mr-1"></i> ${dto.pj_term} 개월
																&nbsp;|&nbsp;
																<b style="text-align:right;">														
																<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1em;"><strong>
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
															</strong></span></b>
															</div>
														</div>
													</div>
												</td>
												<td>${cor.cor_name}</td>
												<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</td>
												<td>
													<a href="#" class="badge badge-primary">
													<c:if test="${dto.pj_paystatus==0}">
														결제대기
													</c:if>
													<c:if test="${dto.pj_paystatus==1}">
														결제완료
													</c:if>
													</a>
												</td>
												<td>
													<a href="#" class="btn btn-info btn-sm text-white" data-target="#deleteModal" data-toggle="modal" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<c:if test="${dto.pj_paystatus==0}"> 
													<a href="#" class="btn btn-red btn-sm text-white" data-toggle="tooltip" data-original-title="결제하기"><i class="fa fa-credit-card"></i></a>
													</c:if>
												</td>
											</tr>
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
							               
							                 <a class="btn btn-primary" style="color:white;" href="project_delete?pj_num=${dto.pj_num}">네</a> 
							                  
							                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
							               </div>
							            </div>
							         </div>      
							      </div>
							      <!-- /small Modal -->
											</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>

								<div class="tab-pane  table-responsive border-top userprof-tab" id="tab2">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>상태</b></th>
												<th><b>지원날짜</b></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="media mt-0 mb-0">
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="#" class="text-dark"><h4 class="font-weight-semibold"><b>웹개발자 구합니다</b></h4></a>
																<a href="#"><i class="fa fa-user mr-1"></i> 개발/초급</a>
																&nbsp;|&nbsp;
																<a href="#"><i class="fa fa-clock-o mr-1"></i> 3개월</a>
																&nbsp;|&nbsp;
																<a href="#"><b style="text-align:right;">D-25</b></a>
															</div>
														</div>
													</div>
												</td>
												<td>Restaurant</td>
												<td class="font-weight-semibold fs-16">1,200,000원</td>
												<td>
													<a href="#" class="badge badge-primary">검토중</a>
												</td>
												<td class="font-weight-semibold fs-16">2020-01-28</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="tab-pane  table-responsive border-top userprof-tab" id="tab3">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th></th>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
								<div class="tab-pane  table-responsive border-top userprof-tab" id="tab4">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th></th>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
							</div>
							</div>
							
							<div class="card">
								<div class="card-body" style="margin:0 auto; align:center;">
									<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${p}&cntPerPage=${pa.cntPerPage}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
								</div>
								<!-- pagination-wrapper -->
							</div>
							<!-- section-wrapper -->
						</div>
					</div>
				</div>
			</div>
	
		</section>
		<!--/User Dashboard-->

		<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->