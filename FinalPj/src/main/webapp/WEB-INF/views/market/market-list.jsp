<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
								<div class="search-background mb-0">
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
					<h4 class="page-title">Ad List Right</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Ad List Right</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<!--Left Side Content-->
					<div class="col-xl-3 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Search
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Categories</h3>
							</div>
							<div class="card-body">
								<div class="" id="">
									<div class="filter-product-checkboxs">
										<label for="개발" class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1"  id="개발">
											<span class="custom-control-label" class="text-dark">개발자<span class="label label-secondary float-right">14</span>
											</span>
										</label>
										<label for="퍼블리싱" class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2" id="퍼블리싱">
											<span class="custom-control-label" class="text-dark">디자이너<span class="label label-secondary float-right">22</span>
											</span>
										</label>
									<!--<label for="디자인" class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2" id="디자인">
											<span class="custom-control-label" class="text-dark">디자인<span class="label label-secondary float-right">22</span>
											</span>
										</label>
										<label for="기획" class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2" id="기획">
											<span class="custom-control-label" class="text-dark">기획<span class="label label-secondary float-right">22</span>
											</span>
										</label>
										<label for="기타" class="custom-control custom-checkbox mb-3">
											<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2" id="기타">
											<span class="custom-control-label" class="text-dark">기타<span class="label label-secondary float-right">22</span>
											</span>
										</label>  -->	
									</div>
								</div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Price Range</h3>
							</div>
							<div class="card-body">
								<h6>
								   <label for="price">Price Range:</label>
								   <input type="text" id="price">
								</h6>
								<div id="mySlider"></div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Condition</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											초급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											중급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											고급
										</span>
									</label>
								</div>
							</div>
							<div class="card-footer">
								<a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
							</div>
						</div>		
					</div>
					<!--/Left Side Content-->

					<!--Add Lists-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex">
										<h6 class="mb-0 mt-2">Showing 1 to 10 of 30 entries</h6>
										<ul class="nav item2-gl-menu ml-auto">
											<li class=""><a href="#tab-11" class="" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
											<li><a href="#tab-12" data-toggle="tab" class="active show" title="Grid"><i class="fa fa-th"></i></a></li>
										</ul>
										<div class="d-flex">
											
											<select name="item" class="form-control select-sm w-100">
												<option value="1">최신순</option>
												<option value="2">평점순</option>
												<option value="3">조회높은순</option>
											</select>
										</div>
									</div>
									<div class="tab-content">
										<div class="tab-pane" id="tab-11">
<!--///////////////////////////// 마켓리스팅1 -->					
											<c:forEach items="${list}" var="list">	
												<div class="card overflow-hidden">
													<div class="d-md-flex">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="market-content"></a>
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card border-0 mb-0">
															<div class="card-body ">
																<div class="item-card9">
																	<a href="market-details">${list.freelancer.free_name}</a>
																	<a href="market-details" class="text-dark"><h4 class="font-weight-semibold mt-1">${list.market_sub}</h4></a>
																	<p class="mb-0 leading-tight">${list.market_cont}</p>
																</div>
															</div>
															<div class="card-footer pt-4 pb-4">
																<div class="item-card9-footer d-flex">
																	<div class="item-card9-cost">
																		<h4 class="text-dark font-weight-semibold mb-0 mt-0">${list.market_price}</h4>
																	</div>
																	<div class="ml-auto">
																		<div class="rating-stars block">
																			<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="3">
																			<span class="rated-products-ratings">
																				<i class="fa fa-star text-warning"> </i>
																				<i class="fa fa-star text-warning"> </i>
																				<i class="fa fa-star text-warning"> </i>
																				<i class="fa fa-star text-warning"> </i>
																				<i class="fa fa-star-o text-warning"> </i>
																			</span>&nbsp;${list.marketRev.marketRev_star}&nbsp;&nbsp;&nbsp;
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
												</div>
										</c:forEach>
<!--///////////////////////////// 마켓리스팅1 -->
									<!-- 
											
									-->		
										</div>
<!-- ///////////////////////////////////////2list -->										
										<div class="tab-pane active" id="tab-12">
											<div class="row">
											
											<c:forEach items="${list}" var="list">	
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>  -->	
															<div class="item-card9-imgs">
																<a href="market-content?market_num=${list.market_num}"></a>    
																<img src="../images/products/h4.png" alt="img" class="cover-image h-100">
															</div>
															<div class="item-card9-icons">
																<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="market-content?market_num=${list.market_num}">${list.freelancer.free_name}</a>
																<a href="market-content?market_num=${list.market_num}" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">${list.market_sub}</h4></a>
																<p>${list.market_cont}</p>
																<div class="item-card9-desc">
																	<h2>${list.market_price}<span class="fs-16">원</span></h2>
																	<div class="item-card2-rating mb-0">
																	 <div class="rating-stars d-inline-flex">
																		<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="5">
																		<span class="rated-products-ratings">
																			<c:if test="${list.marketRev.marketRev_star >= 0}" ><!-- 마켓리뷰점수가 -->
																				<c:forEach var="1" begin="1" end="${list.marketRev.marketRev_star}">
																					<i class="fa fa-star text-warning"> </i>
																				</c:forEach>
																				<c:forEach var="1" begin="1" end="${5-list.marketRev.marketRev_star}">
																					<i class="fa fa-star-o text-warning"> </i>
																				</c:forEach>	
																			</c:if>
																		</span>&nbsp;${list.marketRev.marketRev_star}&nbsp;&nbsp;&nbsp;
																		<div>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Comments"><span class="text-muted mr-2"><i class="fa fa-comment-o"></i> ${list.marketRev.marketRev_num}</span></a>
																		   <a href="#" data-toggle="tooltip" data-placement="top" title="Views"><span class="text-muted"><i class="fa fa-eye"></i>${list.market_vcnt}</span></a>
																		</div>
																		
																	 </div>
																  </div>
																</div>
															</div>
														</div>	
													</div>
												</div>
											</c:forEach>
									<!--			
												
										 -->		
											</div>
										</div>
									</div>
								</div>
								<div class="center-block text-center">
									<ul class="pagination mg-b-0 page-0 ">
									<c:if test="${paging.nowPage != 1}">
				 				 <!--이전 페이지 이동 -->
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="market-list?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-double-left"></i></a>
										</li>
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="market-list?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-left"></i></a>
										</li>
									</c:if>
								 <!--페이지번호 -->
								 <c:forEach var='p' begin="${paging.startPage}" end="${paging.endPage}">
								  <c:choose>
								   <c:when test="${p == paging.nowPage}">
										<li class="page-item active">
											<a class="page-link">${p}</a>
										</li>
									</c:when>
									 <c:when test = "${p != paging.nowPage }">
										<li class="page-item">
											<a class="page-link" href="market-list?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
										</li>
										</c:when>
									</c:choose>
	 								 </c:forEach>
	 								<!--다음페이지이동 --> 
	 								  <c:if test ="${paging.nowPage != paging.lastPage}">
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="market-list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-right"></i></a>
										</li>
										
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="market-list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-double-right"></i></a>
										</li>
										</c:if>
										<div style="margin-left:500px;"><a href="market-posts" class="btn btn-primary">글쓰기</a></div>
									</ul>
							 	 </div>
							</div>
						</div>
					</div>
					<!--/Add Lists-->
				</div>
			</div>
		</section>
		<!--/Add Listing-->

		<!-- Newsletter-->
		<section class="sptb bg-white border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-xl-6 col-md-12">
						<div class="sub-newsletter">
							<h3 class="mb-2"><i class="fa fa-paper-plane-o mr-2"></i> Subscribe To Our Newsletter</h3>
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
						</div>
					</div>
					<div class="col-lg-5 col-xl-6 col-md-12">
						<div class="input-group sub-input mt-1">
							<input type="text" class="form-control input-lg " placeholder="Enter your Email">
							<div class="input-group-append ">
								<button type="button" class="btn btn-primary btn-lg br-tr-7 br-br-7">
									Subscribe
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Newsletter-->


<!--footer-->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
	

</html>