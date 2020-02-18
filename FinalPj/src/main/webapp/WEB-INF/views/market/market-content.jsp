<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
											<div class="carousel-item active"> <img src="../images/products/products/h1.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h2.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h1.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h2.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h3.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h5.jpg" alt="img"> </div>
											<div class="carousel-item"> <img src="../images/products/products/h4.jpg" alt="img"> </div>
										</div>
										<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
											<i class="fa fa-angle-left" aria-hidden="true"></i>
										</a>
										<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
											<i class="fa fa-angle-right" aria-hidden="true"></i>
										</a>
									</div>
									<div class="clearfix">
										<div id="thumbcarousel" class="carousel slide" data-interval="false">
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
										</div>
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
										<div class="badge badge-default mb-2">5 <i class="fa fa-star"></i></div>
										
										<!--
										<div class="progress progress-md mb-4">
											<div class="progress-bar bg-success w-100">6,532</div>
										</div>-->
										<span class="rated-products-ratings">
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star text-warning"> </i>
											<i class="fa fa-star-o text-warning"> </i>
											<i class="fa fa-star-o text-warning"> </i>
										</span>
									</div>
									<div class="col-md-6 text-center align-items-center">

									</div>
								</div>
							</div>

					
						<!-- 댓글 -->		
					<c:if test="${fn:length(marketRev) > 0}">	
						<c:forEach var="marketRev" items="${marketRev}">
							<div class="card-body p-0">
								<div class="media mt-0 p-5">
                                    <div class="d-flex mr-3">
                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
                                    </div>
                                    <div class="media-body">
                                    	<c:choose>
	                                    	<c:when test="${marketRev.freelancer != null}">
	                                       		<h5 class="mt-0 mb-1 font-weight-semibold">${marketRev.freelancer.free_name}</h5> 
	                                     	</c:when>
	                                     	<c:otherwise>
	                                       		<h5 class="mt-0 mb-1 font-weight-semibold">${marketRev.corporation.cor_mname} </h5>
	                                     	</c:otherwise>
                                     	</c:choose>
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
											<span class="fs-14 ml-2"> ${marketRev.marketRev_star}  <i class="fa fa-star text-yellow"></i></span>
										</h5>
										<small class="text-muted"><i class="fa fa-calendar"></i> ${marketRev.marketRev_rdate} </small>
                                        <p class="font-13  mb-2 mt-2">
                                         
                                          ${marketRev.marketRev_cont}
                                        </p>
									<!--<a href="#" class="mr-2"><span class="badge badge-primary">Helpful</span></a>  -->	
									<!--<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary">comment</span></a>-->	
									<!--<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-primary">Report</span></a>-->	
                            <!-- 댓글 -->	
                            <!-- 대댓글 -->           

				                            &nbsp;&nbsp; <!-- 답변글일경우 글 제목 앞에 공백을 준다. -->

								<!-- 대댓글 -->     		
									</div>
								</div>
							</div>
					</c:forEach>	
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
					<form name="mrinput" method="post" action="marketRev-insert">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">리뷰 남기기</h3>
							</div>
							<div class="card-body">
							
								<div>
							<!--	<li class="icons">><a href="#" >
								 <i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star text-warning"><a href="#" ></a></i>
									<i class="fa fa-star-half-o text-warning mr-1"></i>4.5</a></li><br/>
									 -->	
									
									<div class="ml-auto">
										<div class="rating-stars block">
											<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
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
									<div class="form-group">
										<input type="text" class="form-control"  name="subject" id="name1" placeholder="subject">
									</div>
									
									<div class="form-group">
										<textarea class="form-control" name="content" rows="6" placeholder="Comment"></textarea>
									</div>
									<a href="#" class="btn btn-primary">Send Reply</a>
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
								<div  id="replyItem<c:out value="${replylist.reno}"/>" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: <c:out value="${40*marketQA.marketQA_lev}"/>px; display: inline-block">
								<div class="media mt-0 p-5">
                                    <div class="d-flex mr-3">
                                        <a href="#"><img class="media-object brround" alt="64x64" src="../images/faces/male/1.jpg"> </a>
                                    </div>
                                    <div class="media-body">
	                                   <c:choose>
		                                    <c:when test="${marketQA.freelancer != null}">
		                                      <h5 class="mt-0 mb-1 font-weight-semibold">${marketQA.freelancer.free_name}
												<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
											</h5>
		                                    </c:when>
		                                    <c:otherwise>
			                                    <h5 class="mt-0 mb-1 font-weight-semibold">${marketQA.corporation.cor_mname}
													<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
												</h5>
		                                    </c:otherwise>
		                                </c:choose>						
										<small class="text-muted"><i class="fa fa-calendar"></i> ${marketQA.marketQA_rdate} </small>
                                     	<c:choose>
	                                     	 <c:when test="${marketQA.marketQA_ox != 0}">
		                                        <p class="font-13  mb-2 mt-2">
		                                          ${marketQA.marketQA_sub}<br>
		                                          ${marketQA.marketQA_cont}
	                                        	</p>
	                                        </c:when>
	                                        <c:otherwise>
		                                        <p class="font-13  mb-2 mt-2">
		                                       		   비밀글 입니다.
	                                      	  </p>
	                                        </c:otherwise>
                                      	</c:choose> 
										<a href="#" class="mr-2"><span class="badge badge-primary">Comment</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="">수정</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="">삭제</span></a>
									</div>
								</div>	
								</div>
								</c:forEach>
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
					<form name="mqInput" id="mqInput">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">문의 남기기</h3>
							</div>
							<div class="card-body">
								<div>
									 <input type="hidden" id="QAname" name="QAname" value="이미남">
									 <input type="hidden" id="market_num" name="market_num" value="${market.market_num}">
								 	 <input type="hidden" id="marketQA_rdate" name="marketQA_rdate" value="${marketQA_rdate}">
									 <input type="hidden" id="marketQA_vcnt" name="marketQA_vcnt" value="${marketQA_rdate}">
								     <input type="hidden" id="marketQA_prnum" name="marketQA_prnum" value="${marketQA_prnum}">
								     <input type="hidden" id="marketQA_lev" name="marketQA_lev" value="${marketQA_lev}">
								     <input type="hidden" id="marketQA_sun" name="marketQA_sun" value="${marketQA_sun}">
								     <input type="hidden" id="mem_email" name="mem_email" value="${mem_email}">		
									<div class="form-group">
										<input type="text" class="form-control" id="marketQA_sub" name="marketQA_sub" placeholder="subject">
									</div>
									<div class="form-group">
										<textarea class="form-control" name="marketQA_cont" id="marketQA_cont" rows="6" placeholder="Comment"></textarea>
									</div>
									<input type=button id="submitQA" class="btn btn-primary" value="Send Reply">
									&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 
									&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
									&emsp; &emsp; &emsp; &emsp;
									<input type="radio"  name="marketQA_ox" value="1" checked="">비밀글
									<input type="radio"  name="marketQA_ox" value="0" checked="">공개글
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
									<img src="../images/faces/male/25.jpg" class="brround avatar-xxl" alt="user">
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
										<span style="font-size:30px"><fmt:formatNumber value="${market.market_price}" pattern="#,###,###,###" /><span class="fs-16">원</span></span>
									</div>
								</div>
								<div class="card-footer">	
									<div style="text-align: right;">
								
								<!--	<a href="marketPayments" class="btn btn-info"><i class="ti-credit-card"></i> 문의하기</a> 
										<a href="marketPayments" class="btn btn-primary" data-toggle="modal" data-target="#contact"><i class="fa fa-user"></i> 구매하기</a>-->
										<a href="marketPayments" class="btn btn-primary2"><i class="ti-credit-card"></i > 구매하기</a>
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
	<!--원글폼<form name="marketQA-reply" action="singUp_ok.jsp" method="post">
		<form name="marketQA-reply" action="marketQA-reply" method="post" onsubmit="required()">
		<div class="modal fade" id="Comment" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleCommentLongTitle">Leave a Comment</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-name" name="comment_name"placeholder="Your Name" readonly>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="Comment-email" name="comment_email"placeholder="Email Address" readonly>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-subject"  name="comment_subject"placeholder="subject" >
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="comment_content" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-success" >Send</button>
					</div>
				</div>
			</div>
		</div>
		</form>-->
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

			    
<!--  
<script>
		   function required(){
			   var empt = document.forms ["marketQA-reply"]["comment_content"].value;
			   if (empt == ""){
				   alert("Please input a Value");
				   /* window.history.back(); */
				 //  history.go(0)
				   }
			   else{
				   alert('Code has accepted : you can try another');
				  // document.marketQA-reply.submit;
				   return true; 
				   }
		   }
		  

		   $("#mqinput").submit(function(event){
			   event.recentDefault();
			   
			   let queryString = $(this).serialize();
			   $.ajax({
				   url:"marketQA_insert",
				   type:"POST",
				   dataType:queryString,
				   data:,
				   success:function(result){					   
				   }
			   })
		   });

		   function input(){
		        var form = $("form")[1];        
		        var formData = new FormData(form);

		        $.ajax({
		            cache : false,
		            url : "marketQA-insert", // 요기에
		            processData: false,
		            contentType: false,
		            type : 'POST', 
		            data : formData, 
		            success : function(data) {
		                var jsonObj = JSON.parse(data);
		            }, // success 
		    
		            error : function(xhr, status) {
		                alert(xhr + " : " + status);
		            }
		    }); // $.ajax */    
		  }
	data:{"marketQA_num": $("#marketQA_num").val(), "market_num": $("#market_num").val(), "marketQA_sub": $("#marketQA_sub").val(),
	        	marketQA_cont": $("#marketQA_cont").val(), "marketQA_rdate": $("#marketQA_rdate").val(), "marketQA_vcnt": $("#marketQA_vcnt").val(),
	        	marketQA_prnum": $("#marketQA_prnum").val(), "marketQA_lev": $("#marketQA_lev").val(), "marketQA_sun": $("#marketQA_sun").val(),
	        	marketQA_ox": $("#marketQA_ox").val(), "mem_email": $("#mem_email").val()},	   
	 data: $("#mqInput").serialize(),
	  success: function(data){
	            $('#result').text(data);
	        },
</script>-->
<script>
	$("#submitQA").on('click', function(){
		 alert("mqInput.QAname.value:" +mqInput.QAname.value);
		 alert("mqInput.marketQA_prnum.value:" +mqInput.marketQA_prnum.value);
		 alert("mqInput.marketQA_lev.value:" +mqInput.marketQA_lev.value);
		 alert("mqInput.marketQA_sun.value:" +mqInput.marketQA_sun.value);
		 alert("mqInput.marketQA_ox.value:" +mqInput.marketQA_ox.value);
		 
		 if ( $.trim($("#marketQA_sub").val()) == "") {
		        alert("제목을 입력해주세요.");
		        $("#marketQA_sub").focus();
		        return;
		    }
		    if ($.trim($("#marketQA_cont").val()) == "") {
		        alert("글 내용을 입력해주세요.");
		        $("#marketQA_cont").focus();
		        return;
		    }
	    $.ajax({
	        url: "marketQA-insert",
	        type: "POST",	        
	        data: $("#mqInput").serialize(),
	        success: function(result){
	                if (result!=="") {
	                    var parent = $("#marketQA_prnum").val();
	                    $("#replyItem"+parent).after(result);
	                
	                    alert("저장되었습니다.");
	                } else{
	                    alert("서버에 오류가 있어서 저장되지 않았습니다.");
	                }
	            },
	        error: function(request,status,error){
	        	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	        }
	    });
	});
</script>
<!--
<script>
function formSubmit() {
    var params = jQuery("#mqInput").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
    jQuery.ajax({
        url: '샘플ajax.php',
        type: 'POST',
        data:params,
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
        dataType: 'html',
        success: function (result) {
            if (result){
                // 데이타 성공일때 이벤트 작성
            }
        }
    });
}
</script>
   -->
<!--
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		    <script type="text/javascript">
		        $(function () {
		            $("#mqInput").click(function () {
		                var formData = new FormData();
		                formData.append("PersonId", $("#PersonId").val());
		                formData.append("Name", $("#Name").val());
		                formData.append("Gender", $("#Gender").val());
		                formData.append("City", $("#City").val());
		                $.ajax({
		                    url: "/Home/Index",
		                    type: 'POST',
		                    cache: false,
		                    contentType: false,
		                    processData: false,
		                    data: formData,
		                    success: function (response) {
		                        alert(response);
		                    }
		                });
		            });
		        });
		    </script>
-->