
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
											<div class="carousel-item active"> <img src="../hifiveImages/marketThumbnails/${market.market_fname}" alt="img"> </div>
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
						<c:if test="${sessionScope.class_num!=1}">
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
						</c:if>
							<c:if test="${sessionScope.class_num==1 && (market.market_state==0 ||market.market_state==2)}">
								<button type="button" id="admitBtn" class="btn btn-primary btn-sm" ><i class="fa fa-check"></i>승인하기</button>															
								<button type="button" id="refuseBtn" class="btn btn-secondary btn-sm "><i class="fa fa-close"></i>거절하기</button>
							</c:if>
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
				      
				    <!-- 관리자small Modal -->   
				      <div id="smallModal2" class="modal fade">
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
				                  <p>글을 정말 거절하시겠습니까?</p>
				               </div>
				               <div class="modal-footer">
				                 <a class="btn btn-primary" style="color:white;" href="">네</a> 			                  
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

										<span class="rated-products-ratings" id="changeStar">
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
			                                      		  <a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/free_thumb/${marketRev.freelancer.free_fname}"> </a>
			                                    	</div>
			                                   		 <div class="media-body">
				                                       	<h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">${marketRev.freelancer.free_name}
				                                       	<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
														<span class="fs-14 ml-2" name="marketRev_star" id="starR" > ${marketRev.marketRev_star}</span>  <i class="fa fa-star text-yellow"></i>
														</h5>														
														<small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate"> ${marketRev.marketRev_rdate} </small>
			                                       		<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR"> ${marketRev.marketRev_cont}</p>			
													<c:choose>
				                                     	<c:when test="${sessionScope.email == marketRev.mem_email}">
															<a href="" class="mr-2" data-toggle="modal" data-target="#REVUpdate" onclick="Revupdate(${marketRev.marketRev_num},${marketRev.market_num},'${marketRev.marketRev_cont}',${marketRev.marketRev_star});" ><span class="">수정</span></a>
															<a href="" class="mr-2" data-toggle="modal" onclick="Revdelete(${marketRev.marketRev_num},${marketRev.market_num});" ><span class="">삭제</span></a>
														</c:when>
														<c:when test="${empty sessionScope.name}">
														</c:when>
												  	</c:choose>	
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
													<c:choose>
				                                     	<c:when test="${sessionScope.email == marketRev.mem_email}">
															<a href="" class="mr-2" data-toggle="modal" data-target="Upload"><span class="">수정</span></a>
															<a href="" class="mr-2" data-toggle="modal"><span class="">삭제</span></a>
														</c:when>
														<c:when test="${empty sessionScope.name}">
														</c:when>
												  	</c:choose>
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
													
													<c:choose>
				                                     	<c:when test="${sessionScope.email == marketRev.mem_email}">
															<a href="" class="mr-2" data-toggle="modal" data-target="Upload"><span class="">수정</span></a>
															<a href="" class="mr-2" data-toggle="modal"><span class="">삭제</span></a>
														</c:when>
														<c:when test="${empty sessionScope.name}">
														</c:when>
												  	</c:choose>													
													
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
								<div id="htmlQA">
									<input type="hidden" name="marketQA_prnum" id="marketQA_prnumID" value="${marketQA.marketQA_prnum} "/>
									<input type="hidden" name="marketQA_lev" id="marketQA_levID" value="${marketQA.marketQA_lev} "/>
									<input type="hidden" name="marketQA_sun" id="marketQA_sunID" value="${marketQA.marketQA_sun} "/>

									<div  id="replyItem<c:out value="${marketQA.marketQA_lev}"/>" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: <c:out value="${40*marketQA.marketQA_lev}"/>px; display: inline-block">
									<div class="media mt-0 p-5">
	                                   <c:choose>
	                                   
		                                    <c:when test="${marketQA.freelancer != null}">
			                      	    		 <div class="d-flex mr-3">
			                                        <a href="#"><img class="media-object brround" alt="64x64" src="../hifiveImages/free_thumb/${marketQA.freelancer.free_fname}"> </a>
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
				                                         

<<<<<<< HEAD
			                                      		 <a href="javascript:void(0)" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong"> ${marketQA.marketQA_sub}</a><br>
		                                        	</p>
		                                        </c:when>
		                                        <c:when test="${marketQA.mem_email == sessionScope.email || sessionScope.email  == freeProfile.freelancer.mem_email}">
			                                        <p class="font-13  mb-2 mt-2">
			                                       		 <비밀글 입니다.> <br>
			                                            <p class="font-13  mb-2 mt-2">
			                                      		 	<a href="javascript:void(0)" onclick="javascript:QAFile('${marketQA.marketQA_num}','${marketQA.market_num}');"  data-toggle="modal" data-target="#exampleModalLong">${marketQA.marketQA_sub}</a><br>
		                                    			</p>
		                                        	</p>
		                                        </c:when>
		                                        <c:when test="${marketQA.marketQA_ox == 1}">
			                                        <p class="font-13  mb-2 mt-2"> 비밀글 입니다.</p>
		                                        </c:when>	                                         
	                                        </c:choose> 
	                                        
			                                  <!-- 모달로 정보보내기
			                                   <button type="button"  data-toggle="modal" data-target="#Comment" data-prnum="${marketQA.marketQA_prnum}" data-lev="${marketQA.marketQA_lev}" data-sun="${marketQA.marketQA_sun}" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></button>
			                                   --> <!-- onclick="mqajax(0,0,0);" -->
	                                    	<c:choose>
		                                     	<c:when test="${sessionScope.email == marketQA.mem_email}">
		                                  			<a href="javascript:void(0)" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글 </span></a>
													<a href="javascript:void(0)" class="mr-2" onclick="QAupdate('${marketQA.marketQA_sub}','${marketQA.marketQA_cont}',${marketQA.marketQA_num},${marketQA.market_num},${marketQA.marketQA_ox});"  data-toggle="modal" data-target="#MQUpdate" ><span class="">수정</span></a>
													<a href="javascript:void(0)" class="mr-2" onclick="QAdelete('${marketQA.marketQA_num}','${marketQA.market_num}');"  ><span class="">삭제</span></a>
												</c:when>
												<c:when test="${empty sessionScope.name}">
												</c:when>
												<c:when test="${sessionScope.email != marketQA.mem_email}">
													<a href="javascript:void(0)" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" ><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
												</c:when>
										  </c:choose>
										 </div>                                             		
=======
			                                        </c:choose> 
			                                        
			                                  <!-- 모달로 정보보내기
			                                   <button type="button"  data-toggle="modal" data-target="#Comment" data-prnum="${marketQA.marketQA_prnum}" data-lev="${marketQA.marketQA_lev}" data-sun="${marketQA.marketQA_sun}" class="mr-2" "><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></button>
			                                   --> 
			                                    <c:choose>
			                                     	<c:when test="${sessionScope.email == marketQA.mem_email}">
			                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글 </span></a>
														<a href="#" class="mr-2" onclick="QAupdate('${marketQA.marketQA_sub}','${marketQA.marketQA_cont}',${marketQA.marketQA_num},${marketQA.market_num},${marketQA.marketQA_ox});"  data-toggle="modal" data-target="#MQUpdate" ><span class="">수정</span></a>
														<a href="#" class="mr-2" onclick="QAdelete('${marketQA.marketQA_num}','${marketQA.market_num}');"><span class="">삭제</span></a>
													</c:when>
													<c:when test="${empty sessionScope.name}">
													</c:when>
													<c:when test="${sessionScope.email != marketQA.mem_email}">
														<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2" ><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
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
			                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
														<a href="#" class="mr-2" onclick="QAupdate('${marketQA.marketQA_sub}','${marketQA.marketQA_cont}',${marketQA.marketQA_num},${marketQA.market_num},${marketQA.marketQA_ox});"  data-toggle="modal" data-target="#MQUpdate" ><span class="">수정</span></a>
														<a href="#" class="mr-2" onclick="QAdelete('${marketQA.marketQA_num}','${marketQA.market_num}');"><span class="">삭제</span></a>
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
				                                  			<a href="#" onclick="mqajaxRE('${marketQA.marketQA_prnum}','${marketQA.marketQA_lev}','${marketQA.marketQA_sun}');" data-toggle="modal" data-target="#Comment" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
															<a href="#" class="mr-2" onclick="QAupdate('${marketQA.marketQA_sub}','${marketQA.marketQA_cont}',${marketQA.marketQA_num},${marketQA.market_num},${marketQA.marketQA_ox});"  data-toggle="modal" data-target="#MQUpdate" ><span class="">수정</span></a>
															<a href="#" class="mr-2" onclick="QAdelete('${marketQA.marketQA_num}','${marketQA.market_num}');"><span class="">삭제</span></a>
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
>>>>>>> 471977c4d994dd337975e3f70a2387d9c24b63d7
									</div>	
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
								    	 <input type="hidden" id="mem_emailQAID" name="mem_email" value= "${sessionScope.email}">

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
									<img src="../hifiveImages/free_thumb/${freeProfile.freelancer.free_fname}" class="brround avatar-xxl" alt="user">
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
	<!--////////////////////// 결제넘기는 폼////////////////////////////////////// -->
							<form id="paymentsForm" action="market-payments" method="post">
								<input type="hidden" value="${market.market_sub}" name="marketPaym_pdName">
								<input type="hidden" value="${market.market_num}" name="market_num">
								<input type="hidden" value="${sessionScope.email}" name="mem_email">
								<input type="hidden" value="${market.market_price}" name="marketPaym_price">
								<c:choose>
									<c:when test="${market.market_price<=500000}">
										<input type="hidden" value=20 name="marketPaym_freeRate">
									</c:when>
									<c:when test="${market.market_price<=2000000}">
										<input type="hidden" value=12 name="marketPaym_freeRate">
									</c:when>
									<c:otherwise>
										<input type="hidden" value=6 name="marketPaym_freeRate">
									</c:otherwise>
								</c:choose>
								
								<div class="card-footer">
									<div style="text-align: right; vertical-align:center;">
										<span style="font-size:20px">결제금액</span></br>
										<span style="font-size:30px" >${market.market_price}</span>
									</div>
								</div>
								<div class="card-footer">	
									<div style="text-align: right;">
								
								<!--	<a href="marketPayments" class="btn btn-info"><i class="ti-credit-card"></i> 문의하기</a> 
										<a href="marketPayments" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> 구매하기</a>-->
										<button type="submit" class="btn btn-primary2"><i class="ti-credit-card"></i > 구매하기</button>
									</div>
								</div>
							</form>
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
<!-- REVIEW UPDATE -->
	<form name="revUPModalN" id="revUPModalForm" action="marketRev-update" method="post">
       <div class="modal fade" id="REVUpdate" tabindex="-1" role="dialog"  aria-hidden="true">
	        <div class="modal-dialog" role="document">
	           <div class="modal-content">
			
	              <div class="modal-header">
	                 <h5 class="modal-title">리뷰수정</h5>
	                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                   <span aria-hidden="true">&times;</span>
	                 </button>
	              </div>         
	              <div class="modal-body">							
	               	 	 <div class="ml-auto">
							<div class="rating-stars block">
								<input id="Revupdate_star" type="number" readonly="readonly" class="rating-value star"  name="marketRev_star"  ><!-- name="rating-stars-value" value="${marketRev_star}"-->
								<div class="rating-stars-container" id ="reviewUpdateStar">
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
	                 <div class="form-group mb-0">
	                  	<textarea class="form-control" name="marketRev_cont" id="Revupdate_cont"  rows="6" placeholder="메세지 입력"></textarea>
	                 </div>
	              </div>
	              <div class="modal-footer">
	                 <div class="col">
						<input type="hidden" id="Revupdate_num" name="marketRev_num" >
			           	 <input type="hidden" id="Marketupdate_num" name="market_num"> 
	                 </div>   
	                 <div class="col col-auto">
	                    <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
	                    <button type="button" id="submitREVUPdate" class="btn btn-primary">확인</button>
	                 </div>
	              </div>
	           </div>
	           
	        </div>
	    </div>
	</form>




<!-- 문의 모달창 -->
	 <form name="mqModalN" id="mqModalForm" action="marketQARE-insert" method="post">
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
	                   <input type="text" class="form-control" name="marketQA_sub" id="marketQA_subIDM" rows="6" placeholder="제목 입력">
	                 </div>
	                 <div class="form-group mb-0">
	                  	<textarea class="form-control" name="marketQA_cont" id="marketQA_contIDM"  rows="6" placeholder="메세지 입력"></textarea>
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
<!-- QAUPDATE -->
	<form name="mqUPModalN" id="mqUPModalForm" action="marketQA-update" method="post">
       <div class="modal fade" id="MQUpdate" tabindex="-1" role="dialog"  aria-hidden="true">
	        <div class="modal-dialog" role="document">
	           <div class="modal-content">
			
	              <div class="modal-header">
	                 <h5 class="modal-title">댓글수정</h5>
	                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                   <span aria-hidden="true">&times;</span>
	                 </button>
	              </div>         
	              <div class="modal-body">
	               	 <div class="form-group mb-0">
	                   <input type="text" class="form-control" name="marketQA_sub" id="UPmarketQA_sub" rows="6" placeholder="제목 입력">
	                 </div>
	                 <div class="form-group mb-0">
	                  	<textarea class="form-control" name="marketQA_cont" id="UPmarketQA_cont"  rows="6" placeholder="메세지 입력"></textarea>
	                 </div>
	              </div>
	              <div class="modal-footer">
	                 <div class="col">
	                    <label class="custom-control custom-checkbox mb-0">
		                    <input type="radio"  name="marketQA_ox" value="1" checked="">비밀글
							<input type="radio"  name="marketQA_ox"  value="0" checked="">공개글
						
						<input type="hidden" id="UPmarketQA_qnum" name="marketQA_num" >
			           	 <input type="hidden" id="UPmarketQA_mnum" name="market_num"> 

							    
	                    </label>
	                 </div>   
	                 <div class="col col-auto">
	                    <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
	                    <button type="button" id="submitQAUPdate" class="btn btn-primary">확인</button>
	                 </div>
	              </div>
	           </div>
	           
	        </div>
	    </div>
	</form>
<!-- 문의 모달창 -->		





<!--Scrolling Modal-->
	<!--
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
						<div class="carousel-item active"></div>
					   </div>				  
					  <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					  </div>
					</div>
				</div>
			</div>
  -->


<!--
	
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
	 -->	
		<!--Comment Modal -->

		<!-- Report Modal -->
	<!-- 	<div class="modal fade" id="report" tabindex="-1" role="dialog"  aria-hidden="true">
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
-->
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
<<<<<<< HEAD
	    	success:onSuccessReview
=======
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
	 			revfree +='<div class="media mt-0 p-5" ><div class="d-flex mr-3"><a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/free_thumb/'+data[0].freelancer.free_fname+'"> </a></div>';
	 			revfree +='<div class="media-body"><h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">'+data[0].freelancer.free_name; 
   	   			revfree +='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
   	   			revfree +='<span class="fs-14 ml-2" name="marketRev_star" id="starR" >'+data[0].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
   	   			revfree +='</h5><small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate">'+dateTime+ '</small>';
   	   			revfree +='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR">'+ data[0].marketRev_cont+'</p></div></div>'
   	   			
	 			revcor +='<div class="media mt-0 p-5" ><div class="d-flex mr-3"><a href="#"><img class="media-object brround" id="freefnameR" alt="64x64" src="../hifiveImages/cor_thumb/'+data[0].corporation.cor_fname+'"> </a></div>';
	 			revcor +='<div class="media-body"><h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">'+data[0].corporation.cor_mname;
	 			revcor +='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
   	   			revcor +='<span class="fs-14 ml-2" name="marketRev_star" id="starR" >'+data[0].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
   	   			revcor +='</h5><small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate">'+dateTime+ '</small>';
   	   			revcor +='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR">'+ data[0].marketRev_cont+'</p></div></div>'
   	   			 
   	   			revmem +='<c:if test="${marketRev[0].freelancer== null && marketRev[0].corporation==null }"> <a href="#"><img class="media-object brround"  alt="64x64" src="../images/faces/male/1.jpg"> </a></div>';
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
   	   			var eleCount='';
	  			//오류 댓글 4개쓰면 2페이지로 넘어가면서 댓글이 사라짐, 리로드 = 다시생김

			    if (document.getElementById('ajaxRev')){//별점이 존재한다면 밑에 실행
					console.log("ssssssss");
			    	eleCount = 0;
			    }else{
			    }
				console.log("eleCount__"+eleCount);
				console.log("22eleCount__"+"${fn:length(marketRev)}");
	  			if("${fn:length(marketRev)}" == 0){		
  				//	$('#ajaxRev').html(html);
	  				location.reload();
	  			}else if("${fn:length(marketRev)}" >3){
	  				$("#ajaxRev:last-child").remove();	
  					$('#ajaxRev').prepend(rev);
	  			}else if("${fn:length(marketRev)}" > 0){
	  				$('#ajaxRev').prepend(rev);
	  			}

	    	}
>>>>>>> 471977c4d994dd337975e3f70a2387d9c24b63d7
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
			    			images +='<div class="carousel-item active"> <img src="../hifiveImages/marketQAFiles/'+marketQA.marketQAFile[i].marketQAFile_fname+'"alt="img"> </div>';
			    			images +='</div>';	
			    		}
			    		$("#exampleModalLong .carousel-inner").html(images);
		    		}
		    		$("#exampleModalLong #mqcont").text(marketQA.marketQA.marketQA_cont); 
		    	}	
		   	}); 	    	
	   	}
//문의글파일포함 insert후 Listing하는 AJAX
	   function mqajax(prnum,lev,sun){
		   if ($.trim($("#marketQA_subID ").val()) == "") {
		        alert("제목을 입력해주세요.");
		        $("#marketQA_subID").focus();
		        return;
		   		 }
		   if ($.trim($("#marketQA_contID ").val()) == "") {
		        alert("내용을 입력해주세요.");
		        $("#marketQA_contID").focus();
		        return;
		   		 }

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
<<<<<<< HEAD
		    	success:onSuccess
=======
		    	success:function onSuccess(marketQAList){
		    		location.reload();
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
>>>>>>> 471977c4d994dd337975e3f70a2387d9c24b63d7
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
		  var url=$('#mqModalForm').attr('action');
		  var QAREqueryString = $('#mqModalForm').serialize();
		  
		   $.ajax({
			 	type:'POST',
		    	url: url,
		    	dataType:'json',
		    	async :false,
		    	data:QAREqueryString,
		    	error:onError,
<<<<<<< HEAD
		    	success:onSuccess
		    	
=======
		    	success:function onSuccess(marketQAList){
			    	console.log("11111marketQAList");
		    		 var QA='';
		    		 for(i=0; i<marketQAList.length; i++){
    					var freeName=marketQAList[i].freelancer.free_name;
    					var freeFname=marketQAList[i].freelancer.free_fname;
    					var corMName=marketQAList[i].corporation.cor_mname;
    					var corFname=marketQAList[i].corporation.cor_fname;
    					var subject=marketQAList[i].marketQA_sub;
    					var content=marketQAList[i].marketQA_cont;
    					var rdate=marketQAList[i].marketQA_rdate;
    					var email=marketQAList[i].mem_email;
    					var ox=marketQAList[i].marketQA_ox;
	    			 }
			     }	
>>>>>>> 471977c4d994dd337975e3f70a2387d9c24b63d7
		   	}); 	    
	   });
	 

	  function QAdelete(MQ,M){
			/* alert(MQ);
			alert(M); */
			var marketQA_num=MQ;
			var market_num=M;
		   $.ajax({
			 	type:'GET',
		    	url:'marketQA-delete?marketQA_num='+marketQA_num+'&market_num='+ market_num,
		    	dataType:'json',
		    	async :false,
		    	error:onError,
		    	success:onSuccess
		    	
			}); 	    				
		}
			
		function QAupdate(MQsub,MQcont,MQnum,Mnum,ox){
		 	/* alert("MQsub"+MQsub);
			alert("MQcont"+MQcont);
			alert("MQnum"+MQnum);
			alert("Mnum"+Mnum);
			alert("ox"+ox); */


			$('#MQUpdate').on('show.bs.modal', function (event) {
				$("#MQUpdate .modal-content #UPmarketQA_sub").val(MQsub);
				$("#MQUpdate .modal-content #UPmarketQA_cont").val(MQcont);
				$("#MQUpdate .modal-content #UPmarketQA_qnum").val(MQnum);
				$("#MQUpdate .modal-content #UPmarketQA_mnum").val(Mnum);
				$("#MQUpdate .modal-content input[name=marketQA_ox]").val(ox);
				
				
				var aa =$("#MQUpdate .modal-content #UPmarketQA_sub").val();
				var ss =$("#MQUpdate .modal-content #UPmarketQA_cont").val();
				var dd =$("#MQUpdate .modal-content #UPmarketQA_qnum").val();
				var ff =$("#MQUpdate .modal-content #UPmarketQA_mnum").val();
				var gg =$("#MQUpdate .modal-content input[name=marketQA_ox]").val();
				
				alert("1="+aa);
				alert("2="+ss);
				alert("3="+dd);
				alert("4="+ff);
				alert("5="+gg);
			});
		}
			
		  	
		$('#submitQAUPdate').click(function(){    
			var mqUPurl=$('#mqUPModalForm').attr('action');
	  		var queryString=$('#mqUPModalForm').serialize();
			jQuery.ajax({
				type:'POST',
		    	url:mqUPurl,
		    	dataType:'json',
		    	data:queryString,
		    	async :true,
		    	error:onError,
		    	success: onSuccess
			});		
		 });

</script> 
<script>
	function Revdelete(revNum,mNum){
		/* alert("revNum"+revNum);
		alert("mNum"+mNum); */
		$.ajax({
			type:'GET',
	    	url:'marketRev-delete?marketRev_num='+revNum+'&market_num='+mNum,
	    	dataType:'json',
	    	async :true,
	    	error:onError,
	    	success: onSuccessReview	
		});
		
	}

      function Revupdate(revNum,mNum,cont,star){
   		/*  alert("revNum"+revNum);
   			alert("mNum"+mNum);
   			alert("cont"+cont);
   			alert("star"+star); */
   		/*별을 세팅해두면 프레이밍어쩌구오류남 	
   		html=''; 
				if(star>0){
					//html+='<div class="rating-stars-container" id ="reviewUpdateStar">';
					for(i=0;star>i;i++){
						html+=' <div class="rating-star sm is--active">';
						html+='<i class="fa fa-star"></i>';
						html+='</div>';
					}
					for(i=0;5-star>i;i++){
						html+='<div class="rating-star sm">';
						html+='<i class="fa fa-star"></i>';
						html+='</div>';
					}
					//html+='<div>';
					//$("#REVUpdate .modal-content #reviewUpdateStar").html(html);
				} */
   			$('#REVUpdate').on('show.bs.modal', function (event) {
   				$("#REVUpdate .modal-content #Revupdate_star").val(star);
   				
   				$("#REVUpdate .modal-content #Revupdate_cont").val(cont);
   				$("#REVUpdate .modal-content #Revupdate_num").val(revNum);
   				$("#REVUpdate .modal-content #Marketupdate_num").val(mNum);

   			});
   		}
      
      $('#submitREVUPdate').click(function(){    
			var revUPurl=$('#revUPModalForm').attr('action');
	  		var queryString=$('#revUPModalForm').serialize();
			jQuery.ajax({
				type:'POST',
		    	url:revUPurl,
		    	dataType:'json',
		    	data:queryString,
		    	async :true,
		    	error:onError,
		    	success: onSuccessReview
			});		
		});
           
	function onSuccess(marketQAList){
  		var html ='';
  		
  		for(i=0; i<marketQAList.length; i++){//프리네임, 날짜 ,제목
  			 var sin =marketQAList[i].marketQA_lev;
  			 var someTimestamp = Number(marketQAList[i].marketQA_rdate);
  			 var sin2=40*sin;//들여쓰기 px
		    	 console.log("sin2"+sin2);
  			
		    	 var dateTime = new Date(someTimestamp);
				 dateTime=dateToYYYYMMDD(dateTime);

	    		html+='<div class="card-body p-0" id="QAajax0">';
	    		html+='<div class="card-body p-0" id="QAajax1">';
	    		html+='<div id="htmlQA">';
	    		html+='	<input type="hidden" name="marketQA_prnum" id="marketQA_prnumID" value="'+marketQAList[i].marketQA_prnum+' "/>';
	    		html+='<input type="hidden" name="marketQA_lev" id="marketQA_levID" value="'+marketQAList[i].marketQA_lev+'  "/>';
	    		html+='<input type="hidden" name="marketQA_sun" id="marketQA_sunID" value="'+marketQAList[i].marketQA_sun+' "/>';
	    		
	    		
	    		html+='<div id="replyItem'+marketQAList[i].marketQA_lev+'" style="width: 600px; padding: 5px; margin-top: 5px; margin-left:'+sin2+'px; display: inline-block">';
	    		html+='<div class="media mt-0 p-5">';
	    		html+='<div class="d-flex mr-3">';
	    		
	    		if(marketQAList[i].member.class_num==2||marketQAList[i].member.class_num==3){
	    			html+='	<a href="javascript:void(0)"><img class="media-object brround" alt="64x64" src="../hifiveImages/free_thumb/'+marketQAList[i].freelancer.free_fname+'"> </a>';
	    		}else if(marketQAList[i].member.class_num==4){
	    			html+='	<a href="javascript:void(0)"><img class="media-object brround" alt="64x64" src="../hifiveImages/cor_thumb/'+marketQAList[i].corporation.cor_fname+'"> </a>';
	    		}else{
	    			html += '<a href="javascript:void(0)"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>';
	    		}
	    		html+='</div>';
	    		html+='<div class="media-body">';
	    		html+=' <h5 class="mt-0 mb-1 font-weight-semibold">'+ marketQAList[i].member.mem_name;
	    		html+='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
	    		html+=' </h5>';
	    		html+=' <small class="text-muted"><i class="fa fa-calendar"></i> '+dateTime+'</small>';
	    		html+='<p class="font-13  mb-2 mt-2">';
	    		html+='<a href="javascript:void(0)" onclick="javascript:QAFile('+marketQAList[i].marketQA_prnum+','+marketQAList[i].marketQA_market_num+');"  data-toggle="modal" data-target="#exampleModalLong">'+marketQAList[i].marketQA_sub+'</a><br>';
	    		html+='	</p>';
	    		html+='<a href="javascript:void(0)" onclick="mqajaxRE('+marketQAList[i].marketQA_prnum+','+marketQAList[i].marketQA_lev+' ,'+marketQAList[i].marketQA_sun+');" data-toggle="modal" data-target="#Comment" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글 </span></a>';
	    		html+='<a href="javascript:void(0)" class="mr-2" onclick="QAupdate('+ marketQAList[i].marketQA_sub +','+marketQAList[i].marketQA_cont+' ,'+marketQAList[i].marketQA_num+' ,'+marketQAList[i].market_num+' ,'+marketQAList[i].marketQA_ox+' );"  data-toggle="modal" data-target="#MQUpdate" ><span class="">수정</span></a>';
	    		html+='<a href="javascript:void(0)" class="mr-2" onclick="QAdelete('+ marketQAList[i].marketQA_num+','+marketQAList[i].market_num+');"><span class="">삭제</span></a>';
	    		html+='</div>';
	    		html+='</div>';
	    		html+='</div>';
	    		html+='</div>';
	    		html+='</div>';			
	    		html+='</div>';
		}
  		
		$('#QAajax0').empty();
		$('#QAajax0').html(html);

		$('#Comment ').modal('hide'); 
		$('#MQUpdate ').modal('hide');
  		
  	}

	function onSuccessReview(data){
		var html ='';
		var srarHtml='';
		//var stringdata=JSON.stringify(data);
		//console.log("stringify::"+ stringdata);
		//console.log("data"+	data);
		//console.log("stringdata"+	stringdata.length);
		//console.log("data:"+ data[0][0].marketRev_num);
		//console.log("data2:"+data[0][1].member.mem_name);
		//console.log("data[1].MarketRev[1]"+ data[1].MarketRev[0]);
		for(var i=0; data[0].length>i; i++){	
			//alert("11111111"+data[i].freelancer.free_fname);
			 var someTimestamp = Number(data[0][i].marketRev_rdate);
			 var dateTime = new Date(someTimestamp);
			 dateTime=dateToYYYYMMDD(dateTime);
			//console.log("11111"+data[i]);
					html +='<div class="card-body p-0" id="ajaxRev">';
				html +='<div class="media mt-0 p-5" >';
				html +='<div class="d-flex mr-3">';
				if(data[0][i].member.class_num==2||data[0][i].member.class_num==3){//개인일때 		
	    			html += '<a href="#"><img class="media-object brround" alt="64x64" src="../hifiveImages/free_thumb/'+data[0][i].freelancer.free_fname+'"> </a>';
	    			html += '</div>';
	    		}else if(data[0][i].member.class_num==4){
	    			html += '<a href="#"><img class="media-object brround" alt="64x64" src="../hifiveImages/free_thumb/'+data[0][i].corporation.cor_fname+'"> </a>';
	    			html += '</div>';
	    		}else{
	    			html += '<a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>';
	    			html += '</div>';
	    		}	
				html+=' <div class="media-body">';
				html+='<h5 class="mt-0 mb-1 font-weight-semibold" name="free_name" id="free_nameR">'+data[0][i].member.mem_name;
				html+='<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>';
				html+='<span class="fs-14 ml-2" name="marketRev_star" id="starR" > '+data[0][i].marketRev_star+'</span>  <i class="fa fa-star text-yellow"></i>';
				html+='</h5>';
				html+='<small><i class="fa fa-calendar"></i></small><small class="text-muted" id="rdateR" name="marketRev_rdate"> '+dateTime+' </small>';
				html+='<p class="font-13  mb-2 mt-2" name="marketRev_cont"  id="contentR"> '+data[0][i].marketRev_cont+'</p>';
				html+='<a href="javascript:void(0)" class="mr-2" data-toggle="modal" data-target="#REVUpdate" onclick="Revupdate('+data[0][i].marketRev_num+','+data[0][i].market_num+','+data[0][i].marketRev_cont +','+data[0][i].marketRev_star+');" ><span class="">수정</span></a>';
				html+='<a href="javascript:void(0)" class="mr-2" data-toggle="modal" onclick="Revdelete('+data[0][i].marketRev_num+','+data[0][i].market_num+');" ><span class="">삭제</span></a>';
				html+='</div>';
				html+='</div>';
				html+='</div>';	    		
		}
		for(var i=0;i<data[1];i++){
			srarHtml+='<i class="fa fa-star text-warning"> </i>';
  		}
		for(var i=0;i<(5-data[1]);i++){
			srarHtml+='<i class="fa fa-star-o text-warning"> </i>';
  		}

		$('#ajaxRev0').empty();
		$('#ajaxRev0').html(html);
		$('#changeStar').html(srarHtml);
		$('#REVUpdate').modal('hide');
	}
</script>

<!-- 
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
 -->  