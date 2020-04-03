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
			<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">찜한 프로젝트</h1>
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
					<h4 class="page-title">Freelacer Profile</h4>
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
									<!--	
										<img src="/home/ubuntu/hifive/hifiveImages/free_thumb/${free.free_fname}" class="brround" alt="user">
									-->
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
												<li><a class="slide-item" href="mydash_free">프리랜서</a></li>
												<li><a class="slide-item" href="freelancerProfile_list">프리랜서 프로필</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="myNotification"><i class="side-menu__icon si si-bell"></i><span class="side-menu__label">새로 온 알림</span></a>
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
												<li><a class="slide-item" href="myMarket1">나의마켓</a></li>
												<li><a class="slide-item" href="myMarket2">판매마켓</a></li>
												<li><a class="slide-item" href="myMarket3">구매마켓</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
								<h3 class="card-title"><b>관심있는 프로젝트</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">찜한 프로젝트</a></li>
											<li><a href="#tab2" data-toggle="tab">지원한 프로젝트</a></li>
										</ul>
									</div>
								<div class="tab-content">
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
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
											<c:choose>
											<c:when test="${empty pjp}">
												<tr>
													<td colspan="6" id="center">
														찜한 프로젝트가 없습니다.
													</td>
												</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="dto" items="${pjp}">
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
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
												<td>${dto.corporation.cor_name}</td>
												<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</td>
												<td>
													<a href="#" class="badge badge-primary">모집중</a>
												</td>
												<td>
													<a href="myfavorite_del?pj_num=${dto.pj_num}&free_code=${free.free_code}" class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<!--  <a href="#" class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="지원하기"><i class="fa fa-send"></i></a>-->
												</td>
											</tr>
											</c:forEach>
											</c:otherwise>
										</c:choose>
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
											<c:choose>
											<c:when test="${empty apppList}">
												<tr>
													<td colspan="6" id="center">
														지원한 프로젝트가 없습니다.
													</td>
												</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="dto" items="${apppList}">
											<tr>
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
												<td>${dto.corporation.cor_name}</td>
												<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</td>
												<td>
												<c:if test="${dto.appliedproject.appp_status==0}">
													<a href="#" class="badge badge-secondary">미승인</a>
												</c:if>
												<c:if test="${dto.appliedproject.appp_status==1}">
													<a href="#" class="badge badge-primary">승인</a>
												</c:if>
												</td>
												<td>
													<fmt:formatDate value="${dto.appliedproject.appp_date}" pattern="yyyy.MM.dd" />
												</td>
											</tr>
											</c:forEach>
											</c:otherwise>
										</c:choose>
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