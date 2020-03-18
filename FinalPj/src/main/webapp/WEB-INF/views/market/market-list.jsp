<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
									<c:choose>
										<c:when test="${empty searchWord}">
											<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search" id="searchText">
										</c:when>
										<c:when test="${!empty searchWord}">
											<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search" id="searchText" value="${searchWord}">
										</c:when>
									</c:choose>
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7" id="search" onclick="searchWord(1,9,${selectedKey})">
											Search
										</button>
									</div>
								</div>
							</div>
						</div>
					<form>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Categories</h3>
							</div>
							<div class="card-body">
								<div class="" id="">
									<div class="filter-product-checkboxs" id="cateCheckbox">
										<label for="개발" class="custom-control custom-checkbox mb-3">
										<c:choose>
											<c:when test="${mapCate.containsKey('cate0') }">
												<input type="checkbox" class="custom-control-input" name="cate_num" value="1"  id="개발" checked>
											</c:when>
											<c:otherwise>
												<input type="checkbox" class="custom-control-input" name="cate_num" value="1"  id="개발">
											</c:otherwise>	
										</c:choose>
											<span class="custom-control-label" class="text-dark">개발자<span class="label label-secondary float-right">14</span>
											</span>
										</label>
										<label for="디자이너" class="custom-control custom-checkbox mb-3">
										<c:choose>
											<c:when test="${mapCate.containsKey('cate1') }">
												<input type="checkbox" class="custom-control-input" name="cate_num" value="2" id="디자이너" checked>
											</c:when>
											<c:otherwise>
												<input type="checkbox" class="custom-control-input" name="cate_num" value="2" id="디자이너">
											</c:otherwise>	
										</c:choose>
											<span class="custom-control-label" class="text-dark">디자이너<span class="label label-secondary float-right">22</span>
											</span>
										</label>
									</div>
								</div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Price Range</h3>
							</div>
							<div class="card-body">
								<h6>
								   <label for="price">Price Range:</label>
								   <input type="text" id="price" >
								</h6>
								<div id="mySlider"></div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">Condition</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs" id="expCheckbox">
									<label class="custom-control custom-checkbox mb-2">
										<c:choose>
											<c:when test="${mapExp.containsKey('exp1') }">
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp1" checked>
											</c:when>
											<c:otherwise>
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp1">
											</c:otherwise>	
										</c:choose>
										<span class="custom-control-label">
											초급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<c:choose>
											<c:when test="${mapExp.containsKey('exp2') }">
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp2" checked>
											</c:when>
											<c:otherwise>
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp2">
											</c:otherwise>	
										</c:choose>
											<span class="custom-control-label">
											중급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<c:choose>
											<c:when test="${mapExp.containsKey('exp3') }">
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp3" checked>
											</c:when>
											<c:otherwise>
												<input type="checkbox" class="custom-control-input" name="pro_exp" value="exp3">
											</c:otherwise>	
										</c:choose>
										<span class="custom-control-label">
											고급
										</span>
									</label>
								</div>
							</div>
							<div class="card-footer">
								<a href="javascript:void(0);" class="btn btn-secondary btn-block" id="marketSearchBox">Apply Filter</a>
							</div>
						</div>		
					</form>		
					</div>
					<!--/Left Side Content-->
<script>
//검색창
	function searchWord(nowPage,cntPerPage,selectedKey){
			var searchWord=$("#searchText").val()		
			//alert("searchWord:"+searchWord);			
			window.location.href="market-list?selectedKey="+selectedKey+"&nowPage="+nowPage+"&cntPerPage="+cntPerPage+"&searchWord="+searchWord;
	}
//searchBox검색
	$("#marketSearchBox").click(function (){
		var checkedCate = [];
		var checkedExp = [];
		var marketPrice=$("#price").val()
		var selectedKey= $("#marketOrder option:selected").val();
		$("input:checkbox[name='cate_num']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedCate.push($(this).val());
		});
		$("input:checkbox[name='pro_exp']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedExp.push($(this).val());
		});
		/* alert("checkedCate:"+checkedCate);
		alert("checkedExp:"+checkedExp);
		alert($("#price").val()); */
		window.location.href="market-searchBoxList?checkedCate="+checkedCate+"&checkedExp="+checkedExp+"&marketPrice="+marketPrice+"&selectedKey="+selectedKey;
	});
	
	function checkedPage(nowPage,cntPerPage,selectedKey){
		var checkedCate = [];
		var checkedExp = [];
		var marketPrice=$("#price").val();
		var selectedKey= $("#marketOrder option:selected").val();
		$("input:checkbox[name='cate_num']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedCate.push($(this).val());
		});
		$("input:checkbox[name='pro_exp']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedExp.push($(this).val());
		});
	/* 	alert("checkedCate:"+checkedCate);
		alert("checkedExp:"+checkedExp);
		alert($("#price").val()); */
		window.location.href="market-searchBoxList?checkedCate="+checkedCate+"&checkedExp="+checkedExp+"&marketPrice="+marketPrice+"&selectedKey="+selectedKey+"&nowPage="+nowPage+"&cntPerPage="+cntPerPage;
	}
	
</script>				

					<!--Add Lists-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex">
										<h6 class="mb-0 mt-2">Showing 1 to 10 of 30 entries</h6>
										<ul class="nav item2-gl-menu ml-auto">
										<!-- <li class=""><a href="#tab-11" class="" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li> 
											<li><a href="#tab-12" data-toggle="tab" class="active show" title="Grid"><i class="fa fa-th"></i></a></li>-->	
										</ul>
										<div class="d-flex"id="marketOrderDiv">
											<select name="item" class="form-control select-sm w-100" id="marketOrder">
											<c:choose>
												<c:when test="${selectedKey==1}">
													<option value="1" id="select1" selected="selected">최신순</option>
													<option value="2" id="select2">평점순</option>
													<option value="3" id="select3">조회높은순</option>
												</c:when>
												<c:when test="${selectedKey==2}">
													<option value="1" id="select1">최신순</option>
													<option value="2" id="select2" selected="selected">평점순</option>
													<option value="3" id="select3">조회높은순</option>
												</c:when>
												<c:when test="${selectedKey==3}">
													<option value="1" id="select1">최신순</option>
													<option value="2" id="select2">평점순</option>
													<option value="3" id="select3" selected="selected">조회높은순</option>
												</c:when>	
											</c:choose>
											</select>
										</div>
									</div>
									<div class="tab-content">
										<div class="tab-pane" id="tab-11">
<!--///////////////////////////// 마켓리스팅1 -->					
										<!-- 
											<c:forEach items="${list}" var="list">	
												<div class="card overflow-hidden">
													<div class="d-md-flex">
														<div class="item-card9-img">
															<div class="item-card9-imgs">
																<a href="market-content"></a>
																<img src="../hifiveImages/market/marketThumbnails/${list.market_fname}" alt="img" class="cover-image h-100">
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
																		<h4 class="text-dark font-weight-semibold mb-0 mt-0"><fmt:formatNumber value="${list.market_price}" pattern="#,###,###,###" /></h4>
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
										-->
<!--///////////////////////////// 마켓리스팅1 -->
									<!-- 
											<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;">
                                                    <i class="fa fa fa-heart" style="color:white"></i></a>
									-->		
										</div>
<!-- ///////////////////////////////////////2list -->										
										<div class="tab-pane active" id="tab-12">
											<div class="row">
											<c:if test="${fn:length(list) == 0}">	
											검색한 마켓이 없습니다
											</c:if>
											<c:forEach items="${list}" var="list"  varStatus="status">	
												<div class="col-lg-6 col-md-12 col-xl-4">
													<div class="card overflow-hidden">
														<div class="item-card9-img">
														<!--<div class="arrow-ribbon bg-primary">NEW</div>  -->	
															<div class="item-card9-imgs">
																<a href="market-content?market_num=${list.market_num}"></a>    	
																<img src="../hifiveImages/marketThumbnails/${list.market_fname}" alt="${list.market_fname}" class="cover-image h-100"><!-- width="가로 길이" height="세로 길이" alt="그림 설명" -->
															</div>
															<div class="item-card9-icons" id="heartDivID${list.market_num}">
																<c:if test="${fn:length(marketNumList) > 0}">	
																	<c:choose>
																		<c:when test="${marketNumList.contains(list.market_num)}">
																			<a href="javasript:void(0)" class="item-card9-icons1 delwish" onclick="delPick(${list.market_num})" id="fullHeart${list.market_num}" style="margin-right:40%; background-color: #e8564a;"><i class="fa fa fa-heart" style="color:white" ></i></a>
																		</c:when>
																		<c:otherwise>
																			<a href="javasript:void(0)" class="item-card9-icons1 wishlist" onclick="addPick(${list.market_num})" id="emptyHeart${list.market_num}"> <i class="fa fa fa-heart-o" ></i></a>
																		</c:otherwise>
																	</c:choose>
																</c:if>
																<c:choose>
																	<c:when test="${sessionScope.email != null}">
																		<c:if test="${fn:length(marketNumList) == 0}">	
																			<a href="javasript:void(0)" class="item-card9-icons1 wishlist"  onclick="addPick(${list.market_num})"  id="emptyHeart${list.market_num}"> <i class="fa fa fa-heart-o"></i></a>
																		</c:if>
																	</c:when>
																	<c:otherwise>
																		<a href="#" class="item-card9-icons1 wishlist" onclick="loginCheck()"> <i class="fa fa fa-heart-o"></i></a>
																	</c:otherwise>
																</c:choose>
															</div>
														</div>
														<div class="card-body">
															<div class="item-card9">
																<a href="market-content?market_num=${list.market_num}">${list.freelancer.free_name}</a>
																<a href="market-content?market_num=${list.market_num}" class="text-dark mt-2"><h4 class="font-weight-semibold mt-1">${list.market_sub}</h4></a>

															<!--<p>${list.market_cont}</p>  -->
																<div class="item-card9-desc">
																	<h2><fmt:formatNumber value="${list.market_price}" pattern="#,###,###,###" /><span class="fs-16">원</span></h2>

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
											</div>
										</div>
									</div>
								</div>
								<c:if test="${fn:length(list) >0}">
								<div class="center-block text-center">
									<ul class="pagination mg-b-0 page-0 ">
								<!--이전 페이지 이동 -->
									<c:if test="${paging.nowPage != 1}">
										<li class="page-item">
											<c:if test="${empty mapCate && empty mapExp}">
												<a aria-label="Last" class="page-link" href="market-list?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}&selectedKey=${selectedKey}"><i class="fa fa-angle-double-left"></i></a>
											</c:if>
											<c:if test="${!empty mapCate|| !empty mapExp}">
												<a aria-label="Last" class="page-link" href="javascript:void(0)" onclick="checkedPage(${paging.startPage},${paging.cntPerPage},${selectedKey})"><i class="fa fa-angle-double-left"></i></a>
											</c:if>
										</li>
										<li class="page-item">
											<c:if test="${empty mapCate && empty mapExp}">
												<a aria-label="Last" class="page-link" href="market-list?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}&selectedKey=${selectedKey}"><i class="fa fa-angle-left"></i></a>
											</c:if>
											<c:if test="${!empty mapCate||!empty mapExp}">
												<a aria-label="Last" class="page-link" href="javascript:void(0)" onclick="checkedPage(${paging.nowPage-1},${paging.cntPerPage},${selectedKey})"><i class="fa fa-angle-left"></i></a>
											</c:if>
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
												<c:if test="${empty mapCate && empty mapExp}">
													<a class="page-link" href="market-list?nowPage=${p}&cntPerPage=${paging.cntPerPage}&selectedKey=${selectedKey}">${p}</a>
												</c:if>
												<c:if test="${!empty mapCate|| !empty mapExp}">
													<a class="page-link" href="javascript:void(0)" onclick="checkedPage(${p},${paging.cntPerPage},${selectedKey})">${p}</a>
												</c:if>
											</li>
										</c:when>
									</c:choose>
	 							 </c:forEach>
	 								<!--다음페이지이동 --> 
	 								   <c:if test ="${paging.nowPage != paging.lastPage}">
											<li class="page-item">
												<c:if test="${empty mapCate && empty mapExp}">
													<a aria-label="Next" class="page-link" href="market-list?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}&selectedKey=${selectedKey}"><i class="fa fa-angle-right"></i></a>
												</c:if>
												<c:if test="${!empty mapCate|| !empty mapExp}">
													<a aria-label="Next" class="page-link" href="javascript:void(0)" onclick="checkedPage(${paging.nowPage+1},${paging.cntPerPage},${selectedKey})"><i class="fa fa-angle-right"></i></a>
												</c:if>
											</li>
										
											<li class="page-item">
												<c:if test="${empty mapCate && empty mapExp}">
													<a aria-label="Last" class="page-link" href="market-list?nowPage=${paging.endPage}&cntPerPage=${paging.cntPerPage}&selectedKey=${selectedKey}"><i class="fa fa-angle-double-right"></i></a>
												</c:if>
												<c:if test="${!empty mapCate|| !empty mapExp}">
													<a aria-label="Last" class="page-link" href="javascript:void(0)" onclick="checkedPage(${paging.endPage},${paging.cntPerPage},${selectedKey})"><i class="fa fa-angle-double-right"></i></a>
												</c:if>
											</li>
										</c:if>
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
										<c:if test="${sessionScope.class_num==3||sessionScope.class_num==2}">
											<div style="margin-left:auto; float:right"><a href="market-posts" class="btn btn-primary">글쓰기</a></div>
										</c:if>
									</ul>
							 	 </div>
							 	 </c:if>
							</div>
						</div>
					</div>
					<!--/Add Lists-->
				</div>
			</div>
		</section>
		<!--/Add Listing-->
<script>
	function loginCheck(){
		alert("로그인 후 이용해주세요");
	}
	
	function addPick(market_num){
		//alert("marketnum"+market_num);
		$.ajax({
			type:"get",  
			url:'marketPick-add?market_num='+market_num+'&mem_email=${sessionScope.email}',
			success: function(){
				$('#emptyHeart'+market_num).remove();
				$('#heartDivID'+market_num).append('<a href="javasript:void(0)" class="item-card9-icons1 delwish" onclick="delPick('+market_num+')" id="fullHeart'+market_num+'" style="margin-right:40%; background-color: #e8564a;"><i class="fa fa fa-heart" style="color:white" ></i></a>');
			},
			error: function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	function delPick(market_num){
		//alert("marketnum"+market_num);
		$.ajax({
			type:"get",  
			url:'marketPick-del?market_num='+market_num+'&mem_email=${sessionScope.email}',
			success: function(){
				$('#fullHeart'+market_num).remove();
				$('#heartDivID'+market_num).append('<a href="javasript:void(0)" class="item-card9-icons1 wishlist" onclick="addPick('+market_num+')" id="emptyHeart'+market_num+'"> <i class="fa fa fa-heart-o" ></i></a>');
			},
			error: function(request,status,error){
				 console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	 }
//selectKey
	$('#marketOrder').change( function(){
	   // alert($(this).val());
	    var selectedKey= $(this).val();
	    var searchWord=$("#searchText").val();	
	   
	 //   alert("selectedKeyword"+selectedKey);
	    
	    var checkedCate = [];
		var checkedExp = [];
		var marketPrice=$("#price").val();
		$("input:checkbox[name='cate_num']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedCate.push($(this).val());
		});
		$("input:checkbox[name='pro_exp']:checked").each(function (index, item) {
			//alert(index+":"+ $(this).val());
			checkedExp.push($(this).val());
		});
    
	    if(checkedCate.length == 0 && checkedExp.length == 0){
	   	 	window.location.href="market-list?selectedKey="+selectedKey+"&searchWord="+searchWord;	
	    }else if(checkedCate.length != 0 ||checkedExp.length != 0){
	    	window.location.href="market-searchBoxList?checkedCate="+checkedCate+"&checkedExp="+checkedExp+"&marketPrice="+marketPrice+"&selectedKey="+selectedKey;
	    }
	});
	
</script>
<script>
	/*
	 $(document).ready(function(){
		$("#marketOrder").click(function(){						        
	         var orderKeyword = $("#marketOrder option:selected").val();
	          alert("order::"+orderKeyword);
	          window.location.href="admin_member?class_num="+class_num+"&keyword="+keyword;	
	      })
	})
	*/
</script>
<!--footer-->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->

</html>