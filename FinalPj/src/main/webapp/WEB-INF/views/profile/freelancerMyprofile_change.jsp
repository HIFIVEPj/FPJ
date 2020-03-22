
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
							<h1 class="">My Dashboard</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item text-white" aria-current="page">My Dashboard</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
	 <form method='post' name='edit_free_profile' action="freelancerMyprofile_change?pro_num=${profile.pro_num}">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">My Dashboard</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<c:if test="${getFileName.get(0).free_fname eq null}">
											<div class="profile-pic-img">
												<img src="../images/faces/male/25.jpg" class="brround" alt="user">
											</div>
										</c:if>
										<c:if test = "${getFileName.get(0).free_fname ne null}">
											<div class="avatar-xxl brround" style="margin:0 auto;">
												<img src="../hifiveImages/free_thumb/${getFileName.get(0).free_fname}" class="avatar-xxl brround" alt="user">
											</div>
										</c:if>
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class=" doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash_free">프리랜서</a></li>
												<li><a class="slide-item" href="freelancerProfile_list">프리랜서 프로필</a></li>
											</ul>
										</li>
								<!-- 		<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-diamond"></i><span class="side-menu__label"> My Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myads.html"> My Ads-1</a></li>
												<li><a class="slide-item" href="myads.html"> My Ads-2</a></li>
											</ul>
										</li> -->
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="mydash.html">프리랜서 찜</a></li>
												<li><a class="slide-item" href="mydash.html">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓 관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
													<li><a class="slide-item" href="myMarket1">나의마켓</a></li>
													<li><a class="slide-item" href="myMarket2">판매마켓</a></li>
													<li><a class="slide-item" href="myMarket3">구매마켓</a></li>
											
										<!--  		<li class="sub-slide">
													<a class="side-menu__item border-top-0 slide-item" href="#" data-toggle="sub-slide"><span class="side-menu__label">Managed Ads-2</span> <i class="sub-angle fa fa-angle-right"></i></a>
													<ul class="child-sub-menu ">
														<li><a class="slide-item" href="manged.html">Managed Ads-3</a></li>
														<li><a class="slide-item" href="manged.html">Managed Ads-4</a></li>
													</ul>
												</li>-->
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
								<h3 class="card-title">프로필 수정하기</h3>
							</div>
							
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
										<label class="form-label">직종<span style="color:red;">*</span></label>
                                 			<select class="form-control" id="type_num" name="type_num">
                                 		<c:choose>		 
                                 			 <c:when test="${profile.type_num eq '1'}">
                                    			<option value=1 selected>개발</option>
                                    			<option value=2>퍼블리싱</option>
                                    			<option value=3>디자인</option>
                                    			<option value=4>기획</option>
                                    			<option value=5>기타</option>		
                                    		</c:when>
                                    		 <c:when test="${profile.type_num eq '2'}">
                                    			<option value=1>개발</option>
                                    			<option value=2 selected>퍼블리싱</option>
                                    			<option value=3>디자인</option>
                                    			<option value=4>기획</option>
                                    			<option value=5>기타</option>
                                    		</c:when>
                                    		
                                    		<c:when test="${profile.type_num eq '3'}">
												<option value=1>개발</option>
                                    			<option value=2>퍼블리싱</option>
                                    			<option value=3 selected>디자인</option>
                                    			<option value=4>기획</option>
                                    			<option value=5>기타</option>
                                    		</c:when>
                                    		<c:when test="${profile.type_num eq '4'}">
												<option value=1>개발</option>
                                    			<option value=2>퍼블리싱</option>
                                    			<option value=3>디자인</option>
                                    			<option value=4 selected>기획</option>
                                    			<option value=5>기타</option>
                                   			</c:when>
                                   			<c:otherwise>
												<option value=1>개발</option>
												<option value=2>퍼블리싱</option>
                                    			<option value=3>디자인</option>
                                    			<option value=4>기획</option>
                                    			<option value=5 selected>기타</option>
                                   			</c:otherwise>
                                   		</c:choose>
                                			 </select>
									
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">경력<span style="color:red;">*</span></label>
										<c:if test="${profile ne '[]'}">
											<input type="number" class="form-control"  value="${profile.pro_exp}" name = "pro_exp" id="pro_exp" min="1" max="30" numberOnly>
										</c:if>									
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
											<label class="form-label">키워드<span style="color:red;">*</span></label>		   
										</div>
									</div>							
							<div class="col-sm-6 col-md-12">
								<div class="form-group ">																							
								<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
										 	<li><a href="#tab1" <c:if test="${profile.type_num eq 1}"> class ="active" </c:if> data-toggle="tab" name="type_num" value="1">개발</a></li> 
											<li><a href="#tab2" <c:if test="${profile.type_num eq 2}"> class ="active" </c:if> data-toggle="tab" name="type_num" value="2">퍼블리셔</a></li>
											<li><a href="#tab3" <c:if test="${profile.type_num eq 3}"> class ="active" </c:if> data-toggle="tab" name="type_num" value="3">디자인</a></li>
											<li><a href="#tab4" <c:if test="${profile.type_num eq 4}"> class ="active" </c:if> data-toggle="tab" name="type_num" value="4">기획</a></li>
											<li><a href="#tab5" <c:if test="${profile.type_num eq 5}"> class ="active" </c:if> data-toggle="tab" name="type_num" value="5">기타</a></li>											
										</ul>
						<!-- 담추가 	<input type="hidden" name="type_num" value="" id="type_num" /> -->	
									</div>									
								
									<c:choose>
										<c:when test="${profile.keyword ne '[]'}">
											<c:forEach var="i" begin="0" end="${profile.freePickKeyWord.size()-1}">
												<input type="hidden" value="${profile.freePickKeyWord.get(i).free_keynum}" name = "free_keynum">
											</c:forEach>
										</c:when>
									</c:choose>
									
									
									<div class="tab-content">
										<!-- tab 개발 시작   -->	
										<div class="tab-pane <c:if test="${profile.type_num eq 1}"> active </c:if> table-responsive border-top userprof-tab" id="tab1">
											<!-- 개발자 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ java 시작----------------------------------------------------------->										
												<br/>	
														
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">JAVA</label>								
												</div>
										
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">																											
														<input type="checkbox" class="custom-control-input" name="key_num" value="1"
															<c:if test="${profile.keyname().contains('Front-end')}">
															checked
															</c:if>>															
													<span class="custom-control-label">Front-end</span>
													</label>
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																																					
														<input type="checkbox" class="custom-control-input" name="key_num" value="2"
															<c:if test="${profile.keyname().contains('Back_End')}">
															checked
															</c:if>>	
																								
														<span class="custom-control-label">Back-End</span>	
													</label>
												</div>
												
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																			
														<input type="checkbox" class="custom-control-input" name="key_num" value="3"
															<c:if test="${profile.keyname().contains('Java')}">
															checked
															</c:if>>
													
														<span class="custom-control-label">Java</span>
													</label>
												</div>
												
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																								
														<input type="checkbox" class="custom-control-input" name="key_num" value="4"
															<c:if test="${profile.keyname().contains('Spring')}">
															checked
															</c:if>>
													
														<span class="custom-control-label">Spring</span>
													</label>
												</div>
												
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
													
														<input type="checkbox" class="custom-control-input" name="key_num" value="5"
															<c:if test="${profile.keyname().contains('Xplatform')}">
															checked
															</c:if>>													
														<span class="custom-control-label">Xplatform</span>
													</label>
												</div>
												</div>	
												
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																												
														<input type="checkbox" class="custom-control-input" name="key_num" value="6"
															<c:if test="${profile.keyname().contains('Miplantform')}">
															checked
															</c:if>>
												
														<span class="custom-control-label">Miplantform</span>
													</label>
												</div>
												
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																											
														<input type="checkbox" class="custom-control-input" name="key_num" value="7"
															<c:if test="${profile.keyname().contains('Nexacro')}">
															checked
															</c:if>>
												
														<span class="custom-control-label">Nexacro</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																													
														<input type="checkbox" class="custom-control-input" name="key_num" value="8"
															<c:if test="${profile.keyname().contains('Proframe')}">
															checked
															</c:if>>
													
														<span class="custom-control-label">Proframe</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																												
														<input type="checkbox" class="custom-control-input" name="key_num" value="9"
															<c:if test="${profile.keyname().contains('Maven')}"> 
															checked
															</c:if>>
													
														<span class="custom-control-label">Maven</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																												
														<input type="checkbox" class="custom-control-input" name="key_num" value="10"
															<c:if test="${profile.keyname().contains('Jenkins')}"> 
															checked
															</c:if>>
													
														<span class="custom-control-label">Jenkins</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																												
														<input type="checkbox" class="custom-control-input" name="key_num" value="11"
															<c:if test="${profile.keyname().contains('Sencha')}">
															checked
															</c:if>>
												
															<span class="custom-control-label">Sencha</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																												
														<input type="checkbox" class="custom-control-input" name="key_num" value="12"
															<c:if test="${profile.keyname().contains('Trustform')}"> 
															checked
															</c:if>>
												
															<span class="custom-control-label">Trustform</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																											
														<input type="checkbox" class="custom-control-input" name="key_num" value="13"
															<c:if test="${profile.keyname().contains('Tuxedo')}"> 
															checked
															</c:if>>
												
															<span class="custom-control-label">Tuxedo</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="14"
																	<c:if test="${profile.keyname().contains('Gauce')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Gauce</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="15"
																	<c:if test="${profile.keyname().contains('Pro*C')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">Pro*C</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="16"
																	<c:if test="${profile.keyname().contains('DecOn')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">DecOn</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="17"
																	<c:if test="${profile.keyname().contains('Thymeleaf')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Thymeleaf</span>
														</label>
													</div>
												</div>
										<!------------------------ java 끝----------------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
										<!------------------------ Mobile App 시작---------------------------------------------------->						
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">Mobile App</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="18"
																	<c:if test="${profile.keyname().contains('Hybrid')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Hybrid</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																											
																<input type="checkbox" class="custom-control-input" name="key_num" value="19"
																	<c:if test="${profile.keyname().contains('Android')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">Android</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="20"
																	<c:if test="${profile.keyname().contains('ios(Object-C)')}">
																	checked
																	</c:if>>
															
															<span class="custom-control-label">ios(Object-C)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="21"
																	<c:if test="${profile.keyname().contains('ios(Swift)')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">ios(Swift)</span>
														</label>
													</div>
																				
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="22"
																	<c:if test="${profile.keyname().contains('WebView')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">WebView</span>
														</label>
													</div>
												</div>
														
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="23"
																	<c:if test="${profile.keyname().contains('IoT')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">IoT</span>
														</label>
													</div>	
												</div>	
											<!------------------------ Mobile App 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
											<!------------------------ PHP/ASP 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">PHP/ASP</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="24"
																	<c:if test="${profile.keyname().contains('PHP')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">PHP</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="25"
																	<c:if test="${profile.keyname().contains('Laravel')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Laravel</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="26"
																	<c:if test="${profile.keyname().contains('Codeigniter')}"> 
																	checked
																	</c:if>>
													
															<span class="custom-control-label">Codeigniter</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="27"
																	<c:if test="${profile.keyname().contains('Symfony')}">
																	checked
																	</c:if>>
														
															<span class="custom-control-label">Symfony</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="29"
																	<c:if test="${profile.keyname().contains('WordPress')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">WordPress</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="30"
																	<c:if test="${profile.keyname().contains('ASP')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">ASP</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="28"
																	<c:if test="${profile.keyname().contains('ZendFramework')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">ZendFramework</span>
														</label>
													</div>	
												</div>	
											<!------------------------ PHP/ASP 끝---------------------------------------------------->												
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
											<!------------------------ NET 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">NET</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="31"
																	<c:if test="${profile.keyname().contains('ASP.net')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">ASP.net</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="32"
																	<c:if test="${profile.keyname().contains('C')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">C</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="33"
																	<c:if test="${profile.keyname().contains('C++')}"> 
																	checked
																	</c:if>>
														
															<span class="custom-control-label">C++</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="34"
																	<c:if test="${profile.keyname().contains('C#')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">C#</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="35"
																	<c:if test="${profile.keyname().contains('MFC')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MFC</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="36"
																	<c:if test="${profile.keyname().contains('OpenGL')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">OpenGL</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="38"
																	<c:if test="${profile.keyname().contains('VBA')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">VBA</span>
														</label>
													</div>														
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																											
																<input type="checkbox" class="custom-control-input" name="key_num" value="37"
																	<c:if test="${profile.keyname().contains('DevExpress')}">
																	checked
																	</c:if>>
															
															<span class="custom-control-label">DevExpress</span>
														</label>
													</div>	
												</div>												
											<!------------------------ NET 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ JavaScript 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">JavaScrip</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																													
																<input type="checkbox" class="custom-control-input" name="key_num" value="39"
																	<c:if test="${profile.keyname().contains('node.js')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">node.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
																<input type="checkbox" class="custom-control-input" name="key_num" value="40"
																	<c:if test="${profile.keyname().contains('AngularJS')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">AngularJS</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="41"
																	<c:if test="${profile.keyname().contains('React.js')}">
																	checked
																	</c:if>>
															
															<span class="custom-control-label">React.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="42"
																	<c:if test="${profile.keyname().contains('Vue.js')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Vue.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="43"
																	<c:if test="${profile.keyname().contains('jQuery')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">jQuery</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="44"
																	<c:if test="${profile.keyname().contains('JavaScript')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">JavaScript</span>
														</label>
													</div>		
												</div>														
											<!------------------------ JavaScript 끝---------------------------------------------------->						
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ C/C++ 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">C/C++</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="45"
																	<c:if test="${profile.keyname().contains('Server')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Server</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="46"
																	<c:if test="${profile.keyname().contains('UNIX')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">UNIX</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="47"
																	<c:if test="${profile.keyname().contains('Embedded')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Embedded</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="48"
																	<c:if test="${profile.keyname().contains('Firmware')}">
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Firmware</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="50"
																	<c:if test="${profile.keyname().contains('Aduino')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Aduino</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="51"
																	<c:if test="${profile.keyname().contains('Qt')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Qt</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="53"
																	<c:if test="${profile.keyname().contains('LabVIEW')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">LabVIEW</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="52"
																	<c:if test="${profile.keyname().contains('MetaLab')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MetaLab</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="49"
																	<c:if test="${profile.keyname().contains('Machine Vision')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Machine Vision</span>
														</label>
													</div>																																									
												</div>														
											
											<!------------------------ C/C++ 끝---------------------------------------------------->		
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>												
											<!------------------------DB 시작---------------------------------------------------->		
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">DB</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="54"
																	<c:if test="${profile.keyname().contains('Oracle')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Oracle</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="55"
																	<c:if test="${profile.keyname().contains('MSSQL')}">
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MSSQL</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="56"
																	<c:if test="${profile.keyname().contains('MySQL')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MySQL</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="57"
																	<c:if test="${profile.keyname().contains('MariaDB')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MariaDB</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="58"
																	<c:if test="${profile.keyname().contains('MongoDB')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">MongoDB</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="60"
																	<c:if test="${profile.keyname().contains('CUBRID')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">CUBRID</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="61"
																	<c:if test="${profile.keyname().contains('Tibero')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Tibero</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="59"
																	<c:if test="${profile.keyname().contains('Postgresql')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Postgresql</span>
														</label>
													</div>																																									
												</div>												
											<!------------------------DB 끝---------------------------------------------------->															
															
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div>
								<!-- tab 개발 끝   -->
								
								<!-- tab 퍼블리셔 시작   -->	
									<div class="tab-pane <c:if test="${profile.type_num eq 2}"> active </c:if> table-responsive border-top userprof-tab" id="tab2">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 퍼블리셔 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">퍼블리셔</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="62"
																<c:if test="${profile.keyname().contains('HTML5')}"> 
																checked
																</c:if>>
														
													<span class="custom-control-label">HTML5</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="63"
																<c:if test="${profile.keyname().contains('CSS')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">CSS</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="64"
																<c:if test="${profile.keyname().contains('ActionScript')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">ActionScript</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="40"
																<c:if test="${profile.keyname().contains('AngularJS')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">AngularJS</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="41"
																<c:if test="${profile.keyname().contains('React.js')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">React.js</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="42"
																<c:if test="${profile.keyname().contains('Vue.js')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">Vue.js</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="43"
																<c:if test="${profile.keyname().contains('jQuery')}">
																checked
																</c:if>>
														
														<span class="custom-control-label">jQuery</span>
													</label>
												</div>	
								<!-- 중복끝 -->					
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="69"
																<c:if test="${profile.keyname().contains('JavaScript')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">JavaScript</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="70"
																<c:if test="${profile.keyname().contains('WordPress')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">WordPress</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="65"
																<c:if test="${profile.keyname().contains('BootStrap')}"> 
																checked
																</c:if>>
														
														<span class="custom-control-label">BootStrap</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																														
															<input type="checkbox" class="custom-control-input" name="key_num" value="66"
																<c:if test="${profile.keyname().contains('Photoshop')}"> 
																checked
																</c:if>>
														
															<span class="custom-control-label">Photoshop</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="67"
																	<c:if test="${profile.keyname().contains('Flash')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Flash</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="68"
																	<c:if test="${profile.keyname().contains('웹접근성')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">웹접근성</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="69"
																	<c:if test="${profile.keyname().contains('웹표준')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">웹표준</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="70"
																	<c:if test="${profile.keyname().contains('Git')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">Git</span>
														</label>
													</div>
												</div>								
															
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div> <!-- tab 퍼블리셔 끝   -->	
									
							<!-- tab 디자인 시작   -->	
									<div class="tab-pane <c:if test="${profile.type_num eq 3}"> active </c:if> table-responsive border-top userprof-tab" id="tab3">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 디자인 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">디자인</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="72"
																	<c:if test="${profile.keyname().contains('웹디자인')}">
																	checked
																	</c:if>>
															
													<span class="custom-control-label">웹디자인</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="72"
																	<c:if test="${profile.keyname().contains('앱디자인')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">앱디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="74"
																	<c:if test="${profile.keyname().contains('게임디자인')}">
																	checked
																	</c:if>>
															
														<span class="custom-control-label">게임디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="76"
																	<c:if test="${profile.keyname().contains('3D디자인')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">3D디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="77"
																	<c:if test="${profile.keyname().contains('그래픽디자인')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">그래픽디자인</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="78"
																	<c:if test="${profile.keyname().contains('패키지디자인')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">패키지디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="79"
																	<c:if test="${profile.keyname().contains('아트 디렉션')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">아트 디렉션</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="80"
																	<c:if test="${profile.keyname().contains('Proframe')}"> 80}">
																	checked
																	</c:if>>
															
														<span class="custom-control-label">애니메이션</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="81"
																	<c:if test="${profile.keyname().contains('로고브랜딩')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">로고브랜딩</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="75"
																	<c:if test="${profile.keyname().contains('판촉물디자인')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">판촉물디자인</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="73"
																	<c:if test="${profile.keyname().contains('출판/편집디자인')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">출판/편집디자인</span>
														</label>
													</div>
													
												</div>								
															
											</div>
										</div>
										<!-- 디자인 끝  -->				
									</div> <!-- tab 디자인 끝   -->
								<!-- tab 기획 시작   -->	
									<div class="tab-pane <c:if test="${profile.type_num eq 4}"> active </c:if> table-responsive border-top userprof-tab" id="tab4">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기획 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기획</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="82"
																	<c:if test="${profile.keyname().contains('PM')}"> 
																	checked
																	</c:if>>
															
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="83"
																	<c:if test="${profile.keyname().contains('PL')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="86"
																	<c:if test="${profile.keyname().contains('웹기획')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">웹기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">					
																													
														<input type="checkbox" class="custom-control-input" name="key_num" value="87"
															<c:if test="${profile.keyname().contains('앱기획')}"> 
															checked
															</c:if>>
													
														<span class="custom-control-label">앱기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="88"
																	<c:if test="${profile.keyname().contains('컨설팅')}">
																	checked
																	</c:if>>
															
														<span class="custom-control-label">컨설팅</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="89"
																	<c:if test="${profile.keyname().contains('제안')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">제안</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="90"
																	<c:if test="${profile.keyname().contains('쇼핑몰')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">쇼핑몰</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="91"
																	<c:if test="${profile.keyname().contains('여행사')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">여행사</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="92"
																	<c:if test="${profile.keyname().contains('금융')}"> 
																	checked
																	</c:if>>
															
														<span class="custom-control-label">금융</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="93"
																	<c:if test="${profile.keyname().contains('증권')}">
																	checked
																	</c:if>>
															
														<span class="custom-control-label">증권</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="94"
																	<c:if test="${profile.keyname().contains('카드')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">카드</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="99"
																	<c:if test="${profile.keyname().contains('물류')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">물류</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="95"
																	<c:if test="${profile.keyname().contains('보험')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">보험</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="96"
																	<c:if test="${profile.keyname().contains('대학')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">대학</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="97"
																	<c:if test="${profile.keyname().contains('병원')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">병원</span>
														</label>
													</div>													
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="100"
																	<c:if test="${profile.keyname().contains('회계')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">회계</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="101"
																	<c:if test="${profile.keyname().contains('제조')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">제조</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="102"
																	<c:if test="${profile.keyname().contains('건설')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">건설</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="103"
																	<c:if test="${profile.keyname().contains('암호화폐')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">암호화폐</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="84"
																	<c:if test="${profile.keyname().contains('PMO')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">PMO</span>
														</label>
													</div>													
												</div>
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="98"
																	<c:if test="${profile.keyname().contains('공공기관')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">공공기관</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
																															
																<input type="checkbox" class="custom-control-input" name="key_num" value="85"
																	<c:if test="${profile.keyname().contains('시스템분석/설계')}"> 
																	checked
																	</c:if>>
															
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>												
												</div>																													
															
											</div>
										</div>
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->	
							<!-- tab 기획 시작   -->	
									<div class="tab-pane  table-responsive border-top userprof-tab" id="tab5">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기획 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기획</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="key_num" value="82"
															<c:if test="${profile.keyname().contains('PM')}">
															checked
															</c:if>>
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="83"
															<c:if test="${profile.keyname().contains('PL')}">
															checked
															</c:if>>
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="84"
															<c:if test="${profile.keyname().contains('PMO')}">
															checked
															</c:if>>
														<span class="custom-control-label">PMO</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="104"
															<c:if test="${profile.keyname().contains('DA')}">
															checked
															</c:if>>
														<span class="custom-control-label">DA</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="105"
															<c:if test="${profile.keyname().contains('DBA')}">
															checked
															</c:if>>
														<span class="custom-control-label">DBA</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="106"
															<c:if test="${profile.keyname().contains('TA')}">
															checked
															</c:if>>
														<span class="custom-control-label">TA</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="107"
															<c:if test="${profile.keyname().contains('AA')}">
															checked
															</c:if>>
														<span class="custom-control-label">AA</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="108"
															<c:if test="${profile.keyname().contains('NA')}">
															checked
															</c:if>>
														<span class="custom-control-label">NA</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="109"
															<c:if test="${profile.keyname().contains('SE')}">
															checked
															</c:if>>
														<span class="custom-control-label">SE</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="110"
															<c:if test="${profile.keyname().contains('QA')}">
															checked
															</c:if>>
														<span class="custom-control-label">QA</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="111"
															<c:if test="${profile.keyname().contains('QC')}">
															checked
															</c:if>>
															<span class="custom-control-label">QC</span>
														</label>
													</div>
								
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="85"
															<c:if test="${profile.keyname().contains('시스템분석/설계')}">
															checked
															</c:if>>
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>													
																						
												</div>								
															
											</div>
										</div>
	
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->																		
																			
																									
									</div>								
								</div>								
							</div>	
							</div>

						
		
										

									<div class="col-md-12">
										<div class="form-group col-md-12">
									<!--	<label class="form-label">주소</label>  -->	
									<div class="row">
									<div class="col-sm-3 col-md-3">
									<label class="form-label"><b>주소</b></label>
										<div class="form-group">
											<input type="text"  class="form-control" id="postcode" placeholder="우편번호" name="pro_postcode" value="${profile.pro_postcode}">
										</div>
									</div>
									<div class="col-sm-4 col-md-4">
										<div class="form-group"></div>
											<input type="button" class="btn btn-primary"  style="margin-top:10px" onclick="execDaumPostcode()" value="우편번호 찾기">	
										</div>
									</div>
									<div class="row">
									<div class="col-sm-12 col-md-7">
										<div class="form-group">
											<input type="text" class="form-control" id="address" placeholder="주소" name="pro_addr" value="${profile.pro_addr}"><br>
										</div>
									</div>
									<div class="col-sm-12 col-md-5">
										<div class="form-group">	
											<input type="text" class="form-control" id="detailAddress"  name="pro_detailloc" value="${profile.pro_detailloc}">
										</div>
									</div>
									</div>
							
							<!--  		<div id="map" style="width:100%;height:350px;"></div>-->
									
								<!-- 좌표 부분 1차 시작 , (좌표를 위한 추가)지도 쓸일 없으면 안해도 됨 -->
									<input type="hidden" id="address_x"  class="form-control" placeholder="x좌표" name="pj_loc_x"> 
									<input type="hidden" id="address_y"  class="form-control" placeholder="y좌표" name="pj_loc_y">
								<!-- 좌표를 위한 카카오 key 추가,지도 쓸 일 없으면 지워도 됨 -->
									<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e87f1e8bcbb6ac445c4b87fdbcf76e&libraries=services"></script>
								<!-- 좌표부분 1차 끝 // -->
									
									<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
								    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
								        mapOption = {
								            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
								            level: 5 // 지도의 확대 레벨
								        };
								    //지도를 미리 생성
								    var map = new daum.maps.Map(mapContainer, mapOption);
								    //주소-좌표 변환 객체를 생성
								    var geocoder = new daum.maps.services.Geocoder();
								    //마커를 미리 생성
								    var marker = new daum.maps.Marker({
								        position: new daum.maps.LatLng(37.537187, 127.005476),
								        map: map
								    });
									    function execDaumPostcode() {
									    
									        new daum.Postcode({
									            oncomplete: function(data) {
									                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
									
									                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
									                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									                var addr = ''; // 주소 변수
									                var extraAddr = ''; // 참고항목 변수
									
									                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									                    addr = data.roadAddress;
									                } else { // 사용자가 지번 주소를 선택했을 경우(J)
									                    addr = data.roadAddress;
									                }
									
									                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
									                if(data.userSelectedType === 'R'){
									                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
									                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
									                        extraAddr += data.bname;
									                    }
									                    // 건물명이 있고, 공동주택일 경우 추가한다.
									                    if(data.buildingName !== '' && data.apartment === 'Y'){
									                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
									                    }
									                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									                    if(extraAddr !== ''){
									                        extraAddr = ' (' + extraAddr + ')';
									                    }
									                    // 조합된 참고항목을 해당 필드에 넣는다.
									                    document.getElementById("address").value = extraAddr;
									                
									                } else {
									                    document.getElementById("address").value = '';
									                }
									
									                // 우편번호와 주소 정보를 해당 필드에 넣는다.
									                document.getElementById('postcode').value = data.zonecode;
									                document.getElementById("address").value = addr+extraAddr;
									                
									            }
									        }).open();
									    }
									</script>
								<!-- 주소 api끝 -->
									</div>
									</div>
									<!--<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">업무가능여부</label>
											 <input type="text" class="form-control" placeholder="업무가능여부">											
										</div>										
									</div>-->
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
										<div class="col-md-3">
											<label class="form-label">업무가능여부</label>
										</div>
										<div class="col-md-9" >
											<label class="custom-switch" >
											<input type="checkbox" name="pro_ox" class="custom-switch-input "  id="pro_ox"
												<c:if test="${profile.pro_ox eq 'on'}">
															checked
												</c:if>
												<c:if test="${profile.pro_ox eq 'off'}">
												</c:if>>												
												<span class="custom-switch-indicator"></span>
												<span class="custom-switch-description">불가능/가능</span>
											</label>
										</div>
										</div>
										</div>
									</div>
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
												<div class="col-md-3">
													<label class="form-label">업무가능일<span style="color:red;">*</span></label>
												</div>
										<div class="col-md-9">
											<div class="wd-200 mg-b-30">
												<div class="input-group">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
														</div>
													</div><input class="form-control fc-datepicker" type="text" id="pro_start" name="pro_start" value="${profile.pro_start}" >
												</div>
											</div>
										</div>
										</div>
										</div>
									</div>	

									<div class="col-sm-6 col-md-12">	
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">업무형태<span style="color:red;">*</span></label>
											</div>
											<div class="col-md-9">
												
												<select class="form-control" name="pro_place" id="pro_place">
	                                    		 <c:choose>	
	                                    			<c:when test="${profile.pro_place eq '0'}">
	                                    				<option value="0" selected>상주</option>
	                                    				<option value="1">반상주</option>
	                                   					<option value="2">자택</option>
	                                   					<option value="3">상관없음</option>
	                                    			</c:when>
	                                    			<c:when test="${profile.pro_place eq '1'}">
	                                    				<option value="0">상주</option>
	                                    				<option value="1" selected>반상주</option>
	                                   					<option value="2">자택</option>
	                                   					<option value="3">상관없음</option>
	                                    			</c:when>
	                                    			<c:when test="${profile.pro_place eq '2'}">
	                                    				<option value="0">상주</option>
	                                    				<option value="1">반상주</option>
	                                   					<option value="2" selected>자택</option>
	                                   					<option value="3">상관없음</option>
	                                    			</c:when>
                                   					<c:otherwise>
														<option value="0" >상주</option>
	                                    				<option value="1">반상주</option>
	                                   					<option value="2">자택</option>
	                                   					<option value="3" selected>상관없음</option>
                                   					</c:otherwise>
                                   				</c:choose>
	                                			</select>
	                                			 										
										    <input type="hidden" name="free_code"  value="${profile.free_code}"/>  									    
                               				<input type="hidden" name="pro_num"  value="${profile.pro_num}"/>
											</div>
										</div>
									</div>
								<br/><br/><br/>
									<div class="col-sm-6 col-md-12">	
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">업무가능지역<span style="color:red;">*</span></label>
											</div>
											<div class="col-md-9">
											  <select class="form-control" name="pro_workplace" id="pro_workplace">
											  	<c:choose>		 
                                			 		<c:when test="${profile.pro_workplace eq '서울'}">
		                                    			<option > </option>
		                                    			<option value="서울" selected>서울</option>
		                                    			<option value="경기">경기</option>
		                                    			<option value="인천">인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남">충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '경기'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" selected>경기</option>
		                                    			<option value="인천">인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남">충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '인천'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" selected>인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남">충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '강원'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원" selected>강원</option>
		                                    			<option value="충남">충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '충남'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" selected>충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '충북'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" selected>충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '대전'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전" selected>대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '대구'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구" selected>대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '울산'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산" selected>울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '부산'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산" selected>부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '경북'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북" selected>경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '경남'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남" selected>경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '광주'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주" selected>광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '전북'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주" selected>광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '전북'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북" selected>전북</option>
		                                   				<option value="전남">전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '전남'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남" selected>전남</option>	                                   				
		                                   				<option value="제주">제주</option>  
	                                   				</c:when>
	                                   				<c:when test="${profile.pro_workplace eq '제주'}">
		                                    			<option > </option>
		                                    			<option value="서울" >서울</option>
		                                    			<option value="경기" >경기</option>
		                                    			<option value="인천" >인천</option>
		                                    			<option value="강원">강원</option>
		                                    			<option value="충남" >충남</option>
		                                    			<option value="충북">충북</option>
		                                   				<option value="대전">대전</option>
		                                   				<option value="대구">대구</option>
		                                   				<option value="울산">울산</option>
		                                   				<option value="부산">부산</option>
		                                   				<option value="경북">경북</option>
		                                   				<option value="경남">경남</option>
		                                   				<option value="광주">광주</option>
		                                   				<option value="전북">전북</option>
		                                   				<option value="전남" >전남</option>	                                   				
		                                   				<option value="제주" selected>제주</option>  
	                                   				</c:when>
	                                   				
	                                   			</c:choose>
                                			 </select>
											</div>
											</div>
										</div>
									</div>	
									<br/>
									<div class="row">
										<div class="col-sm-12 col-md-12">
							 				<div class="form-group">
												<label class="form-label">제목<span style="color:red;">*</span></label>
												<input type="text" class="form-control"  id="profile_sub" name="profile_sub" value="${profile.profile_sub}">
											<!-- <input type="text" class="form-control" style="width:804px; margin-left:11px;" name="profile_sub" value="${profile.profile_sub}"> -->
											</div>
											
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-12 col-md-12">
											<div class="form-group">
												<label class="form-label">자기소개<span style="color:red;">*</span></label>
												<textarea rows="5" class="form-control" id="pro_cv" name="pro_cv">${profile.pro_cv}</textarea>											
											</div>											
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12 col-md-12">
							 				<div class="form-group">
												<label class="form-label">최종학력<span style="color:red;">*</span></label>
												<input type="text" class="form-control" name="pro_edu" id="pro_edu" value="${profile.pro_edu}">
											</div>
										</div>
									</div>
									<div class="card-footer" align="right" >			
									<a href="freelancerProfile_list" class="btn btn-primary icons">목록</a>	 	
									<input type="button" class="btn btn-secondary" value="수정하기" data-toggle="modal" data-target="#editModal"></a> 	
									</div>
								</form>						
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
<!-- edit Modal -->   
      <div id="editModal" class="modal fade">
         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <p>프로필을 수정 할까요?</p>
               </div>
               <div class="modal-footer">
                 <a href="javascript:void(0)" class="btn btn-primary" id="profile_close" onclick="check();">수정하기</a>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
<!-- /edit Modal -->

</section>
		<!--/User Dashboard-->
<script>
	$("document").ready(function () {
		$( ".fc-datepicker" ).datepicker({ minDate: 1});
	});

	function check(){		
		
		var key_num = new Array();
		var key_cnt = 0;
		
		  var exp_size = $('#pro_exp').val();
		  exp_size = exp_size.toString();
		  expDigit = exp_size.length;
		  
		 if(($('#type_num').val() == "")){
		        alert("직종을 선택헤주세요.")
		        return ;
			  }
			 
			 if(expDigit>3){
				 alert("2글자까지 입력 가능합니다.")
				 return ;
			 }else if($('#pro_exp').val()== ""){ 
				 alert("경력을 입력해주세요.")
			     return ;
			}
			 if(edit_free_profile.pro_exp.value<0){
			        alert("경력을 0보다 크게 입력해주세요.")
			        return ;
			}
			 
			 if(($('#address').val() == "")){
			        alert("주소를 입력해주세요.")
			        return ;
			} 
			 if(($('#detailAddress').val() == "")){
			        alert("상세주소를 입력해주세요.")
			        return ;
			} 
			 if(($('#pro_start').val() == "")){
			        alert("업무가능일을 선택해주세요.")
			        return ;
			} 
			 if(($('#pro_place').val() == "")){
			        alert("업무장소를 선택해주세요.")
			        return ;
			} 
			 if(($('#pro_workplace').val() == "")){
			        alert("업무가능지역을 선택해주세요.")
			        return ;
			} 
			 if(($('#profile_sub').val() == "")){
			        alert("제목을 입력해주세요.")
			        return ;
			} 
			 if(($('#pro_cv').val() == "")){
			        alert("자기소개를 입력해주세요.")
			        return ;
			}  
			 if(($('#pro_edu').val() == "")){
			        alert("최종학력을 입력해주세요.")
			        return ;
			}  
			 
		     var pro_ox = $('input:checkbox[id="pro_ox"]:checked').length;
		     if(pro_ox == 0){  
		    	 $('#pro_ox').attr('value','off');
		    	 var z = $('#pro_ox').val();
		    	 $("#pro_ox").append("<input type='hidden'  name='pro_ox' value='"+z+"'>");     
		     }
		     
			$('input:checkbox[name="key_num"]').each(function() {
				if(this.checked){
					key_num[key_cnt] = this.value;
					key_cnt++; 
				}
	
			 });
			 if(key_num == ""){
					alert("키워드는 1개 이상 설정해야합니다.")
					return;
			}	
		var free_keynum = new Array();
		var free_cnt=0;
		 $('input[name=free_keynum]').each(function(){
			 	free_keynum[free_cnt]=this.value;
			 	free_cnt++;
		 });
		
		 edit_free_profile.submit();
		}
</script>	

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->