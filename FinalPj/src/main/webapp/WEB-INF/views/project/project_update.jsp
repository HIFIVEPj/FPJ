<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
		<!--Sliders Section-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">		
							<ol class="breadcrumb text-center">
							</ol>
						</div>
					</div>
				</div>
			</div>
		
		</section>
		<!--/Sliders Section-->

		<!--Add posts-section-->
		<section class="sptb">
		
		<div class="col-md-6 mx-auto">
			<div class="container">
			 <form method='post' name='edit_list' action="project_update?pj_num=${projectCont.pj_num}">
				<div class="row ">
					<div class="col-lg-12 col-md-12 col-md-12">
						<div class="card mb-lg-0">
							<div class="card-header ">
								<h3 class="card-title"><b>프로젝트 등록</b></h3>
							</div>
							<div class="card-body">
							
							<div class="col-md-12">
								<div class="row">									
									<div class="form-group col-md-6">		
									<label class="form-label text-dark"><b>근무형태</b></label>

									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="pj_place" value="0" 
											<c:if test="${projectCont.pj_place eq 0}">
														checked
													</c:if>>
											<span class="custom-control-label text-muted">비상주</span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2  mr-4"> 
											<input type="radio" class="custom-control-input" name="pj_place" value="1" 
											<c:if test="${projectCont.pj_place eq 1}">
														checked
													</c:if>>
											<span class="custom-control-label text-muted">상주</span>
										
										</label>	
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2  mr-4">
											<input type="radio" class="custom-control-input" name="pj_place" value="2"
											<c:if test="${projectCont.pj_place eq 2}">
														checked
													</c:if>>
											<span class="custom-control-label text-muted">반상주</span>
											
										</label>					
										</div>
									</div>
									</div>
									<div class=" form-group col-md-6">		
									<label class="form-label text-dark"><b>경력</b></label>
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="pj_fgrade" value="0" 
											<c:if test="${projectCont.pj_fgrade eq 1}">
														checked
													</c:if>>
											<span class="custom-control-label text-muted">초급</span>
										</label>
										<div>
											<label class="custom-control custom-radio  mb-2  mr-4"> 
												<input type="radio" class="custom-control-input" name="pj_fgrade" value="1" 
												<c:if test="${projectCont.pj_fgrade eq 2}">
															checked
														</c:if>>
												<span class="custom-control-label text-muted">중급</span>
											
											</label>	
										</div>
										<div>
											<label class="custom-control custom-radio  mb-2  mr-4">
												<input type="radio" class="custom-control-input" name="pj_fgrade" value="2"
												<c:if test="${projectCont.pj_fgrade eq 3}">
															checked
														</c:if>>
												<span class="custom-control-label text-muted">고급</span>
											</label>					
										</div>
									</div>
									</div>
								</div>
								</div>
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
											<label class="form-label"><b>직종</b></label>
										</div>
									</div>	

							<div class="col-sm-6 col-md-12">
								<div class="form-group ">																							
								<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
										 	<li><a href="#tab1" <c:if test="${projectCont.type_num eq 1}"> class ="active" </c:if> data-toggle="tab" name="type" value="1">개발</a></li>
											<li><a href="#tab2" <c:if test="${projectCont.type_num eq 2}"> class ="active" </c:if> data-toggle="tab"  name="type" value="2">퍼블리셔</a></li>
											<li><a href="#tab3" <c:if test="${projectCont.type_num eq 3}"> class ="active" </c:if> data-toggle="tab" name="type" value="3">디자인</a></li>
											<li><a href="#tab4"  <c:if test="${projectCont.type_num eq 4}"> class ="active" </c:if> data-toggle="tab" name="type" value="4">기획</a></li>
											<li><a href="#tab5" <c:if test="${projectCont.type_num eq 5}"> class ="active" </c:if> data-toggle="tab" name="type" value="5">기타</a></li>											
										</ul>
										<input type="hidden" name="type_num" value="" id="type_num" />
									</div>
									<label class="form-label"><b>키워드</b></label>
									<c:choose>
										<c:when test="${projectCont.pjpickKeyword ne '[]'}">
											<c:forEach var="i" begin="0" end="${projectCont.pjpickKeyword.size()-1}">
												<input type="hidden" value="${projectCont.pjpickKeyword.get(i).pjp_keynum}" name = "pjp_keynum">
											</c:forEach>
										</c:when>
									</c:choose>
									
									<div class="tab-content">		
										<!-- tab 개발 시작   -->	
										<div class="tab-pane tab-pane <c:if test="${projectCont.type_num eq 1}"> active </c:if> table-responsive border-top userprof-tab" id="tab1">
											<!-- 개발자 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
										
											<!------------------------ java 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">JAVA
													</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="key_num" value="1" 
													<c:if test="${projectCont.keyname().contains('Front-end')}">
														checked
													</c:if>>
													<span class="custom-control-label">Front-end </span>
													</label>
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="2"
														<c:if test="${projectCont.keyname().contains('Back-end')}">
														checked
													</c:if>>
														<span class="custom-control-label">Back-end</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="3"
														<c:if test="${projectCont.keyname().contains('Java')}">
														checked
													</c:if>>
														<span class="custom-control-label">Java</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="4"
														<c:if test="${projectCont.keyname().contains('Spring')}">
														checked
													</c:if>>
														<span class="custom-control-label">Spring</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="5"
														<c:if test="${projectCont.keyname().contains('Xplatform')}">
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
														<c:if test="${projectCont.keyname().contains('Miplantform')}">
														checked
													</c:if>>
														<span class="custom-control-label">Miplantform</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="7"
														<c:if test="${projectCont.keyname().contains('Nexacro')}">
														checked
													</c:if>>
														<span class="custom-control-label">Nexacro</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="8"
														<c:if test="${projectCont.keyname().contains('Proframe')}">
														checked
													</c:if>>
														<span class="custom-control-label">Proframe</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="9"
														<c:if test="${projectCont.keyname().contains('Maven')}">
														checked
													</c:if>>
														<span class="custom-control-label">Maven</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="10"
															<c:if test="${projectCont.keyname().contains('Jenkins')}">
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
															<c:if test="${projectCont.keyname().contains('Sencha')}">
																checked
															</c:if>>
															<span class="custom-control-label">Sencha</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="12"
															<c:if test="${projectCont.keyname().contains('Trustform')}">
																checked
															</c:if>>
															<span class="custom-control-label">Trustform</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="13"
															<c:if test="${projectCont.keyname().contains('Tuxedo')}">
																checked
															</c:if>>
															<span class="custom-control-label">Tuxedo</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="14"
															<c:if test="${projectCont.keyname().contains('Gauce')}">
																checked
															</c:if>>
															<span class="custom-control-label">Gauce</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="15"
															<c:if test="${projectCont.keyname().contains('Pro*C')}">
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
															<c:if test="${projectCont.keyname().contains('DecOn')}">
																checked
															</c:if>>
															<span class="custom-control-label">DecOn</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="17"
															<c:if test="${projectCont.keyname().contains('Thymeleaf')}">
																checked
															</c:if>>
															<span class="custom-control-label">Thymeleaf</span>
														</label>
													</div>
												</div>
										<!------------------------ java 끝----------------------------------------------------------->
												
													<div class="col-md-12">											
														<HR />									
													</div>	
											
										<!------------------------ Mobile App 시작---------------------------------------------------->						
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">Mobile App</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="18"
															<c:if test="${projectCont.keyname().contains('Hybrid')}">
																checked
															</c:if>>
															<span class="custom-control-label">Hybrid</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="19"
															<c:if test="${projectCont.keyname().contains('Android')}">
																checked
															</c:if>>
															<span class="custom-control-label">Android</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="20"
															<c:if test="${projectCont.keyname().contains('ios(Object-C)')}">
																checked
															</c:if>>
															<span class="custom-control-label">ios(Object-C)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="21"
															<c:if test="${projectCont.keyname().contains('ios(Swift)')}">
																checked
															</c:if>>
															<span class="custom-control-label">ios(Swift)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="22"
															<c:if test="${projectCont.keyname().contains('WebView')}">
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
															<c:if test="${projectCont.keyname().contains('IoT')}">
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
															<c:if test="${projectCont.keyname().contains('PHP')}">
																checked
															</c:if>>
															<span class="custom-control-label">PHP</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="25"
															<c:if test="${projectCont.keyname().contains('Laravel')}">
																checked
															</c:if>>
															<span class="custom-control-label">Laravel</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="26"
															<c:if test="${projectCont.keyname().contains('Codeigniter')}">
																checked
															</c:if>>
															<span class="custom-control-label">Codeigniter</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="27"
															<c:if test="${projectCont.keyname().contains('Symfony')}">
																checked
															</c:if>>
															<span class="custom-control-label">Symfony</span>
														</label>
													</div>		
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="29"
															<c:if test="${projectCont.keyname().contains('WordPress')}">
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
															<c:if test="${projectCont.keyname().contains('ASP')}">
																checked
															</c:if>>
															<span class="custom-control-label">ASP</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="28"
															<c:if test="${projectCont.keyname().contains('ZendFramework')}">
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
															<c:if test="${projectCont.keyname().contains('ASP.net')}">
																checked
															</c:if>>
															<span class="custom-control-label">ASP.net</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="32"
															<c:if test="${projectCont.keyname().contains('C')}">
																checked
															</c:if>>
															<span class="custom-control-label">C</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="33"
															<c:if test="${projectCont.keyname().contains('C++')}">
																checked
															</c:if>>
															<span class="custom-control-label">C++</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="34"
															<c:if test="${projectCont.keyname().contains('C#')}">
																checked
															</c:if>>
															<span class="custom-control-label">C#</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="35"
															<c:if test="${projectCont.keyname().contains('MFC')}">
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
															<c:if test="${projectCont.keyname().contains('OpenGL')}">
																checked
															</c:if>>
															<span class="custom-control-label">OpenGL</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="38"
															<c:if test="${projectCont.keyname().contains('VBA')}">
																checked
															</c:if>>
															<span class="custom-control-label">VBA</span>
														</label>
													</div>														
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="37"
															<c:if test="${projectCont.keyname().contains('DevExpress')}">
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
															<c:if test="${projectCont.keyname().contains('node.js')}">
																checked
															</c:if>>
															<span class="custom-control-label">node.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="40"
															<c:if test="${projectCont.keyname().contains('AngularJS')}">
																checked
															</c:if>>
															<span class="custom-control-label">AngularJS</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="41"
															<c:if test="${projectCont.keyname().contains('React.js')}">
																checked
															</c:if>>
															<span class="custom-control-label">React.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="42"
															<c:if test="${projectCont.keyname().contains('Vue.js')}">
																checked
															</c:if>>
															<span class="custom-control-label">Vue.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="43"
															<c:if test="${projectCont.keyname().contains('jQuery')}">
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
															<c:if test="${projectCont.keyname().contains('JavaScript')}">
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
															<c:if test="${projectCont.keyname().contains('Server')}">
																checked
															</c:if>>
															<span class="custom-control-label">Server</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="46"
															<c:if test="${projectCont.keyname().contains('UNIX')}">
																checked
															</c:if>>
															<span class="custom-control-label">UNIX</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="47"
															<c:if test="${projectCont.keyname().contains('Embedded')}">
																checked
															</c:if>>
															<span class="custom-control-label">Embedded</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="48"
															<c:if test="${projectCont.keyname().contains('Firmware')}">
																checked
															</c:if>>
															<span class="custom-control-label">Firmware</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="50"
															<c:if test="${projectCont.keyname().contains('Aduino')}">
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
															<c:if test="${projectCont.keyname().contains('Qt')}">
																checked
															</c:if>>
															<span class="custom-control-label">Qt</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="53"
															<c:if test="${projectCont.keyname().contains('LabVIEW')}">
																checked
															</c:if>>
															<span class="custom-control-label">LabVIEW</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="52"
															<c:if test="${projectCont.keyname().contains('MetaLab')}">
																checked
															</c:if>>
															<span class="custom-control-label">MetaLab</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="49"
															<c:if test="${projectCont.keyname().contains('Machine Vision')}">
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
															<c:if test="${projectCont.keyname().contains('Oracle')}">
																checked
															</c:if>>
															<span class="custom-control-label">Oracle</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="55"
															<c:if test="${projectCont.keyname().contains('MSSQL')}">
																checked
															</c:if>>
															<span class="custom-control-label">MSSQL</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="56"
															<c:if test="${projectCont.keyname().contains('MySQL')}">
																checked
															</c:if>>
															<span class="custom-control-label">MySQL</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="57"
															<c:if test="${projectCont.keyname().contains('MariaDB')}">
																checked
															</c:if>>
															<span class="custom-control-label">MariaDB</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="58"
															<c:if test="${projectCont.keyname().contains('MongoDB')}">
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
															<c:if test="${projectCont.keyname().contains('CUBRID')}">
																checked
															</c:if>>
															<span class="custom-control-label">CUBRID</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="61"
															<c:if test="${projectCont.keyname().contains('Tibero')}">
																checked
															</c:if>>
															<span class="custom-control-label">Tibero</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="59"
															<c:if test="${projectCont.keyname().contains('Postgresql')}">
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
									<div class="tab-pane <c:if test="${projectCont.type_num eq 2}"> active </c:if> table-responsive border-top userprof-tab" id="tab2">
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
													<c:if test="${projectCont.keyname().contains('HTML5')}">
																checked
															</c:if>>
													<span class="custom-control-label">HTML5</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="63"
														<c:if test="${projectCont.keyname().contains('CSS')}">
																checked
															</c:if>>
														<span class="custom-control-label">CSS</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="64"
														<c:if test="${projectCont.keyname().contains('ActionScript')}">
																checked
															</c:if>>
														<span class="custom-control-label">ActionScript</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="40"
														<c:if test="${projectCont.keyname().contains('AngularJS')}">
																checked
															</c:if>>
														<span class="custom-control-label">AngularJS</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="41"
														<c:if test="${projectCont.keyname().contains('React.js')}">
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
														<c:if test="${projectCont.keyname().contains('Vue.js')}">
																checked
															</c:if>>
														<span class="custom-control-label">Vue.js</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="43"
														<c:if test="${projectCont.keyname().contains('jQuery')}">
																checked
															</c:if>>
														<span class="custom-control-label">jQuery</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="44"
														<c:if test="${projectCont.keyname().contains('JavaScript')}">
																checked
															</c:if>>
														<span class="custom-control-label">JavaScript</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="29"
														<c:if test="${projectCont.keyname().contains('WordPress')}">
																checked
															</c:if>>
														<span class="custom-control-label">WordPress</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="65"
														<c:if test="${projectCont.keyname().contains('BootStrap')}">
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
															<c:if test="${projectCont.keyname().contains('Photoshop')}">
																checked
															</c:if>>
															<span class="custom-control-label">Photoshop</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="67"
															<c:if test="${projectCont.keyname().contains('Flash')}">
																checked
															</c:if>>
															<span class="custom-control-label">Flash</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="68"
															<c:if test="${projectCont.keyname().contains('웹접근성')}">
																checked
															</c:if>>
															<span class="custom-control-label">웹접근성</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="69"
															<c:if test="${projectCont.keyname().contains('웹표준')}">
																checked
															</c:if>>
															<span class="custom-control-label">웹표준</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="70"
															<c:if test="${projectCont.keyname().contains('Git')}">
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
									<div class="tab-pane <c:if test="${projectCont.type_num eq 3}"> active </c:if> table-responsive border-top userprof-tab" id="tab3">
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
													<input type="checkbox" class="custom-control-input" name="key_num" value="71"
													<c:if test="${projectCont.keyname().contains('웹디자인')}">
																checked
															</c:if>>
													<span class="custom-control-label">웹디자인</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="72"
														<c:if test="${projectCont.keyname().contains('앱디자인')}">
																checked
															</c:if>>
														<span class="custom-control-label">앱디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="74"
														<c:if test="${projectCont.keyname().contains('게임디자인')}">
																checked
															</c:if>>
														<span class="custom-control-label">게임디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="76"
														<c:if test="${projectCont.keyname().contains('3D디자인')}">
																checked
															</c:if>>
														<span class="custom-control-label">3D디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="77"
														<c:if test="${projectCont.keyname().contains('그래픽디자인')}">
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
														<c:if test="${projectCont.keyname().contains('패키지디자인')}">
																checked
															</c:if>>
														<span class="custom-control-label">패키지디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="79"
														<c:if test="${projectCont.keyname().contains('아트 디렉션')}">
																checked
															</c:if>>
														<span class="custom-control-label">아트 디렉션</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="80"
														<c:if test="${projectCont.keyname().contains('애니메이션')}">
																checked
															</c:if>>
														<span class="custom-control-label">애니메이션</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="81"
														<c:if test="${projectCont.keyname().contains('로고브랜딩')}">
																checked
															</c:if>>
														<span class="custom-control-label">로고브랜딩</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="75"
														<c:if test="${projectCont.keyname().contains('판촉물디자인')}">
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
															<c:if test="${projectCont.keyname().contains('출판/편집디자인')}">
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
									<div class="tab-pane <c:if test="${projectCont.type_num eq 4}"> active </c:if> table-responsive border-top userprof-tab" id="tab4">
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
													<c:if test="${projectCont.keyname().contains('PM')}">
																checked
															</c:if>>
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="83"
														<c:if test="${projectCont.keyname().contains('PL')}">
																checked
															</c:if>>
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="86"
														<c:if test="${projectCont.keyname().contains('웹기획')}">
																checked
															</c:if>>
														<span class="custom-control-label">웹기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="87"
														<c:if test="${projectCont.keyname().contains('앱기획')}">
																checked
															</c:if>>
														<span class="custom-control-label">앱기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="88"
														<c:if test="${projectCont.keyname().contains('컨설팅')}">
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
														<c:if test="${projectCont.keyname().contains('제안')}">
																checked
															</c:if>>
														<span class="custom-control-label">제안</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="90"
														<c:if test="${projectCont.keyname().contains('쇼핑몰')}">
																checked
															</c:if>>
														<span class="custom-control-label">쇼핑몰</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="91"
														<c:if test="${projectCont.keyname().contains('여행사')}">
																checked
															</c:if>>
														<span class="custom-control-label">여행사</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="92"
														<c:if test="${projectCont.keyname().contains('금융')}">
																checked
															</c:if>>
														<span class="custom-control-label">금융</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="93"
														<c:if test="${projectCont.keyname().contains('증권')}">
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
															<c:if test="${projectCont.keyname().contains('카드')}">
																checked
															</c:if>>
															<span class="custom-control-label">카드</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="99"
															<c:if test="${projectCont.keyname().contains('물류')}">
																checked
															</c:if>>
															<span class="custom-control-label">물류</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="95"
															<c:if test="${projectCont.keyname().contains('보험')}">
																checked
															</c:if>>
															<span class="custom-control-label">보험</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="96"
															<c:if test="${projectCont.keyname().contains('대학')}">
																checked
															</c:if>>
															<span class="custom-control-label">대학</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="97"
															<c:if test="${projectCont.keyname().contains('병원')}">
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
															<c:if test="${projectCont.keyname().contains('회계')}">
																checked
															</c:if>>
															<span class="custom-control-label">회계</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="101"
															<c:if test="${projectCont.keyname().contains('제조')}">
																checked
															</c:if>>
															<span class="custom-control-label">제조</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="102"
															<c:if test="${projectCont.keyname().contains('건설')}">
																checked
															</c:if>>
															<span class="custom-control-label">건설</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="103"
															<c:if test="${projectCont.keyname().contains('암호화폐')}">
																checked
															</c:if>>
															<span class="custom-control-label">암호화폐</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="84"
															<c:if test="${projectCont.keyname().contains('PMO')}">
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
															<c:if test="${projectCont.keyname().contains('공공기관')}">
																checked
															</c:if>>
															<span class="custom-control-label">공공기관</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="85"
															<c:if test="${projectCont.keyname().contains('시스템분석/설계')}">
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
							<!-- tab 기타 시작   -->	
									<div class="tab-pane <c:if test="${projectCont.type_num eq 5}"> active </c:if> table-responsive border-top userprof-tab" id="tab5">
																					
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기타 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기타</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="key_num" value="82"
													<c:if test="${projectCont.keyname().contains('PM')}">
																checked
															</c:if>>
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="83"
														<c:if test="${projectCont.keyname().contains('PL')}">
																checked
															</c:if>>
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="84"
														<c:if test="${projectCont.keyname().contains('PMO')}">
																checked
															</c:if>>
														<span class="custom-control-label">PMO</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="104"
														<c:if test="${projectCont.keyname().contains('DA')}">
																checked
															</c:if>>
														<span class="custom-control-label">DA</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="105"
														<c:if test="${projectCont.keyname().contains('DBA')}">
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
														<c:if test="${projectCont.keyname().contains('TA')}">
																checked
															</c:if>>
														<span class="custom-control-label">TA</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="107"
														<c:if test="${projectCont.keyname().contains('AA')}">
																checked
															</c:if>>
														<span class="custom-control-label">AA</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="108"
														<c:if test="${projectCont.keyname().contains('NA')}">
																checked
															</c:if>>
														<span class="custom-control-label">NA</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="109"
														<c:if test="${projectCont.keyname().contains('SE')}">
																checked
															</c:if>>
														<span class="custom-control-label">SE</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="key_num" value="110"
														<c:if test="${projectCont.keyname().contains('QA')}">
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
															<c:if test="${projectCont.keyname().contains('QC')}">
																checked
															</c:if>>
															<span class="custom-control-label">QC</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="key_num" value="85"
															<c:if test="${projectCont.keyname().contains('시스템분석/설계')}">
																checked
															</c:if>>
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>													
													
												</div>								
														
											</div>
											
										</div>
										<!-- 기타 끝  -->				
									</div> <!-- tab 기타 끝   -->	
										
									</div>								
								</div>								
							</div>
								<div class="col-md-12">											
									<HR />									
								</div>		
							</div>
										<div class="col-sm-6 col-md-12">
												<div class="row">
												<div class="col-md-6">
													<div class="form-group ">
														<label class="form-label"><b>급여</b></label>
														<input type="text" class="form-control" value="${projectCont.pj_pay}" placeholder="전체 기간 동안 지급하는 총 금액을 입력하세요" name="pj_pay">
													</div>	
												</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group ">
													<label class="form-label"><b>홈페이지</b></label>
													<input type="text" class="form-control" value="${projectCont.pj_homepage}" name="pj_homepage">
												</div>	
											</div>
										</div>
									</div>
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-sm-6 col-md-6">
											<div class="form-group ">
												<label class="form-label"><b>프로젝트 기간</b></label>
												<input type="text" class="form-control" value="${projectCont.pj_term}"  placeholder="개월 수와 주 수를 입력하세요. ex) 3개월 3주 -> 3.3" name="pj_term">
											</div>	
										</div>
										<div class="col-sm-6 col-md-6">
											<div class="form-group">
											<label class="form-label"><b>공고 마감기간</b></label>
												<div class="input-group-prepend">
													<div class="input-group-text">
														<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
													</div>
													<input class="form-control fc-datepicker" type="text" value="${projectCont.pj_ddate}" name="pj_ddate">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-sm-6 col-md-6">
											<div class="form-group ">
												<label class="form-label"><b>모집인원</b></label>
												<input type="number" class="form-control" value="${projectCont.pj_recnum}" name="pj_recnum">
											</div>	
										</div>
										<div class="col-sm-6 col-md-6">
											<div class="form-group ">
												<label class="form-label"><b>총 투입인원</b></label>
												<input type="number" class="form-control" value="${projectCont.pj_totalp}" name="pj_totalp">
											</div>	
										</div>
									</div>
								</div>	
								<div class="col-sm-6 col-md-12">
									<div class="row">
										<div class="col-sm-12 col-md-12">
							 				<div class="form-group">
												<label classㅇ="form-label text-dark"><b>제목</b></label>
												<input type="text" class="form-control" value="${projectCont.pj_sub}" name="pj_sub">
											</div>
							
								<div class="col-sm-6 col-md-12">
									<div class="row">
									<div class="col-sm-12 col-md-12">
									<div class="form-group">
                                		 <label class="form-label"></label>
                                 		<textarea name="pj_cont" class="summernote" class="summernote">${projectCont.pj_cont}</textarea>
                             		 </div>
                              <script>
                                 $(document).ready(function() { $('#summernote').summernote();
                                 });
                                 
                                 $('.summernote').summernote({
                                	 placeholder: '내용을 입력해 주세요.',
                                    height: 300,
                                    minHeight: null,
                                    maxHeight: null,
                                    lang : 'ko-KR',
                                    onImageUpload: function(files, editor, welEditable) {
                                    sendFile(files[0], editor, welEditable);
                                    }
                                 });
                              </script>
								  </div>
								</div>
								</div>

								
									<div class="card-header ">
										<h3 class="card-title"><b>회사 정보</b></h3>
									</div>
									<br/>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label "><b>회사명</b></label>
											<input type="text" class="form-control" value="${corInfo.cor_name}">
										</div>
									</div>
									<div class="col-sm-6 col-md-6 ">
										<div class="form-group ">
											<label class="form-label "><b>담당자명</b></label>
											<input type="text" class="form-control" value="${corInfo.cor_mname}">
										</div>	
									</div>
								</div>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label"><b>이메일</b></label>
											<input type="email" class="form-control" value="${corInfo.mem_email}">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label"><b>연락처</b></label>
											<input type="number" class="form-control" value="${corInfo.cor_tel}">
										</div>	
									</div>
								</div>	
								<!-- 주소 api부분 -->
								<div class="row">
									<div class="col-sm-3 col-md-3">
									<label class="form-label"><b>주소 </b></label>
										<div class="form-group">
											<input type="text"  class="form-control" id="postcode" placeholder="우편번호" name="pj_postcode"  value="${projectCont.pj_postcode}">
										</div>
									</div>
									<div class="col-sm-4 col-md-4">
									<label class="form-label"><br/></label>
										<div class="form-group">
											<input type="button" class="btn btn-primary"  onclick="execDaumPostcode()" value="우편번호 찾기">	
										</div>
										</div>
									</div>
									<div class="row">
									<div class="col-sm-12 col-md-7">
										<div class="form-group">
											<input type="text" class="form-control" id="address" placeholder="주소" name="pj_loc" value="${projectCont.pj_loc}"><br>
										</div>
									</div>
									<div class="col-sm-12 col-md-5">
										<div class="form-group">	
											<input type="text" class="form-control" id="detailAddress" placeholder="상세주소" name="pj_detailloc" value="${projectCont.pj_detailloc}">
										</div>
									</div>
									</div>
									<div id="map" style="width:100%;height:350px;"></div>
									
								<!-- 좌표 부분 1차 시작 , (좌표를 위한 추가)지도 쓸일 없으면 안해도 됨 -->
									<input type="hidden" id="address_x"  class="form-control" placeholder="x좌표" name="pj_loc_x" value="${projectCont.pj_loc_x}"> 
									<input type="hidden" id="address_y"  class="form-control" placeholder="y좌표" name="pj_loc_y" value="${projectCont.pj_loc_y}">
								<!-- 좌표를 위한 카카오 key 추가,지도 쓸 일 없으면 지워도 됨 -->
									<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e87f1e8bcbb6ac445c4b87fdbcf76e&libraries=services"></script>
								<!-- 좌표부분 1차 끝 // -->
									
									<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
								    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
								        mapOption = {
								            center: new daum.maps.LatLng('${projectCont.pj_loc_y}', '${projectCont.pj_loc_x}'), // 지도의 중심좌표
								            level: 5 // 지도의 확대 레벨
								        };

								    //지도를 미리 생성
								    var map = new daum.maps.Map(mapContainer, mapOption);
								    //주소-좌표 변환 객체를 생성
								    var geocoder = new daum.maps.services.Geocoder();
								    //마커를 미리 생성
								    var marker = new daum.maps.Marker({
								        position: new daum.maps.LatLng('${projectCont.pj_loc_y}', '${projectCont.pj_loc_x}'),
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
									                
									           //좌표찾기(지도 쓸일 없으면 생략가능)------------ 좌표 2차시작
									                geocoder.addressSearch(data.address, function(results, status) {
								                // 정상적으로 검색이 완료됐으면
								                    if (status === daum.maps.services.Status.OK) {
								
								                        var result = results[0]; //첫번째 결과의 값을 활용
								
								                    // 해당 주소에 대한 좌표를 받아서 입력
								                        document.getElementById("address_x").value=result.x;
								                        document.getElementById("address_y").value=result.y; 
								                        
								                        var coords = new daum.maps.LatLng(result.y, result.x);
								                        // 지도를 보여준다.
								                        mapContainer.style.display = "block";
								                        map.relayout();
								                        // 지도 중심을 변경한다.
								                        map.setCenter(coords);
								                        // 마커를 결과값으로 받은 위치로 옮긴다.
								                        marker.setPosition(coords)
								                    }
								                });
									           //여기까지 삭제-------------- 좌표 2차 끝
									                // 커서를 상세주소 필드로 이동한다.
									                document.getElementById("detailAddress").focus();
									            }
									        }).open();
									    }
									</script>
								<!-- 주소 api끝 -->
								<div class="card-footer ">
									<div class ="row">
									<div class="mx-auto">
										<a href="javascript:void(0)" onclick="javascript:check();" class="btn btn-primary">수정</a> 
											&nbsp;&nbsp;&nbsp;
										<a href="project_list" class="btn btn-danger">취소</a>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
				
		</section>
		<!--/Add posts-section-->
<script>
	function check(){
		var type_num = $('.active').attr('value');
		document.getElementById('type_num').value = type_num;
		var key_num = new Array();
		var key_cnt = 0;
		//for(var i=0; i<key_num_size; i++){
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
		var pjp_keynum = new Array();
		var pjp_cnt=0;
		 $('input[name=pjp_keynum]').each(function(){
				 pjp_keynum[pjp_cnt]=this.value;
				 pjp_cnt++;
		 });
		// alert("pj_place: "+pj_input.pj_place.value+", pj_fgrade: "+pj_input.pj_fgrade.value+", pj_cont: "+pj_input.pj_cont.value+", key_num: "+key_num);
		// alert("pj_pay: "+pj_input.pj_pay.value+", pj_homepage: "+pj_input.pj_homepage.value+", pj_term: "+pj_input.pj_term.value+", pj_ddate: "+pj_input.pj_ddate.value);
		 //alert("pj_recnum: "+pj_input.pj_recnum.value+", pj_totalp: "+pj_input.pj_totalp.value+", pj_sub: "+pj_input.pj_sub.value+", cor_name: "+pj_input.cor_name.value);
		// alert("mem_email: "+pj_input.mem_email.value+", cor_tel: "+pj_input.cor_tel.value+", pj_postcode: "+pj_input.pj_postcode.value+", cor_mname: "+pj_input.cor_mname.value);
		// alert("pj_loc: "+pj_input.pj_loc.value+", pj_detailloc: "+pj_input.pj_detailloc.value+", pj_loc_x: "+pj_input.pj_loc_x.value+", pj_loc_y: "+pj_input.pj_loc_y.value);
		 edit_list.submit();
		}
	//});
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->