
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
								<li class="breadcrumb-item active text-white" aria-current="page">My Dashboard</li>
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

<form  method='post' name='free_write' action="freelancerMyprofile_write">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">김소담</h4></a>
								</div>
							</div>

							<aside class="doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">프리랜서</a></li>
												<li><a class="slide-item" href="myprofile.html">프리랜서 프로필</a></li>
												<li><a class="slide-item " href="mydash_cor.html">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite_cor.html">프리랜서 찜</a></li>
												<li><a class="slide-item" href="myfavorite_market.html">마켓 찜</a></li>
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
											<!--  
						<div class="card my-select">
							<div class="card-header">
								<h3 class="card-title">Search Ads</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="text" placeholder="What are you looking for?">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected="">All Categories</option>
										<option value="2">RealEstate</option>
										<option value="3">Restaurant</option>
										<option value="4">Beauty</option>
										<option value="5">Jobs</option>
										<option value="6">Services</option>
										<option value="7">Vehicle</option>
										<option value="8">Education</option>
										<option value="9">Electronics</option>
										<option value="10">Pets &amp; Animals</option>
										<option value="11">Computer</option>
										<option value="12">Mobile</option>
										<option value="13">Events</option>
										<option value="14">Travel</option>
										<option value="15">Clothing</option>
									</select>
								</div>
								<div class="">
									<a href="#" class="btn  btn-primary">Search</a>
								</div>
							</div>
						</div>
						
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">Safety Tips For Buyers</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Meet Seller at public Place
									</li>
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Check item before you buy
									</li>
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Pay only after collecting item
									</li>
									<li class="ml-5 mb-0">
										<a href="tips.html"> View more..</a>
									</li>
								</ul>
							</div>
						</div>
						-->
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">프로필 등록하기</h3>
							</div>
							
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
										<label class="form-label">직종</label>
                                 			<select class="form-control">
                                    			<option selected> </option>
                                    			<option>개발</option>
                                    			<option>퍼블리싱</option>
                                    			<option>디자인</option>
                                   				 <option>기획</option>
                                   				 <option>기타</option>
                                			 </select>

										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">경력</label>
											<input type="number" class="form-control" placeholder="경력">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
											<label class="form-label">키워드</label>
										</div>
									</div>	
									
					
					
                     <div class="col-sm-6 col-md-12">
                        <div class="form-group ">                                                                     
                        <div class="ads-tabs">
                           <div class="tabs-menus">
                              <!-- Tabs -->
                              <ul class="nav panel-tabs">
                                  <li><a href="#tab1" class ="active" value="1" data-toggle="tab" onclick="javascript:type_set();">개발</a>
                                 <li><a href="#tab2"  name="type" value="2" data-toggle="tab"onclick="javascript:type_set();" >퍼블리셔</a></li>
                                 <li><a href="#tab3"  name="type" value="3" data-toggle="tab" onclick="javascript:type_set();">디자인</a></li>
                                 <li><a href="#tab4" name="type"  value="4" data-toggle="tab" onclick="javascript:type_set();">기획</a></li>
                                 <li><a href="#tab5"  name="type" value="5" data-toggle="tab" onclick="javascript:type_set();">기타</a></li>                              
                              </ul>
                              <input type="hidden" name="type_num" value="" id="type_num" />   
                           </div>
                           <label class="form-label"><b>키워드</b></label>
                           
                           <div class="tab-content">      
                              <!-- tab 개발 시작   -->   
                              <div class="tab-pane tab-pane active table-responsive border-top userprof-tab" id="tab1">
                                 <!-- 개발자 시작  -->                                 
                                 <div class="col-sm-6 col-md-12">                           
                                 <div class="form-group">
                              
                                 <!------------------------ java 시작----------------------------------------------------------->                              
                                    <br/>
                                    <div class="row">                           
                                       <div class="col-md-2">                                                                        
                                       <label class="form-label">JAVA</label>                              
                                    </div>
                                    
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                       <input type="checkbox" class="custom-control-input" name="key_num" value="1">
                                       <span class="custom-control-label">Front-end </span>
                                       </label>
                                    </div>
                                    
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="2">
                                          <span class="custom-control-label">Back-end</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="3">
                                          <span class="custom-control-label">Java</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="4">
                                          <span class="custom-control-label">Spring</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="5">
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
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="6">
                                          <span class="custom-control-label">Miplantform</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="7">
                                          <span class="custom-control-label">Nexacro</span>
                                       </label>
                                    </div>   
                                       
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="8">
                                          <span class="custom-control-label">Proframe</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="9">
                                          <span class="custom-control-label">Maven</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="10">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="11">
                                             <span class="custom-control-label">Sencha</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="12">
                                             <span class="custom-control-label">Trustform</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="13">
                                             <span class="custom-control-label">Tuxedo</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="14">
                                             <span class="custom-control-label">Gauce</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="15">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="16">
                                             <span class="custom-control-label">DecOn</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="17">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="18">
                                             <span class="custom-control-label">Hybrid</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="19">
                                             <span class="custom-control-label">Android</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="20">
                                             <span class="custom-control-label">ios(Object-C)</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="21">
                                             <span class="custom-control-label">ios(Swift)</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="22">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="23">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="24">
                                             <span class="custom-control-label">PHP</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="25">
                                             <span class="custom-control-label">Laravel</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="26">
                                             <span class="custom-control-label">Codeigniter</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="27">
                                             <span class="custom-control-label">Symfony</span>
                                          </label>
                                       </div>      
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="29">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="30">
                                             <span class="custom-control-label">ASP</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-4">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="28">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="31">
                                             <span class="custom-control-label">ASP.net</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="32">
                                             <span class="custom-control-label">C</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="33">
                                             <span class="custom-control-label">C++</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="34">
                                             <span class="custom-control-label">C#</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="35">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="36">
                                             <span class="custom-control-label">OpenGL</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="38">
                                             <span class="custom-control-label">VBA</span>
                                          </label>
                                       </div>                                          
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="37">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="39">
                                             <span class="custom-control-label">node.js</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="40">
                                             <span class="custom-control-label">AngularJS</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="41">
                                             <span class="custom-control-label">React.js</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="42">
                                             <span class="custom-control-label">Vue.js</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="43">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="44">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="45">
                                             <span class="custom-control-label">Server</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="46">
                                             <span class="custom-control-label">UNIX</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="47">
                                             <span class="custom-control-label">Embedded</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="48">
                                             <span class="custom-control-label">Firmware</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="50">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="51">
                                             <span class="custom-control-label">Qt</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="53">
                                             <span class="custom-control-label">LabVIEW</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="52">
                                             <span class="custom-control-label">MetaLab</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-4">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="49">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="54">
                                             <span class="custom-control-label">Oracle</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="55">
                                             <span class="custom-control-label">MSSQL</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="56">
                                             <span class="custom-control-label">MySQL</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="57">
                                             <span class="custom-control-label">MariaDB</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="58">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="60">
                                             <span class="custom-control-label">CUBRID</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="61">
                                             <span class="custom-control-label">Tibero</span>
                                          </label>
                                       </div>   
                                       <div class="col-md-4">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="59">
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
                           <div class="tab-pane table-responsive border-top userprof-tab" id="tab2">
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
                                       <input type="checkbox" class="custom-control-input" name="key_num" value="62">
                                       <span class="custom-control-label">HTML5</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="63">
                                          <span class="custom-control-label">CSS</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="64">
                                          <span class="custom-control-label">ActionScript</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="40">
                                          <span class="custom-control-label">AngularJS</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="41">
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
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="42">
                                          <span class="custom-control-label">Vue.js</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="43">
                                          <span class="custom-control-label">jQuery</span>
                                       </label>
                                    </div>   
                                       
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="44">
                                          <span class="custom-control-label">JavaScript</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="29">
                                          <span class="custom-control-label">WordPress</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="65">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="66">
                                             <span class="custom-control-label">Photoshop</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="67">
                                             <span class="custom-control-label">Flash</span>
                                          </label>
                                          </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="68">
                                             <span class="custom-control-label">웹접근성</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="69">
                                             <span class="custom-control-label">웹표준</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="70">
                                             <span class="custom-control-label">Git</span>
                                          </label>
                                       </div>
                                    </div>                        
                                             
                                 </div>
                              </div>
                              <!-- 개발자 끝  -->            
                           </div> <!-- tab 퍼블리셔 끝   -->   
                           
                     <!-- tab 디자인 시작   -->   
                           <div class="tab-pane table-responsive border-top userprof-tab" id="tab3">
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
                                       <input type="checkbox" class="custom-control-input" name="key_num" value="71">
                                       <span class="custom-control-label">웹디자인</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="72">
                                          <span class="custom-control-label">앱디자인</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="74">
                                          <span class="custom-control-label">게임디자인</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="76">
                                          <span class="custom-control-label">3D디자인</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="77">
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
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="78">
                                          <span class="custom-control-label">패키지디자인</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="79">
                                          <span class="custom-control-label">아트 디렉션</span>
                                       </label>
                                    </div>   
                                       
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="80">
                                          <span class="custom-control-label">애니메이션</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="81">
                                          <span class="custom-control-label">로고브랜딩</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="75">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="73">
                                             <span class="custom-control-label">출판/편집디자인</span>
                                          </label>
                                       </div>
                                       
                                    </div>                        
                                             
                                 </div>
                              </div>
                              <!-- 디자인 끝  -->            
                           </div> <!-- tab 디자인 끝   -->
                        <!-- tab 기획 시작   -->   
                           <div class="tab-pane table-responsive border-top userprof-tab" id="tab4">
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
                                       <input type="checkbox" class="custom-control-input" name="key_num" value="82">
                                       <span class="custom-control-label">PM</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="83">
                                          <span class="custom-control-label">PL</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="86">
                                          <span class="custom-control-label">웹기획</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="87">
                                          <span class="custom-control-label">앱기획</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="88">
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
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="89">
                                          <span class="custom-control-label">제안</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="90">
                                          <span class="custom-control-label">쇼핑몰</span>
                                       </label>
                                    </div>   
                                       
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="91">
                                          <span class="custom-control-label">여행사</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="92">
                                          <span class="custom-control-label">금융</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="93">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="94">
                                             <span class="custom-control-label">카드</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="99">
                                             <span class="custom-control-label">물류</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="95">
                                             <span class="custom-control-label">보험</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="96">
                                             <span class="custom-control-label">대학</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="97">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="100">
                                             <span class="custom-control-label">회계</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="101">
                                             <span class="custom-control-label">제조</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="102">
                                             <span class="custom-control-label">건설</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="103">
                                             <span class="custom-control-label">암호화폐</span>
                                          </label>
                                       </div>
                                       <div class="col-md-2">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="84">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="98">
                                             <span class="custom-control-label">공공기관</span>
                                          </label>
                                       </div>
                                       <div class="col-md-6">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="85">
                                             <span class="custom-control-label">시스템분석/설계</span>
                                          </label>
                                       </div>                                    
                                    </div>                                                                                       
                                             
                                 </div>
                              </div>
                              <!-- 기획 끝  -->            
                           </div> <!-- tab 기획 끝   -->   
                     <!-- tab 기타 시작   -->   
                           <div class="tab-pane table-responsive border-top userprof-tab" id="tab5">
                                                               
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
                                       <input type="checkbox" class="custom-control-input" name="key_num" value="82">
                                       <span class="custom-control-label">PM</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">                                 
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="83">
                                          <span class="custom-control-label">PL</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="84">
                                          <span class="custom-control-label">PMO</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="104">
                                          <span class="custom-control-label">DA</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="105">
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
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="106">
                                          <span class="custom-control-label">TA</span>
                                       </label>
                                    </div>
                                    <div class="col-md-2">
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="107">
                                          <span class="custom-control-label">AA</span>
                                       </label>
                                    </div>   
                                       
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="108">
                                          <span class="custom-control-label">NA</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="109">
                                          <span class="custom-control-label">SE</span>
                                       </label>
                                    </div>   
                                    <div class="col-md-2">   
                                       <label class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" name="key_num" value="110">
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
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="111">
                                             <span class="custom-control-label">QC</span>
                                          </label>
                                       </div>
                                       <div class="col-md-6">   
                                          <label class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input" name="key_num" value="85">
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
								<!-- 	<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">주소</label>
											<div class="row gutters-xs">
												<div class="col">
													<input type="text" class="form-control" placeholder="Search for...">
												</div>
												<span class="col-auto">
													<button class="btn btn-secondary" type="button"><i	 class="fe fe-search"></i></button>
												</span>
											</div>
										</div>
									</div>	 -->	
									<!-- 주소 API 시작 -->							
									<div class="col-md-12">
										<div class="form-group col-md-12">
									<!--	<label class="form-label">주소</label>  -->	
									<div class="row">
									<div class="col-sm-3 col-md-3">
									<label class="form-label"><b>주소</b></label>
										<div class="form-group">
											<input type="text"  class="form-control" id="postcode" placeholder="우편번호" name="pj_postcode">
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
											<input type="text" class="form-control" id="address" placeholder="주소" name="pj_loc"><br>
										</div>
									</div>
									<div class="col-sm-12 col-md-5">
										<div class="form-group">	
											<input type="text" class="form-control" id="detailAddress" placeholder="상세주소" name="pj_detailloc">
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
										<div class="col-md-9">
											<label class="custom-switch">
												<input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input">
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
													<label class="form-label">업무가능일</label>
												</div>
										<div class="col-md-9">
											<div class="wd-200 mg-b-30">
												<div class="input-group">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
														</div>
													</div><input class="form-control fc-datepicker" placeholder="MM/DD/YYYY" type="text">
												</div>
											</div>
										</div>
										</div>
										</div>
									</div>	

									<div class="col-sm-6 col-md-12">	
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">업무장소</label>
											</div>
											<div class="col-md-9">
												  <select class="form-control">
	                                    			<option selected> </option>
	                                    			<option value="0">상주</option>
	                                    			<option value="1">반상주</option>
	                                   				 <option value="2">자택</option>
	                                   				 <option value="3">상관없음</option>
	                                			 </select>
											</div>
										</div>				
										

 							 		<div class="row">
										<div class="col-sm-12 col-md-12">
							 				<div class="form-group">
												<label class="form-label">제목</label>
												<input type="text" class="form-control" name="pj_sub">
											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">자기소개</label>
											<textarea rows="5" class="form-control" placeholder=""></textarea>
										</div>
									</div>
								</div>

											<div class="col-md-12">
											<div class="form-group ">
												<label class="form-label mt-2">첨부파일</label>
												<div class="custom-file">
													<input type="file" class="custom-file-input" name="example-file-input-custom">
													<label class="custom-file-label">Upload Files</label>
												</div>
											</div>
											</div>		

											<div class="col-md-12">
											<div class="form-group ">
											
												<div class="p-2 border mb-4">
												<div class="upload-images d-flex">
													<div>
														<img src="../images/faces/male/25.jpg" alt="img" class="w73 h73 border p-0">
													</div>
													<div class="ml-3 mt-2">
														<h6 class="mb-0 mt-3 font-weight-bold">25.jpg</h6>
														<small>4.5kb</small>
													</div>
													<div class="float-right ml-auto">
														<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5"><i class="fa fa-trash-o"></i></a>
													</div>
												</div>
												</div>	
											</div>
											</div>								
									</div>
								</div>
							</div>
							<div class="card-footer" align="right">
								<a href="freelancerProfile_list" class="btn btn-primary" onclick="javascript:check();">등록하기</a>	
								<a href="freelancerProfile_list" class="btn btn-secondary icons">목록</a>						
							</div>

							
						</div>
					</div>
				</div>
</form>
			</div>
		</section>
		<!--/User Dashboard-->
		   
<script>
function check(){
      var key_num = $('.active').attr('value');
      document.getElementById('key_num').value = key_num;
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
      // alert("pj_place: "+pj_input.pj_place.value+", pj_fgrade: "+pj_input.pj_fgrade.value+", pj_cont: "+pj_input.pj_cont.value+", key_num: "+key_num);
      // alert("pj_pay: "+pj_input.pj_pay.value+", pj_homepage: "+pj_input.pj_homepage.value+", pj_term: "+pj_input.pj_term.value+", pj_ddate: "+pj_input.pj_ddate.value);
       //alert("pj_recnum: "+pj_input.pj_recnum.value+", pj_totalp: "+pj_input.pj_totalp.value+", pj_sub: "+pj_input.pj_sub.value+", cor_name: "+pj_input.cor_name.value);
      // alert("mem_email: "+pj_input.mem_email.value+", cor_tel: "+pj_input.cor_tel.value+", pj_postcode: "+pj_input.pj_postcode.value+", cor_mname: "+pj_input.cor_mname.value);
      // alert("pj_loc: "+pj_input.pj_loc.value+", pj_detailloc: "+pj_input.pj_detailloc.value+", pj_loc_x: "+pj_input.pj_loc_x.value+", pj_loc_y: "+pj_input.pj_loc_y.value);
      freelancerMyprofile_write.submit();
      }
   //});
</script>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->