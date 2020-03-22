
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
								<c:if test="${cor.cor_fname eq ''}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${cor.cor_fname ne '' }">
									<div class="profile-pic-img">
										<img src="../hifiveImages/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
									</div>
								</c:if>
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
												<li><a class="slide-item " href="mydash_cor">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite_cor">프리랜서 찜</a></li>
												<li><a class="slide-item" href="cor-myfavoriteMarket">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">내 프로젝트관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="project_write">프로젝트 작성하기</a></li>
												<li><a class="slide-item" href="managed_project">프로젝트관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments_cor"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
								<h3 class="card-title"><b>관심있는 프리랜서</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">전체보기</a></li>
											<li><a href="#tab2" data-toggle="tab">업무가능 프리랜서</a></li>
										</ul>
									</div>
								<div class="tab-content">
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th></th>
												<th><b>프로필</b></th>
												<th><b>경력</b></th>
												<th><b>업무가능 여부</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										<c:choose>
											<c:when test="${empty freeP}">
												<tr>
													<td colspan="6" id="center">
														찜한 프리랜서가 없습니다.
													</td>
												</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="dto" items="${freeP}">
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td>
													<div class="media mt-0 mb-0">
														<div class="card-aside-img">
															<a href="#"></a>
															<c:if test="${dto.free.free_fname eq null}">
																<!-- <img src="../images/products/h2.png" class="brround" alt="user"> -->
																<i class="fa fa-user-circle text-muted mr-1 fa-3x"></i>
															</c:if>
															<c:if test = "${dto.free.free_fname ne null}">
																<img src="../hifiveImages/free_thumb/${dto.free.free_fname}" class="brround" alt="${dto.free.free_fname}">
															</c:if>
														</div>
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="freelancercontent?free_code=${dto.free_code}&pro_num=${dto.pro_num}" class="text-dark"><h4 class="font-weight-semibold"><b>${dto.free.free_name}</b></h4></a>
																<a href="#" ><i class="fa fa fa-user mr-1"></i> 
																<c:if test="${dto.type_num == 1}">개발</c:if>
																<c:if test="${dto.type_num == 2}">퍼블리싱</c:if>
																<c:if test="${dto.type_num == 3}">디자인</c:if>
																<c:if test="${dto.type_num == 4}">기획</c:if>
																<c:if test="${dto.type_num == 5}">기타</c:if></a> | 
																 <c:if test="${dto.freerev_starAVG >= 0}" ><!-- 마켓리뷰점수가 -->
																	<c:forEach var="1" begin="1" end="${dto.freerev_starAVG}">
																	   <i class="fa fa-star text-warning"> </i>
																	</c:forEach>
																	<c:forEach var="1" begin="1" end="${5-dto.freerev_starAVG}">
																	   <i class="fa fa-star-o text-warning"> </i>
																	</c:forEach>   
																 </c:if>
																(${dto.freerev_starAVG})<br>
																<div class="tags" style="margin-top:3px;">
															${keyword.get(1).keyword}
															<c:forEach var="key" items="${keyword}">
																	<c:if test="${key.pro_num eq dto.pro_num}">
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
															</div>
														</div>
													</div>
												</td>
												<td class="font-weight-semibold fs-16"> ${dto.pro_exp}년</td>
												<td>
													<c:if test = "${dto.pro_ox eq '가능'}">
														<a href="#" class="badge badge-primary">${dto.pro_ox}</a>
													</c:if>
													<c:if test = "${dto.pro_ox eq '불가능'}">
														<a href="#" class="badge badge-danger">${dto.pro_ox}</a>
													</c:if>	
												</td>
												<td>
													<a href="myfavorite_cor_del?pro_num=${dto.pro_num}&cor_code=${cor.cor_code}" class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<a href="mailto:${dto.free.mem_email}" class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="연락하기"><i class="fa fa-envelope"></i></a>
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
												<th></th>
												<th><b>프로필</b></th>
												<th><b>경력</b></th>
												<th><b>업무가능 여부</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										<c:choose>
											<c:when test="${empty freeP}">
												<tr>
													<td colspan="6" id="center">
														찜한 프리랜서가 없습니다.
													</td>
												</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="dto" items="${freeP}">
											<c:choose>
											<c:when test="${dto.pro_ox eq '가능'}">
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td>
													<div class="media mt-0 mb-0">
														<div class="card-aside-img">
															<a href="#"></a>
															<c:if test="${dto.free.free_fname eq null}">
																<!-- <img src="../images/products/h2.png" class="brround" alt="user"> -->
																<i class="fa fa-user-circle text-muted mr-1 fa-3x"></i>
															</c:if>
															<c:if test = "${dto.free.free_fname ne null}">
																<img src="../hifiveImages/free_thumb/${dto.free.free_fname}" class="brround" alt="${dto.free.free_fname}">
															</c:if>
														</div>
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="freelancercontent?free_code=${dto.free_code}&pro_num=${dto.pro_num}" class="text-dark"><h4 class="font-weight-semibold"><b>${dto.free.free_name}</b></h4></a>
																<a href="#" ><i class="fa fa fa-user mr-1"></i> 
																<c:if test="${dto.type_num == 1}">개발</c:if>
																<c:if test="${dto.type_num == 2}">퍼블리싱</c:if>
																<c:if test="${dto.type_num == 3}">디자인</c:if>
																<c:if test="${dto.type_num == 4}">기획</c:if>
																<c:if test="${dto.type_num == 5}">기타</c:if></a> | 
																 <c:if test="${dto.freerev_starAVG >= 0}" ><!-- 마켓리뷰점수가 -->
																	<c:forEach var="1" begin="1" end="${dto.freerev_starAVG}">
																	   <i class="fa fa-star text-warning"> </i>
																	</c:forEach>
																	<c:forEach var="1" begin="1" end="${5-dto.freerev_starAVG}">
																	   <i class="fa fa-star-o text-warning"> </i>
																	</c:forEach>   
																 </c:if>
																(${dto.freerev_starAVG})<br>
																<div class="tags" style="margin-top:3px;">
															${keyword.get(1).keyword}
															<c:forEach var="key" items="${keyword}">
																	<c:if test="${key.pro_num eq dto.pro_num}">
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
															</div>
														</div>
													</div>
												</td>
												<td class="font-weight-semibold fs-16"> ${dto.pro_exp}년</td>
												<td>
													<c:if test = "${dto.pro_ox eq '가능'}">
														<a href="#" class="badge badge-primary">${dto.pro_ox}</a>
													</c:if>
													<c:if test = "${dto.pro_ox eq '불가능'}">
														<a href="#" class="badge badge-danger">${dto.pro_ox}</a>
													</c:if>	
												</td>
												<td>
													<a href="free_wish_del?pro_num=${dto.pro_num}&cor_code=${cor.cor_code}" class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<a href="mailto:${dto.free.mem_email}" class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="연락하기"><i class="fa fa-envelope"></i></a>
												</td>
											</tr>
											</c:when>
											<c:when test="${dto.pro_ox ne '불가능' }">
											<tr>
												<td colspan="6" id="center">
													업무가능한 프리랜서가 없습니다.
												</td>
												</tr>
											</c:when>
											</c:choose>
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
