
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class=""><span class="font-weight-bold">60,85,965</span> Ads Available in Pinlist</h1>
								</div>
								<div class=" search-background">
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="Search Products">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Select</option>
													<option value="1">Vehicle</option>
													<option value="2">Real Estate</option>
													<option value="3">Computer</option>
													<option value="4">Clothing</option>
													<option value="5">Job</option>
													<option value="6">Services</option>
													<option value="7">Electronics</option>
													<option value="8">Mobile</option>
													<option value="9">Events</option>
													<option value="10">Constructions</option>
												</optgroup>
											</select>
										</div>
										<div class="col-xl-2 col-lg-3 col-md-12 mb-0">
											<a href="#" class="btn btn-lg btn-block btn-secondary">Search</a>
										</div>
									</div>
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
					<h4 class="page-title">Ad Details</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Ad Details</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8 col-md-12">

<!--Add Description-->
					<form name="market-del-edit" method="post" action="market-update?market_num=${market.market_num}">
						<div class="card overflow-hidden">
							<div class="card-body h-100">
								<div class="item-det mb-4">
									<a href="#" class="text-dark"><h3 class="">${market.market_sub}</h3></a>
									<ul class="d-flex">
										<li class="mr-5"><a href="#" class="icons"><i class="si si-briefcase text-muted mr-1"></i>${market.market_pcnt}</a></li>
									<!--<li class="mr-5"><a href="#" class="icons"><i class="si si-location-pin text-muted mr-1"></i> USA</a></li>
										<li class="mr-5"><a href="#" class="icons"><i class="si si-calendar text-muted mr-1"></i> 5 hours ago</a></li>  -->
										<li class="mr-5"><a href="#" class="icons"><i class="si si-eye text-muted mr-1"></i> ${market.market_vcnt}</a></li>
								<!--    <li class=""><a href="#" class="icons">
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star-half-o text-warning mr-1"></i>4.5</a></li>-->		
									</ul>
								</div>
								<div class="product-slider">
									<div id="carousel" class="carousel slide" data-ride="carousel">
										<!--<div class="arrow-ribbon2 bg-primary">$539</div>-->
										<div class="carousel-inner">
											<div class="carousel-item active"> <img src="../hifiveImages/market/marketThumbnails/${market.market_fname}" alt="img"> </div>
										<!--
											<div class="carousel-item"> <img src="../marketThumbnails/${market.market_fname}" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h1.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h2.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
										-->
										</div>
									<!-- <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
											<i class="fa fa-angle-left" aria-hidden="true"></i>
										</a>
										<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
											<i class="fa fa-angle-right" aria-hidden="true"></i>
										</a>-->
									</div>
									<div class="clearfix">
								<!--	<div id="thumbcarousel" class="carousel slide" data-interval="false">
											<div class="carousel-inner">
												<div class="carousel-item active">
													<div data-target="#carousel" data-slide-to="0" class="thumb"><img src="../images/products/h3.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="1" class="thumb"><img src="../images/products/h2.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="2" class="thumb"><img src="../images/products/h6.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="3" class="thumb"><img src="../images/products/h5.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="4" class="thumb"><img src="../images/products/h4.png" alt="img"></div>
												</div>
												<div class="carousel-item">
													<div data-target="#carousel" data-slide-to="0" class="thumb"><img src="../images/products/h1.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="1" class="thumb"><img src="../images/products/h2.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="2" class="thumb"><img src="../images/products/h3.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="3" class="thumb"><img src="../images/products/h4.png" alt="img"></div>
													<div data-target="#carousel" data-slide-to="4" class="thumb"><img src="../images/products/h5.png" alt="img"></div>
												</div>
											</div>
											<a class="carousel-control-prev" href="#thumbcarousel" role="button" data-slide="prev">
												<i class="fa fa-angle-left" aria-hidden="true"></i>
											</a>
											<a class="carousel-control-next" href="#thumbcarousel" role="button" data-slide="next">
												<i class="fa fa-angle-right" aria-hidden="true"></i>
											</a>
										</div>  -->
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">${market.market_sub}</h3>
							</div>
							<div class="card-body">
								<div class="mb-4">
									<p>${market.market_cont}</p>
									
								</div>
								<h4 class="mb-4">Specifications</h4>
								<div class="row">
									<div class="col-xl-6 col-md-12">
										<ul class="list-unstyled widget-spec mb-0">
											<li class="">
												<i class="fa fa-bed text-muted w-5"></i> 2 BedRooms
											</li>
											<li class="">
												<i class="fa fa-bath text-muted w-5"></i> 2 BathRooms
											</li>
											<li class="">
												<i class="fa fa-life-ring text-muted w-5"></i> Unfurnished
											</li>
											<li class="">
												<i class="fa fa-car text-muted w-5"></i> 2 Car Parking
											</li>
											<li class="">
												<i class="fa fa-globe text-muted w-5"></i> East East face
											</li>
											<li class="mb-xl-0">
												<i class="fa fa-pagelines text-muted w-5"></i> Garden
											</li>
										</ul>
									</div>
									
								</div>
							</div>
							<div class="card-footer">
								<div class="icons">
									<a href="#" class="btn btn-info icons"><i class="si si-share mr-1"></i> Share Ad</a>
								<!--<a href="#" class="btn btn-danger icons" data-toggle="modal" data-target="#report"><i class="si si-exclamation mr-1"></i> Report Abuse</a>-->
									<a href="#" class="btn btn-primary icons"><i class="si si-heart  mr-1"></i> 678</a>
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<!-- 세션일치시에만보이는거 --> 
									<button type="submit" class="btn btn-info icons"><i class="fa fa-magic" ></i>수정</button> <!--  버튼 대신 이 수정처럼 만들어주면 가능 -->
									<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#smallModal1">삭제</button>
								<!--// 세션일치시에만보이는거 -->
								</div>
							</div>
						</div>
					</form>
					<!-- small Modal -->   
				      <div id="smallModal1" class="modal fade">
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
				                 <a class="btn btn-primary" style="color:white;" href="market-delete?market_num=${market.market_num}">네</a> 			                  
				                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
				               </div>
				            </div>
				         </div>      
				      </div>
				      <!-- /small Modal -->
					
<!--/Add Description-->

						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">리뷰</h3>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-12">
										<div class="badge badge-default mb-2">${mrStar}<i class="fa fa-star"></i></div>
										
										<!--
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-success w-100">6,532</div>
										</div>-->
										<span class="rated-products-ratings">
										<c:if test="${mrStar >= 0}">
											<c:forEach var="1" begin="1" end="${mrStar}">
												<i class="fa fa-star text-warning"> </i>
											</c:forEach>
											<c:forEach var="1" begin="1" end="${5-mrStar}">
												<i class="fa fa-star-o text-warning"> </i>
											</c:forEach>
										</c:if>
										</span>
									</div>
									<div class="col-md-6 text-center align-items-center">

									</div>
								</div>
							</div>

					
						<!-- 댓글 -->		
				
					<c:if test="${fn:length(marketRev) > 0}">	
						<c:forEach var="marketRev" items="${marketRev}">
							<div class="card-body p-0" id="ajaxRev">
                                    	<c:choose>
	                                    	<c:when test="${marketRev.freelancer != null}">
					                            <div class="media mt-0 p-5" >
			                                    	<div class="d-flex mr-3">
			                                      		  <a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/freelancer/${marketRev.freelancer.free_fname}"> </a>
			                                    	</div>
			                                   		 <div class="media-body">
				                                       	<h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">${marketRev.freelancer.free_name}
				                                       	<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
														<span class="fs-14 ml-2" name="marketRev_star" id="starR" > ${marketRev.marketRev_star}</span>  <i class="fa fa-star text-yellow"></i>
														</h5>														
														<small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate"> ${marketRev.marketRev_rdate} </small>
			                                       		<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR"> ${marketRev.marketRev_cont}</p>			
													</div>
												</div>
	                                     	</c:when>
	                                    
	                                     	<c:when test="${marketRev.freelancer == null && marketRev.corporation!=null}">
				                            	<div class="media mt-0 p-5">
			                                    	<div class="d-flex mr-3">
			                                      		 <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
			                                    	</div>
			                                   		 <div class="media-body">
				                                       	<h5 class="mt-0 mb-1 font-weight-semibold" name="cor_mname" id="cor_mnameR">${marketRev.corporation.cor_mname}
				                                       	<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
														<span class="fs-14 ml-2" name="marketRev_star" id="starR" > ${marketRev.marketRev_star}</span>  <i class="fa fa-star text-yellow"></i>
														</h5>
														<small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate"> ${marketRev.marketRev_rdate} </small>
			                                       		<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR"> ${marketRev.marketRev_cont}</p>		
													</div>
												</div>
	                                     	</c:when>
	                                    
	                                     	<c:otherwise>
	                                     		<div class="media mt-0 p-5">
			                                    	<div class="d-flex mr-3">
			                                      		<a href="#"><img class="media-object brround"  alt="64x64" src="../images/faces/male/1.jpg"> </a>
			                                    	</div>
			                                   		<div class="media-body">
				                                       	<h5 class="mt-0 mb-1 font-weight-semibold" name="mem_email"  id="mem_emailR">${marketRev.mem_email}
				                                       	<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
														<span class="fs-14 ml-2" name="marketRev_star" id="starR" > ${marketRev.marketRev_star}</span>  <i class="fa fa-star text-yellow"></i>
														</h5>
														<small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate"> ${marketRev.marketRev_rdate} </small>
			                                       		<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR"> ${marketRev.marketRev_cont}</p>	
													</div>
												</div>
	                                     	</c:otherwise>                                     	
                                </c:choose>
							</div>
						</c:forEach>	
					</c:if>		
					
					
					<c:if test="${fn:length(marketRev) == 0}">		
							<div class="card-body p-0">
								<div class="media mt-0 p-5">
					               <div class="media-body"><text align="center"> 등록된 리뷰가 없습니다</text></div>
								</div>
							</div>
					</c:if>		
										
				</div>
						
				<!--마켓리뷰페이징  -->		
				<c:if test="${fn:length(marketRev) > 0}">	
						<div class="center-block text-center">
						<ul class="pagination mg-b-0 page-0 ">
						
						<c:if test="${marketVORev.nowPage>1}">
							<li class="page-item">
								<a aria-label="Last" class="page-link" href="market-content?cntPerPageR=${marketVORev.cntPerPage}&nowPageR=${marketVORev.startPage}&market_num=${market.market_num}"><i class="fa fa-angle-double-left"></i></a>
							</li>
							<li class="page-item">
								<a aria-label="Next" class="page-link" href="market-content?cntPerPageR=${marketVORev.cntPerPage}&nowPageR=${marketVORev.nowPage+1}&market_num=${market.market_num}"><i class="fa fa-angle-left"></i></a>
							</li>
						</c:if>	
							
						<c:forEach begin="${marketVORev.startPage}" end="${marketVORev.endPage}" var="p">	
							<c:choose>
								<c:when test="${p==0}">
									
								</c:when>
								<c:when test="${p==marketVORev.nowPage}">
									<li class="page-item active">
										<a class="page-link" href="#">${p}</a>
									</li>
								</c:when>
								
								<c:when test="${p!=marketVORev.nowPage}">
									<li class="page-item">
										<a class="page-link" href="market-content?nowPageR=${p}&cntPerPageR=${marketVORev.cntPerPage}&market_num=${market.market_num}">${p}</a>
									</li>
								</c:when>
							</c:choose>	
						</c:forEach>	
						<c:if test="${marketVORev.nowPage != marketVORev.lastPage}">	
							<li class="page-item">
								<a aria-label="Next" class="page-link" href="market-content?cntPerPageR=${marketVORev.cntPerPage}&nowPageR=${marketVORev.nowPage+1}&market_num=${market.market_num}"><i class="fa fa-angle-right"></i></a>
							</li>
							<li class="page-item">
								<a aria-label="Last" class="page-link" href="market-content?cntPerPageR=${marketVORev.cntPerPage}&nowPageR=${marketVORev.lastPage}&market_num=${market.market_num}"><i class="fa fa-angle-double-right"></i></a>
							</li>
						</c:if>
						</ul>
						</div>
					</c:if>		
				<!--/마켓리뷰페이징-->	
				
				
						<br/><br/>
						<!--/Comments-->
					<form name="mrInput" id="mrInputID" action="marketRev-insert" >
						<input type="hidden" id="mem_emailREID" name="mem_email" value="${sessionScope.email}"><!-- value="hyunbin@naver.com" -->
					<!--<input type="hidden" id="marketRev_num" name="marketRev_num" value="${marketRev_num}"> -->
					<!--<input type="hidden" id="marketRev_rdate" name="marketRev_rdate" value="${marketRev_rdate}"> -->
					    <input type="hidden" id="market_num" name="market_num" value="${market.market_num}">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">리뷰 남기기</h3>
							</div>
							<div class="card-body">
								<div>
									<div class="ml-auto">
										<div class="rating-stars block">
											<input id="marketRev_starID" type="number" readonly="readonly" class="rating-value star"  name="marketRev_star"  value="${marketRev_star}"><!-- name="rating-stars-value" -->
											<div class="rating-stars-container">
												<div class="rating-star sm">
													<i class="fa fa-star"></i>
												</div>
												<div class="rating-star sm">
													<i class="fa fa-star"></i>
												</div>
												<div class="rating-star sm">
													<i class="fa fa-star"></i>
												</div>
												<div class="rating-star sm">
													<i class="fa fa-star"></i>
												</div>
												<div class="rating-star sm">
													<i class="fa fa-star"></i>
												</div>
											</div>
										</div>
									</div>									
									<div class="col-md-6 text-center align-items-center"></div>
									<!--
									<div class="form-group">
										<input type="text" class="form-control"  name="subject" id="name1" placeholder="subject">
									</div>
									  -->
									 <c:if test="${sessionScope.email !=null}" >
										<div class="form-group">
											<textarea class="form-control" id="marketRev_contID" name="marketRev_cont" rows="6" placeholder="Comment">${marketRev_cont}</textarea>
										</div>	
										<button type="button" class="btn btn-primary" id="checkMR">Send Reply</button>
									</c:if>		
									<c:if test="${sessionScope.email ==null}" >
										<div class="form-group">
											<textarea class="form-control" id="marketRev_contID" name="marketRev_cont" rows="6" placeholder="로그인 후 이용해주세요"></textarea>
										</div>	
									</c:if>		
									
								</div>
							</div>
						</div>
					</form>
						<br/><br/>
	
						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">문의</h3>
							</div>
						<c:if test="${fn:length(marketQA) > 0}">				
							 <div class="card-body p-0">									 
								<c:forEach var="marketQA" items="${marketQA}">
									<input type="hidden" name="marketQA_prnum" id="marketQA_prnumID" value="${marketQA.marketQA_prnum} "/>
									<input type="hidden" name="marketQA_lev" id="marketQA_levID" value="${marketQA.marketQA_lev} "/>
									<input type="hidden" name="marketQA_sun" id="marketQA_sunID" value="${marketQA.marketQA_sun} "/>
																	
									
									<div  id="replyItem<c:out value="${marketQA.marketQA_lev}"/>" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: <c:out value="${40*marketQA.marketQA_lev}"/>px; display: inline-block">
									<div class="media mt-0 p-5">
	                                   <c:choose>
	                                   
		                                    <c:when test="${marketQA.freelancer != null}">
			                      	    		 <div class="d-flex mr-3">
			                                        <a href="#"><img class="media-object brround" alt="64x64" src="../hifiveImages/freelancer/${marketQA.freelancer.free_fname}"> </a>
			                                      </div>
			                                      <div class="media-body"> 
						                             <h5 class="mt-0 mb-1 font-weight-semibold">${marketQA.freelancer.free_name}
														<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
													 </h5>
													 <small class="text-muted"><i class="fa fa-calendar"></i> ${marketQA.marketQA_rdate} </small>
													 
			                                     	 <c:choose>
				                                     	 <c:when test="${marketQA.marketQA_ox == 0}">
					                                        <p class="font-13  mb-2 mt-2">
					                                      		 <a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        	</p>
				                                        </c:when>
				                                        <c:when test="${marketQA.mem_email == sessionScope.email || sessionScope.name  == freeProfile.freelancer.free_fname}">
					                                        <p class="font-13  mb-2 mt-2">
					                                       		 <비밀글 입니다.> <br>
					                                            <p class="font-13  mb-2 mt-2">
					                                      		 	<a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        		</p>
				                                        	</p>
				                                        </c:when>
				                                         <c:when test="${marketQA.marketQA_ox == 1}">
					                                        <p class="font-13  mb-2 mt-2"> 비밀글 입니다.</p>
				                                        </c:when>
				                                         
			                                        </c:choose> 
			                                        
			                                  <!-- 모달로 정보보내기
			                                   <button type="button"  data-toggle="modal" data-target="#Comment" data-prnum="${marketQA.marketQA_prnum}" data-lev="${marketQA.marketQA_lev}" data-sun="${marketQA.marketQA_sun}" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></button>
			                                   --> 
			                                    <c:choose>
			                                     	<c:when test="${sessionScope.email == marketQA.mem_email}">
			                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
														<a href="" class="mr-2" data-toggle="modal" data-target="Upload"><span class="">수정</span></a>
														<a href="" class="mr-2" data-toggle="modal"><span class="">삭제</span></a>
													</c:when>
													<c:when test="${empty sessionScope.name}">
													</c:when>
													<c:when test="${!sessionScope.email != marketQA.mem_email}">
														<a href="#" onclick="QA('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
													</c:when>
												  </c:choose>
												 </div>                        
		                                    </c:when>
		                                    
		                                     <c:when test="${marketQA.freelancer == null && marketQA.corporation.cor_mname== null}">
		                                  		  <div class="d-flex mr-3">
			                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
			                                      </div>
			                                      <div class="media-body"> 
						                             <h5 class="mt-0 mb-1 font-weight-semibold">${marketQA.mem_email}
														 <span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
													 </h5>
													 <small class="text-muted"><i class="fa fa-calendar"></i> ${marketQA.marketQA_rdate} </small>
			                                     	 <c:choose>
				                                     	<c:when test="${marketQA.marketQA_ox == 0}">
					                                       <p class="font-13  mb-2 mt-2">
					                                      		 <a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        	</p>
				                                        </c:when>
				                                        <c:when test="${marketQA.mem_email == sessionScope.email || sessionScope.name  == freeProfile.freelancer.free_fname}">
					                                        <p class="font-13  mb-2 mt-2">
					                                       		 <비밀글 입니다.> <br>
					                                           <p class="font-13  mb-2 mt-2">
					                                      		 <a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        	</p>
				                                        	</p>
				                                        </c:when>
				                                         <c:when test="${marketQA.marketQA_ox == 1}">
					                                        <p class="font-13  mb-2 mt-2"> 비밀글 입니다.</p>
				                                        </c:when>
				                                         
			                                        </c:choose> 
													 <c:choose>
			                                     	<c:when test="${sessionScope.email == marketQA.mem_email}">
			                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
														<a href="" class="mr-2" data-toggle="modal" data-target="Upload"><span class="">수정</span></a>
														<a href="" class="mr-2" data-toggle="modal"><span class="">삭제</span></a>
													</c:when>
													<c:when test="${empty sessionScope.name}">
													</c:when>
													<c:when test="${!sessionScope.email != marketQA.mem_email}">
														<a href="#" onclick="QA('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
													</c:when>
												  </c:choose>
												 </div>                         
		                                    </c:when>
		                                    
		                                    <c:otherwise>
					                            <div class="d-flex mr-3">
			                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
			                                    </div>
			                                    <div class="media-body"> 
						                            <h5 class="mt-0 mb-1 font-weight-semibold">${marketQA.corporation.cor_mname}
														<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
												    </h5>
													<small class="text-muted"><i class="fa fa-calendar"></i> ${marketQA.marketQA_rdate} </small>
			                                     	<c:choose>
				                                     	 <c:when test="${marketQA.marketQA_ox == 0}">
					                                        <p class="font-13  mb-2 mt-2">
					                                      		 <a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        	</p>
				                                        </c:when>
				                                         <c:when test="${marketQA.mem_email == sessionScope.email || sessionScope.mail  == freeProfile.freelancer.mem_email}">
					                                        <p class="font-13  mb-2 mt-2">
					                                       		 <비밀글 입니다.> <br>
					                                           <p class="font-13  mb-2 mt-2">
					                                      		 <a href="#" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
				                                        	</p>
				                                        	</p>
				                                        </c:when>
				                                         <c:when test="${marketQA.marketQA_ox == 1}">
					                                        <p class="font-13  mb-2 mt-2"> 비밀글 입니다.</p>
				                                        </c:when>
			                                      	</c:choose> 
													<c:choose>
				                                     	<c:when test="${sessionScope.email == marketQA.mem_email}">
				                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
															<a href="" class="mr-2" data-toggle="modal" data-target="Upload"><span class="">수정</span></a>
															<a href="" class="mr-2" data-toggle="modal"><span class="">삭제</span></a>
														</c:when>
														<c:when test="${empty sessionScope.name}">
														</c:when>
														<c:when test="${!sessionScope.email != marketQA.mem_email}">
																<a href="#" onclick="QA('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
														</c:when>
												  	</c:choose>
												</div>
		                                    </c:otherwise>
		                                    
		                                </c:choose>						
								</div>	
								</div>
								</c:forEach>
							</div>
						</c:if>	
						<c:if test="${fn:length(marketQA) == 0}">		
							<div class="card-body p-0">
								<div class="media mt-0 p-5">
					               <div class="media-body"><text align="center"> 등록된 문의가 없습니다</text></div>
								</div>
							</div>
						</c:if>		
						</div>

					<c:if test="${fn:length(marketQA) > 0}">							
						<div class="center-block text-center">
							<ul class="pagination mg-b-0 page-0 ">
							
							<c:if test="${marketVOQA.nowPage > 1 }">
								<li class="page-item">
									<a aria-label="Last" class="page-link" href="market-content?cntPerPageQ=${marketVOQA.cntPerPage}&nowPageQ=${marketVOQA.startPage}&market_num=${market.market_num}"><i class="fa fa-angle-double-left"></i></a>
								</li>
								<li class="page-item">
									<a aria-label="Next" class="page-link" href="market-content?cntPerPageQ=${marketVOQA.cntPerPage}&nowPageQ=${marketVOQA.nowPage-1}&market_num=${market.market_num}"><i class="fa fa-angle-left"></i></a>
								</li>
							</c:if>
							<c:forEach begin="${marketVOQA.startPage}" end="${marketVOQA.endPage }" var="p" >
								<c:choose>		
									<c:when test="${p==0}">
					
									</c:when>
									<c:when test="${marketVOQA.nowPage == p}">
										<li class="page-item active">
											<a class="page-link" href="#">${p}</a>
										</li>
									</c:when>
									<c:when test="${marketVOQA.nowPage != p }">
										<li class="page-item">
											<a class="page-link" href="market-content?cntPerPageQ=${marketVOQA.cntPerPage}&nowPageQ=${p}&market_num=${market.market_num}">${p}</a>
										</li>
									</c:when>
								</c:choose>
							</c:forEach>
							
							<c:if test="${marketVOQA.nowPage != marketVOQA.lastPage }">
								<li class="page-item">
									<a aria-label="Next" class="page-link" href="market-content?cntPerPageQ=${marketVOQA.cntPerPage}&nowPageQ=${marketVOQA.nowPage+1}&market_num=${market.market_num}"><i class="fa fa-angle-right"></i></a>
								</li>
								<li class="page-item">
									<a aria-label="Last" class="page-link" href="market-content?cntPerPageQ=${marketVOQA.cntPerPage}&nowPageQ=${marketVOQA.lastPage}&market_num=${market.market_num}"><i class="fa fa-angle-double-right"></i></a>
								</li>
							</c:if>
							</ul>
						</div>
					</c:if>
					
		
						<br/><br/>
						<!--/Comments-->
						
					<form name="mqInput" id="mqInput" action="marketQA-insert"  method="post"  enctype="multipart/form-data" >
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">문의 남기기</h3>
							</div>
							<div class="card-body">
								<div>
									<c:if test="${sessionScope.name !=null}" >
										<input type="hidden" id="market_numQAID" name="market_num" value="${market.market_num}">
								    	 <input type="hidden" id="mem_emailModalQAID" name="mem_email" value= "${sessionScope.email}">
										<div class="form-group">
											<input type="text" class="form-control" id="marketQA_subID" name="marketQA_sub" placeholder="subject">
										</div>
										<div class="form-group">
											<textarea class="form-control" name="marketQA_cont" id="marketQA_contID" rows="6" placeholder="Comment"></textarea>
										</div><br>
										<div class="custom-file">
											<input  type="file" multiple="multiple" class="custom-file-input" name="fname" id="file" onchange="upfile()">
											<label class="custom-file-label" id="cor_fname_label">file upload</label>
										</div><br>
										
										<button type="button"  id="ididi" onclick="mqajax(0,0,0);" class="btn btn-primary" >Send Reply</button>
										
										&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 
										&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
										&emsp; &emsp; &emsp; &emsp;
										<input type="radio"  name="marketQA_ox" value="1" checked="">비밀글
										<input type="radio"  name="marketQA_ox" value="0" checked="">공개글
									</c:if>
									
									<c:if test="${sessionScope.email ==null}" >
										<div class="form-group">
											<textarea class="form-control" name="marketQA_cont"  rows="6" placeholder="로그인 후 이용해주세요"></textarea>
										</div>
									</c:if>
									
									<!--
										<div class="d-md-flex ad-post-details">
											<label class="custom-control custom-radio mb-2 mr-4">
												<input type="radio" class="custom-control-input" name="radios2" value="option1" checked="">
												<span class="custom-control-label"><a href="#" class="text-muted">비밀글 </a></span>
											</label>
											<label class="custom-control custom-radio  mb-2">
												<input type="radio" class="custom-control-input" name="radios2" value="option2" >
												<span class="custom-control-label"><a href="#" class="text-muted">공개글</a></span>
											</label>
										</div>
									  -->
								</div>
							</div>
						</div>
					</form>
					</div>
					<!--Right Side Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Posted By</h3>
							</div>
							<div class="card-body  item-user">
								<div class="profile-pic mb-0">
									<img src="../hifiveImages/freelancer/${freeProfile.freelancer.free_fname}" class="brround avatar-xxl" alt="user">
									<div class="">
										<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-semibold">${freeProfile.freelancer.free_name}</h4></a>
										경력:
										<c:choose>
										<c:when test="${freeProfile.freelancerProfile.pro_exp} !=null">
											<span class="text-muted">${freeProfile.freelancerProfile.pro_exp}</span>년
										</c:when>
										<c:otherwise>
											<span class="text-muted">프로필을 적어주세요</span>
										</c:otherwise >
										</c:choose>
										
										<h6 class="mt-2 mb-0"><a href="#" class="btn btn-primary btn-sm">프로필 보기</a></h6>
									</div>
								</div>
							</div>
						<!--	
							<div class="card-body item-user">
								<h4 class="mb-4">Contact Info</h4>
								<div>
									<h6><span class="font-weight-semibold"><i class="fa fa-envelope mr-2 mb-2"></i></span><a href="#" class="text-body"> robert123@gmail.com</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-phone mr-2  mb-2"></i></span><a href="#" class="text-primary"> 0-235-657-24587</a></h6>
									<h6><span class="font-weight-semibold"><i class="fa fa-link mr-2 "></i></span><a href="#" class="text-primary">http://spruko.com/</a></h6>
								</div>
								
								<div class=" item-user-icons mt-4">
									<a href="#" class="facebook-bg mt-0"><i class="fa fa-facebook"></i></a>
									<a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
									<a href="#" class="google-bg"><i class="fa fa-google"></i></a>
									<a href="#" class="dribbble-bg"><i class="fa fa-dribbble"></i></a>
								</div>
							  	
							</div>
						-->	
							
								<div class="card-footer">
									<div style="text-align: right; vertical-align:center;">
										<span style="font-size:20px">결제금액</span></br>
										<span style="font-size:30px">${market.market_price}</span>
									</div>
								</div>
								<div class="card-footer">	
									<div style="text-align: right;">
								
								<!--	<a href="marketPayments" class="btn btn-info"><i class="ti-credit-card"></i> 문의하기</a> 
										<a href="marketPayments" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> 구매하기</a>-->
										<a href="market-payments" class="btn btn-primary2"><i class="ti-credit-card"></i > 구매하기</a>
									</div>
								</div>
						
						</div>
				<!--		
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Keywords</h3>
							</div>
							<div class="card-body product-filter-desc">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">Home</a></li>
										<li><a href="#">Real estate</a></li>
										<li><a href="#">2BHK</a></li>
									</ul>
								</div>
							</div>
						</div>
				-->		
						<!--
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Shares</h3>
							</div>
							<div class="card-body product-filter-desc">
								<div class="product-filter-icons text-center">
									<a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
									<a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
									<a href="#" class="google-bg"><i class="fa fa-google"></i></a>
									<a href="#" class="dribbble-bg"><i class="fa fa-dribbble"></i></a>
									<a href="#" class="pinterest-bg"><i class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						  -->
					<!--
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Map location</h3>
							</div>
							<div class="card-body">
								<div class="map-header">
									<div class="map-header-layer" id="map2"></div>
								</div>
							</div>
						</div>
					
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Search Ads</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="text2" placeholder="What are you looking for?">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected>All Categories</option>
										<option value="2">RealEstate</option>
										<option value="3">Restaurant</option>
										<option value="4">Beauty</option>
										<option value="5">Jobs</option>
										<option value="6">Services</option>
										<option value="7">Vehicle</option>
										<option value="8">Education</option>
										<option value="9">Electronics</option>
										<option value="10">Pets & Animals</option>
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
					-->
					<!--
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Popular Tags</h3>
							</div>
							<div class="card-body">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">RealEstate</a></li>
										<li><a href="#">Vehicles</a></li>
										<li><a href="#">Events</a></li>
										<li><a href="#">Health& Beauty</a></li>
										<li><a href="#">Services</a></li>
										<li><a href="#">Restaurant</a></li>
										<li><a href="#">Events</a></li>
										<li><a href="#">Jobs</a></li>
										<li><a href="#">Automobiles</a></li>
										<li><a href="#">Computer</a></li>
										<li><a href="#" class="mb-0">Electronics</a></li>
									</ul>
								</div>
							</div>
						</div>
					-->	
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">확인한 게시물들</h3>
							</div>
							<div class="card-body pb-3">
								<ul class="vertical-scroll">
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/1.png"  class="w-8 bg-secondary border"/></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/2.png" class="w-8 bg-secondary border"/></td>
												<td><h5 class="mb-1 ">Trending New Model Watches</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/3.png" class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/4.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Trending New Model Watches</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/5.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Watch</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/6.png" class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Best New Model Shoes</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
									<li class="news-item">
										<table cellpadding="4">
											<tr>
												<td><img src="../images/products/7.png"  class="w-8 bg-secondary border" /></td>
												<td><h5 class="mb-1 ">Trending New Model Shoes</h5><a href="#" class="btn-link">View Details</a><span class="float-right font-weight-bold">$17</span></td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>

						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">유사한 프리랜서</h3>
							</div>
							<div class="card-body pb-3">
								<div class="rated-products">
									<ul class="vertical-scroll">
										<li class="item">
											<div class="media m-0 mt-0 p-5">
												<img class="mr-4" src="../images/products/toys.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Kids Toys</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$17 - $29</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class="mr-4" src="../images/products/1.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Leather Watch</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$22 - $45</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class=" mr-4" src="../images/products/4.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Digital Watch</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-half-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$35 - $72</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media p-5 mt-0">
												<img class=" mr-4" src="../images/products/6.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Sports Shoe</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-half-o text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$12 - $21</div>
												</div>
											</div>
										</li>
										<li class="item">
											<div class="media  mb-0 p-5 mt-0">
												<img class=" mr-4" src="../images/products/8.png" alt="img">
												<div class="media-body">
													<h4 class="mt-2 mb-1">Ladies shoes</h4>
													<span class="rated-products-ratings">
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
														<i class="fa fa-star-o text-warning"> </i>
													</span>
													<div class="h5 mb-0 font-weight-semibold mt-1">$89 - $97</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--Right Side Content-->
				</div>
			</div>
		</section>
		<!--/Add listing-->

		<!-- Message Modal -->

<!--Comment Modal -->
<!-- 문의 모달창 -->
	 <form name="mqModal" id="mqModal" action="marketQARE-insert" method="post">
       <div class="modal fade" id="Comment" tabindex="-1" role="dialog"  aria-hidden="true">
	        <div class="modal-dialog" role="document">
	       
	           <div class="modal-content">
	          
	         	 <input type="hidden" id="REmarketQA_prnum" name="marketQA_prnum" >
	          	 <input type="hidden" id="REmarketQA_lev" name="marketQA_lev">
	             <input type="hidden" id="REmarketQA_sun" name="marketQA_sun">
		  	    	 
				 <input type="hidden" id="market_numModalQAID" name="market_num" value="${market.market_num}">
			     <input type="hidden" id="mem_emailModalQAID" name="mem_email" value= "${sessionScope.email}">
	              <div class="modal-header">
	                 <h5 class="modal-title">댓글쓰기</h5>
	                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                   <span aria-hidden="true">&times;</span>
	                 </button>
	              </div>
	              <div class="modal-body">
	               	 <div class="form-group mb-0">
	                   <input type="text" class="form-control" name="marketQA_sub" id="marketQA_subID" rows="6" placeholder="제목 입력">
	                 </div>
	                 <div class="form-group mb-0">
	                  	<textarea class="form-control" name="marketQA_cont" id="marketQA_contID"  rows="6" placeholder="메세지 입력"></textarea>
	                 </div>
	              </div>
	              <div class="modal-footer">
	                 <div class="col">
	                    <label class="custom-control custom-checkbox mb-0">
		                    <input type="radio"  name="marketQA_ox" value="1" checked="">비밀글
							<input type="radio"  name="marketQA_ox" value="0" checked="">공개글
	        <!--	     
	        			  <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
	                       <span class="custom-control-label" name="marketQA_ox"  value="1" checked="" >비밀글</span>
	                  -->       
	                    </label>
	                 </div>   
	                 <div class="col col-auto">
	                    <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
	                    <button type="button" id="submitQARE" class="btn btn-primary">확인</button>
	                 </div>
	              </div>
	           </div>
	           
	        </div>
	    </div>
	</form>
<!-- 문의 모달창 -->		

<!--Scrolling Modal-->
			<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					  </div>
					   <div class="modal-body">
						<p id="cont"><text id="mqcont"></text></p>
					   </div>
					   <div class="carousel-inner">
						<div class="carousel-item active"> <img src="../hifiveImages/market/marketQAFiles/" alt="이미지 없음"> </div>
					   </div>				  
					  <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					  </div>
					</div>
				</div>
			</div>
<!--  -->



	
		<div class="modal fade" id="contact" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Send Message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="customername" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="customeremail" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Send</button>
					</div>
				</div>
			</div>
		</div>
		
		<!--Comment Modal -->

		<!-- Report Modal -->
		<div class="modal fade" id="report" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="examplereportLongTitle">Report Abuse</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="report-name" placeholder="Enter url">
						</div>
						<div class="form-group">
							<select name="country" id="select-countries2" class="form-control custom-select">
								<option value="1" selected>Categories</option>
								<option value="2">Spam</option>
								<option value="3">Identity Theft</option>
								<option value="4">Online Shopping Fraud</option>
								<option value="5">Service Providers</option>
								<option value="6">Phishing</option>
								<option value="7">Spyware</option>
							</select>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="report-email" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success" >Submit</button>
					</div>
				</div>
			</div>
		</div>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->

			    

<script>

	$("#checkMR").on('click', function(){
		// alert("mrInput.marketRev_cont.value:" +mrInput.marketRev_cont.value);
		// alert("mrInput.marketRev_star.value:" +mrInput.marketRev_star.value);
		// console.log("mrInput.marketRev_star.value:" +mrInput.marketRev_star.value);
		// console.log("mrInput.marketRev_cont.value:" +mrInput.marketRev_cont.value);
	 
	    if ($.trim($("#marketRev_contID").val()) == "") {
	        alert("글 내용을 입력해주세요.");
	        $("#marketRev_contID").focus();
	        return;
	   		 }
	    if (document.getElementById('marketRev_starID')){//별점이 존재한다면 밑에 실행
		    if ($.trim($("#marketRev_starID").val()) == ""){
		        alert("별점을 선택해주세요.");
		        $("#marketRev_starID").focus();
		        return;
		    }
	    } 
		  var queryString = $("#mrInputID").serialize();
		  var mem_email = $("#mem_emailID").val();
		  var market_num = $("#market_numID").val();
		  var marketRev_star = $("#marketRev_starID").val();
		  var marketRev_cont = $("#marketRev_contID").val();
		  var arr=[marketRev_cont,marketRev_star,market_num,mem_email]


		   var url=$("#mrInputID").attr("action");
		 //   console.log("url:"+url);
		//    console.log("queryString:"+queryString);
	    $.ajax({ //free_name,content,star,rdate
	    	type:'post',
	    	url:url,
	    	data:queryString,
	    	dataType:'json',
	    	async :false,
	    	error:onError,
	    //	beforeSend:{},
	    	success:function onSuccess(data){
    	//	for(var i=0; i<1; i++){ 
    			console.log(data);	
    			 console.log("1"+data[0].marketRev_cont);	
    			 console.log("2"+data[0].marketRev_star);	
    			 console.log("3"+data[0].corporation.cor_name);	
    			 console.log("4"+data[0].freelancer.free_name);	
    			 console.log("5"+data[0].mem_email);	
    			 console.log("6"+data[0].marketRev_rdate);	
    			 console.log("7"+data[0].corporation.cor_fname);	 
    			 console.log("8"+data[0].freelancer.free_fname);
    			 //서버로부터 받은 날짜데이터를 포맷에맞게 바꾸기
    			 
    			 var cor=data[0].corporation.cor_name;
    			 var free=data[0].freelancer.free_name;
    			// console.log("cor"+cor); console.log("free"+free);
    			 var someTimestamp = Number(data[0].marketRev_rdate);
    			 var dateTime = new Date(someTimestamp);
    			 dateTime=dateToYYYYMMDD(dateTime);
	
    			 revfree='';
    			 revcor ='';
    			 revmem='';
    			 rev='';
	 			revfree +='<div class="media mt-0 p-5" ><div class="d-flex mr-3"><a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/freelancer/'+data[0].freelancer.free_fname+'"> </a></div>';
	 			revfree +='<div class="media-body"><h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">'+data[0].freelancer.free_name; 
   	   			revfree +='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
   	   			revfree +='<span class="fs-14 ml-2" name="marketRev_star" id="starR" >'+data[0].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
   	   			revfree +='</h5><small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate">'+dateTime+ '</small>';
   	   			revfree +='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR">'+ data[0].marketRev_cont+'</p></div></div>'
   	   			
	 			revcor +='<div class="media mt-0 p-5" ><div class="d-flex mr-3"><a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/corporation/'+data[0].corporation.cor_fname+'"> </a></div>';
	 			revcor +='<div class="media-body"><h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">'+data[0].corporation.cor_mname;
	 			revcor +='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
   	   			revcor +='<span class="fs-14 ml-2" name="marketRev_star" id="starR" >'+data[0].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
   	   			revcor +='</h5><small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate">'+dateTime+ '</small>';
   	   			revcor +='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR">'+ data[0].marketRev_cont+'</p></div></div>'
   	   			 
   	   			revmem +='<c:if  test="${marketRev[0].freelancer== null && marketRev[0].corporation==null }"> <a href="#"><img class="media-object brround"  alt="64x64" src="../images/faces/male/1.jpg"> </a></div>';
   	   			revmem +='<div class="media-body"><h5 class="mt-0 mb-1 font-weight-semibold" name="mem_email"  id="mem_emailR">'+data[0].mem_email+'</c:if>';
   	   			revmem +='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
   	   			revmem +='<span class="fs-14 ml-2" name="marketRev_star" id="starR" >'+data[0].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
   	   			revmem +='</h5><small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate">'+dateTime+ '</small>';
   	   			revmem +='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR">'+ data[0].marketRev_cont+'</p></div></div>'
	   	   		if(cor !=null){
	   	   			rev=revcor;
	   	 		}else if(free != null){
	   	 			rev=revfree;
	   	 		}else{
	   	 			rev=revmem;
	   	 		}
				 
	  			 
	  		/*	
	  			if("${fn:length(marketRev)}" > 0){	
	  				$('#ajaxRev').prepend(rev);	
	  			}
	  			var child=$('#ajaxRev').children;
	  			console.log("@@@@@child:"+child.length);
	  			var remv=$("child:eq(3)");
	  			if(child.length == 4 || child.length > 4){	
	  			//	$('#ajaxRev').lastChild.remove();
	  			//	$("#ajaxRev:eq(3)").remove();
	  				$("#ajaxRev:last-child").remove();	
	  				$('#ajaxRev').prepend(rev);
		  				
		  			}
	  		*/	
	  			/*
	  			var remv=$("#ajaxRev:eq(3)");
	  			console.log("remv"+remv);
	  			if("${fn:length(marketRev)}" >= 4){	
	  			//	$('#ajaxRev').lastChild.remove();
	  			//	$("#ajaxRev:eq(3)").remove();
	  				$("#ajaxRev:last-child").remove();	
	  				$('#ajaxRev').prepend(rev);
	  				
	  			}*/
	  			//오류 댓글 4개쓰면 2페이지로 넘어가면서 댓글이 사라짐, 리로드 = 다시생김
	  			
	  			var ele = document.getElementById('ajaxRev');
				var eleCount = ele.childElementCount;
				console.log("eleCount__"+eleCount);
				console.log("22eleCount__"+"${fn:length(marketRev)}");
	  			if("${fn:length(marketRev)}" == 0){		
  					//$('#ajaxRev').html(html);
	  				location.reload();
	  			}else if("${fn:length(marketRev)}" >= 3){
	  				$("#ajaxRev:last-child").remove();	
  					$('#ajaxRev').prepend(rev);
	  			}else if("${fn:length(marketRev)}" > 0){
	  				$('#ajaxRev').prepend(rev);
	  			}
	    			 /*			 
	    			  $('#contentR').text(data[i].marketRev_cont);
	    			  $('#starR').text(data[i].marketRev_star);
	    			  $('#cor_mnameR').text(data[i].corporation.cor_name);
	    			  $('#free_nameR').text(data[i].freelancer.free_name);
	    			  $('#mem_emailR').text(data[i].mem_email);
	    			  $('#rdateR').text(data[i].marketRev_rdate);
	    			  $('#corfnameR').text(data[i].corporation.cor_fname);
	    			  $('#freefnameR').text(data[i].freelancer.free_fname);
	    	     
	    			 $("#contentR").text(data[i].freelancer.free_fname);
	    			 $("#starR").text(data[i].marketRev_star);
	    			 $("#cor_mnameR").text(data[i].corporation.cor_name);
	    			 $("#free_nameR").text(data[i].freelancer.free_name);
	    			 $("#mem_emailR").text(data[i].mem_email);
	    			 $("#rdateR").text(data[i].marketRev_rdate);  
	    			 $("#corfnameR").text(data[i].corporation.cor_fname);
	    			 $("#freefnameR").text(data[i].freelancer.free_fname);
	    			 */
	               // }
	    	}
	    });
	});
	
	
	function onError(request,status,error){
	    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	}
		
	function dateToYYYYMMDD(date){
	    function pad(num) {
	        num = num + '';
	        return num.length < 2 ? '0' + num : num;
	    }
	    return date.getFullYear() + '-' + pad(date.getMonth()+1) + '-' + pad(date.getDate());
	}

	

</script>
<script>
//파일선택시 글씨보이게하는 펑션
	   function upfile(){
	      var filename = document.getElementById("file").value;
	      document.getElementById("cor_fname_label").innerHTML="파일 선택됨";
	   }   
	   
//문의파일보는 ajax
		function QAFile(Qn,MN){
			var marketQA_num=Qn;
			var market_num=MN;
			var images='';
		   $.ajax({
			   	type:'get',
		    	url:'marketQAFile_show?marketQA_num='+marketQA_num+'&market_num='+market_num,
		    	dataType:'json',
		    	async :true,
		    	error:onError,
		    	success:function onSuccess(marketQA){
		    		console.log("0000"+marketQA.marketQA.marketQA_cont);
		    		//console.log("111111"+marketQA.marketQAFile[1].marketQAFile_fname);
		    		if(marketQA.marketQAFile.length>0){
			    		for(i=0;i<marketQA.marketQAFile.length;i++){	    			
			    			images +='<div class="carousel-inner">';
			    			images +='<div class="carousel-item active"> <img src="../hifiveImages/market/marketQAFiles/'+marketQA.marketQAFile[i].marketQAFile_fname+'"alt="img"> </div>';
			    			images +='</div>';	
			    		}
			    		$("#exampleModalLong .carousel-inner").html(images);
		    		}
		    		$(".modal-body #cont #mqcont").text(marketQA.marketQA.marketQA_cont); 
		    	}	
		   	}); 	    	
	   	}
//문의글파일포함 insert후 Listing하는 AJAX
	   function mqajax(prnum,lev,sun){
		   alert(prnum);
		   var url=$("#mqInput").attr("action");
		   var formData = new FormData($("#mqInput")[0]);

			$.ajax({
			 	type:'POST',
		    	url: url,
		    	dataType:'json',
		    	data: formData,
		    	processData: false,
		    	cache:false,
		    	contentType: false,
		    	async :false,
		    	error:onError,
		    	success:function onSuccess(marketQAList){
		    		for(i=0; i<marketQAList.length; i++){//프리네임, 날짜 ,제목
		    		//	console.log("11111marketQAList"+marketQAList);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].marketQA_cont);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].marketQA_rdate);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].freelancer.free_name);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].freelancer.free_fname);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].corporation.cor_mname);
		    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].corporation.cor_fname);
		    		}
		    	}	
		   	}); 
			return false;
		}
		
		//문의 리댓글 만따로빼려면이거씀
	  function mqajaxRE(prnum,lev,sun){
			alert(prnum);
			alert(lev);
			alert(sun);
		    
		   $('#Comment').on('show.bs.modal', function (event) {
				//show 호출시 넘겨준 값을 이용하여 ajax 등을 통해 modal 을 띄울때 동적으로 바뀌어야 하는 값을 얻어온다.  
				//얻어온 값을 이용하여, modal 에서 동적으로 바뀌어야 하는 값을 바꾸어 준다..    
				$(".modal-content #REmarketQA_prnum").val( prnum );
				$(".modal-content #REmarketQA_lev").val( lev );
				$(".modal-content #REmarketQA_sun").val( sun );
        	});           	
		}
	  $('#submitQARE').click(function(){   
		  console.log("ddddddddd");
		  var url=$("#mqModal").attr("action");
		  var QAqueryString = $("#mqModal").serialize();
		  
		   $.ajax({
			 	type:'POST',
		    	url: url,
		    	dataType:'json',
		    	async :false,
		    	data:QAqueryString,
		    	error:onError,
		    	success:function onSuccess(marketQAList){
		    		console.log("11111marketQAList"+marketQAList);
		    		for(i=0; i<marketQAList.length; i++){//프리네임, 날짜 ,제목
			    		//	console.log("11111marketQAList"+marketQAList);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].marketQA_cont);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].marketQA_rdate);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].freelancer.free_name);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].freelancer.free_fname);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].corporation.cor_mname);
			    		//	console.log("222222marketQAList[i].marketQA_num"+marketQAList[i].corporation.cor_fname);
			    	}
		    	}	
		   	}); 	    
	   });
	
		

		
	/*   
	    var PRNUM="";
	    var LEV="";
	    var SUN="";
	    
	    $(document).ready(function() {     
	        $('#mqModal').on('show.bs.modal', function(event) {          
	        	PRNUM = $(event.relatedTarget).data('prnum');
	        	LEV = $(event.relatedTarget).data('lev');
	        	SUN = $(event.relatedTarget).data('sun');
	        });
	    });
	  */  
	</script>
