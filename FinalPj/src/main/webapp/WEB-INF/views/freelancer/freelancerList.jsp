<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
		<!--Sliders Section-->
		<div>
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner7.jpg">
				<div class="header-text1 mb-0">
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
				<!--  				<h1 class=""><span class="font-weight-bold">12,32,523</span> Books Available</h1>  -->	
								</div>
								<div class="search-background mb-0">
						 <!--			<div class="form row no-gutters">
											<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="Search Your Book">
										</div>  
								  	<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Category</option>
													<option value="1">Action and adventure</option>
													<option value="2">Alternate history</option>
													<option value="3">Anthology</option>
													<option value="4">Chick lit</option>
													<option value="5">Children's literature</option>
													<option value="6">Comic book</option>
													<option value="7">Coming-of-age</option>
													<option value="8">Crime</option>
													<option value="9">Drama</option>
													<option value="10">Fairytale</option>
													<option value="11">Fantasy</option>
													<option value="12">Graphic novel</option>
													<option value="13">Historical fiction</option>
													<option value="14">Mystery</option>
													<option value="15">Paranormal romance</option>
													<option value="16">Picture book</option>
													<option value="17">Poetry</option>
													<option value="18">Political thriller</option>
													<option value="19">Romance</option>
													<option value="20">Satire</option>
													<option value="21">Science fiction</option>
													<option value="22">Love</option>
													<option value="23">Short story</option>
													<option value="24">Suspense</option>
													<option value="25">Thriller</option>
													<option value="26">Art</option>
													<option value="27">Autobiography</option>
													<option value="28">Biography</option>
													<option value="29">Book review</option>
												</optgroup>
											</select>
										</div>   
										<div class="col-xl-2 col-lg-3 col-md-12 mb-0">
											<a href="#" class="btn btn-lg btn-block btn-secondary">Search</a>
										</div>
									</div>  -->	
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
					<h4 class="page-title">Freelancer List</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Users List</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->
		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<!--Right Side Content-->
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
								<h3 class="card-title">구분</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											개발
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											퍼블리싱
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											디자인
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											기획
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											기타
											<span class="label label-secondary float-right">14</span>
										</span>
									</label>
								</div>
							</div>
							<div class="card-header border-top">
								<h3 class="card-title">경력</h3>
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
							<div class="card-header border-top">
								<h3 class="card-title">근무형태</h3>
							</div>
							<div class="card-body">
								<div class="filter-product-checkboxs">
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox1" value="option1">
										<span class="custom-control-label">
											상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											반상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											자택
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="checkbox2" value="option2">
										<span class="custom-control-label">
											상관없음
										</span>
									</label>									
								</div>
							</div>
							<!-- <div class="card-footer">
								<a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
							</div> -->
						</div>
					</div>
					<!--Left Side Content-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card item2-gl ">
							<div class="item2-gl-nav d-flex">
								<h6 class="mb-0 mt-2">Showing &nbsp;${paging.nowPage}&nbsp; to 10 of &nbsp;${paging.endPage}&nbsp;entries</h6>
								<ul class="nav item2-gl-menu ml-auto">
								<!-- 	<li class=""><a href="#tab-11" class="active show" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
									<li><a href="#tab-12" data-toggle="tab" class="" title="Grid"><i class="fa fa-th"></i></a></li>-->
								</ul> 
								<div class="d-flex">
								<!-- <label class="mr-2 mt-1 mb-sm-1">Sort By:</label>  -->	
									<select name="item" class="form-control select-sm w-90" >
										<option value="1">최신순</option>
										<option value="2">평점높은순</option>
										<option value="3">조회수높은순</option>										
									</select>
								</div>
							</div>
						</div>
						<!--Add lists-->
					<c:forEach var="list" items="${freelancerList}" varStatus="status">
					<div> <!-- div 추가 빼면 겹침.(c:forEach때문) -->
						<div class="card overflow-hidden">
							<!-- <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div> -->
							<div class="card-header pt-5 pb-5">
								<div  class="d-flex">
							<!-- 		<span class="avatar avatar-md  d-block brround cover-image mr-4" data-image-src="../images/faces/male/25.jpg"></span>  -->
				<div class="media mt-0 p-1">                  
					<div class="d-flex mr-3">
						<c:if test="${list.member.get(0).class_num == 3}">
							<c:choose>
                                <c:when test="${list.free_fname != null}">
									<img src="../hifiveImages/free_thumb/${list.free_fname}" alt="X" class="avatar-xxl brround mx-auto"> 
								</c:when>
								<c:otherwise>
									<i class="fa fa-user-circle text-muted mr-1 fa-3x" ></i>	
								</c:otherwise>
							</c:choose>
						</c:if>
								<c:if test="${list.member.get(0).class_num != 3}">
									<i class="fa fa-user-circle text-muted mr-1 fa-3x" ></i>	
								</c:if>	
							</div>
						</div>
								<div>
									<c:forEach var="num" items="${list.list_review}" varStatus="status">
										<a href="freelancercontent?free_code=${list.free_code}&pro_num=${num.pro_num}" class="font-weight-semibold fs-18 text-body">&nbsp;&nbsp;${list.free_name}</a><br>
									</c:forEach>
									<c:forEach var="exp" items="${list.list_freelancerprofile}" varStatus="status">
										<small>&nbsp;&nbsp;&nbsp;경력 &nbsp;&nbsp;${exp.pro_exp}&nbsp;&nbsp;년</small>&nbsp;|	
									</c:forEach>			
									<c:forEach var="type" items="${freelancerList2}" varStatus="status">
									<c:forEach var="typename" items="${type.list_type}" varStatus="status">
										<c:if test="${list.free_code eq type.free_code}">
											<small>&nbsp;&nbsp;</small>${typename.type_name}
										</c:if>
									</c:forEach>
						 		</c:forEach>				
							 
									</div>
								
								
								</div>
								<input type="hidden" value="${cor.cor_code}" class="cor_codes"/>
									<c:if test="${empty cor}">
									<div class="item-card9-icons zzim">
										<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:onlyCor();">
										 <i class="fa fa fa-heart-o" style=""></i></a>
									</div>
								</c:if>
								<c:if test="${!empty cor}">
								<c:forEach var="i" begin="0" end="${list.list_freelancerprofile.size()-1}">
									
								<c:choose>
									<c:when test="${pronumList.contains(list.list_freelancerprofile.get(i).pro_num)}">
										<div class="item-card9-icons"  id="zzim${list.list_freelancerprofile.get(i).pro_num}" >
											<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;" onclick="javascript:del_wish(${list.list_freelancerprofile.get(i).pro_num})">
											 <i class="fa fa fa-heart" style="color:white"></i></a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="item-card9-icons">
											<a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish${list.list_freelancerprofile.get(i).pro_num}"style="margin-right:40%" onclick="javascript:wish(${list.list_freelancerprofile.get(i).pro_num})">
											 <i class="fa fa fa-heart-o" style=""></i></a>
										</div>
									</c:otherwise>	
								</c:choose>
								<div class="item-card9-icons"  id="zzim${list.list_freelancerprofile.get(i).pro_num}">
	
								</div>
							
								</c:forEach>
								</c:if>
								
							</div>
			<script>
			function onlyCor(){
				alert("기업 회원만 이용가능한 서비스 입니다.")
			}
			function wish(pro_num){	
				$.ajax({
					type:"get",  
					url:"<c:url value='free_wish'/>",
	    			data:"pro_num="+pro_num+"&cor_code="+$(".cor_codes").val(),
					success: function(data){
						$('#insertwish'+pro_num).remove();
						$('#zzim'+pro_num).append("<a href='javasript:void(0)' class='item-card9-icons' id='delwish"+pro_num+"' style='margin-right:40%; background-color:#e8564a' onclick='javascript:del_wish("+pro_num+")'><i class='fa fa fa-heart' style='color:white'></i></a>");
						alert("프리랜서 프로필이 찜목록에 추가되었습니다.")
					},
					error: function(data){
					alert("에러발생");
					}
				});
			}
			function del_wish(pro_num){
				$.ajax({
					type:"get",
					url:"<c:url value='free_wish_del'/>",
					data: "pro_num="+pro_num+"&cor_code="+$(".cor_codes").val(),
					success:function(data){
						$('#delwish'+pro_num).remove();
						$('#zzim'+pro_num).append("<a href='javasript:void(0)' class='item-card9-icons wishlist' id='insertwish"+pro_num+"' style='margin-right:40%' onclick='javascript:wish("+pro_num+")'><i class='fa fa fa-heart-o'></i></a>");
					}
				})
			}
			</script>
						<div class="card-body pb-2 hide-details">
									<ul class="usertab-list mb-0">
										<h4>진행한 프로젝트</h4>				
									<c:forEach items="${freelancerList3}" var="project" >
										<c:forEach items="${project.list_freelancerprofile}" var="profile" >								
											<c:if test="${list.free_code eq profile.free_code}">							
												<c:forEach items="${project.list_project}" var="sub" >
												<i class="fa fa-caret-right mr-2"></i> <span class="font-weight-semibold">${sub.pj_sub}</span><br/>
												</c:forEach>
											</c:if>
										</c:forEach>							
									</c:forEach>							
								</ul>								
							</div> 
							<!-- 별점 -->
							<div class="card-footer">
								<div class="row">
									<div class="product-filter-desc col">										
										<div class="rating-stars d-inline-flex mb-2 mr-3">
										<c:forEach  var="star" items="${list.list_review}" varStatus="status">	
												<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value">
									 		    <span class="rated-products-ratings">
		                        		      <c:if test="${star.freerev_star >= 0}">
			                                        <c:forEach var="1" begin="1" end="${star.freerev_star}">
			                                          <i class="fa fa-star text-warning"> </i>
			                                        </c:forEach>
			                                        <c:forEach var="1" begin="1" end="${5-star.freerev_star}">
													  <i class="fa fa-star-o text-warning"> </i>
													</c:forEach>
											  </c:if>      
		                                      	 </span>&nbsp; ${star.freerev_star}	&nbsp;&nbsp;&nbsp;							
										</c:forEach>
												 <c:forEach  var="views" items="${list.list_freelancerprofile}" varStatus="status">	
													<a class="icons"><i class="fa fa-eye text-muted mr-1"></i>${views.pro_vcnt}&nbsp;Views</a>
												 </c:forEach>
												&nbsp;&nbsp;&nbsp;
												 <c:forEach  var="pcnt" items="${list.list_freelancerprofile}" varStatus="status">
												 	<a class="icons"><i class="fa fa-heart text-muted mr-1"></i>${pcnt.pro_pcnt}&nbsp;Picks</a>
												 </c:forEach>
											</div>
										</div>
									<div class="col col-auto dams" >
										<a class="icons" href="freelancercontent?free_code=${list.free_code}"><i class="fa fa-angle-double-right text-muted mr-1"></i>더보기</a>
									</div>							
								</div>
							</div>		
						</div>		
					 </c:forEach>
				</div>
						<!--Add lists-->
	<!-- 					<div class="card overflow-hidden">
							 <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div> 
					<div class="card-header pt-5 pb-5">
								<div  class="d-flex">
							 		<span class="avatar avatar-md  d-block brround cover-image mr-4" data-image-src="../images/faces/male/25.jpg"></span>  
									<a class="icons"><i class="fa fa-user-circle text-muted mr-1 fa-3x" ></i></a>
									<div>
										<a href="employer" class="font-weight-semibold fs-18 text-body">강아지</a><br>
										<a href="employer"><small>경력 3년</small></a>&nbsp;|
										<a href="employer.html"><small>디자인</small></a>
									</div>
								</div>
								<div class="item-card2-icons">
									<a href="" class="item-card9-icons1 wishlist"><i  class="fa fa fa-heart-o"></i></a>
								</div>
							</div>
						<div class="card-body pb-2 hide-details">
								<ul class="usertab-list mb-0">
									<h4>수행한 프로젝트</h4>								
									<i class="fa fa-caret-right mr-2"></i> <span class="font-weight-semibold"></span> Cafe24 app Clic, 비디오 모니터링 시스템, WITbiz IT 여성 채용사이트, 게임물 모니터링 시스템, 아이코다 웹사이트 리뉴얼<br/>									
									
								</ul>								
							</div> 

							<div class="card-footer">
								<div class="row">
									<div class="product-filter-desc col">										
										<div class="rating-stars d-inline-flex mb-2 mr-3">
												<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value"  value="4">
		                                       <span class="rated-products-ratings">
		                                          <i class="fa fa-star text-warning"> </i>
		                                          <i class="fa fa-star text-warning"> </i>
		                                          <i class="fa fa-star text-warning"> </i>
		                                          <i class="fa fa-star text-warning"> </i>
		                                          <i class="fa fa-star-half-o text-warning"> </i>		                                         
		                                       </span>	4.5 &nbsp;&nbsp;&nbsp;
												<a class="icons"><i class="fa fa-eye text-muted mr-1"></i>23,030,042 views</a>
										</div>
									</div>
									<div class="col col-auto dams" >
										<a class="icons" href="employer"><i class="fa fa-angle-double-right text-muted mr-1"></i>더보기</a>
									</div>
								</div>
							</div>				
						</div>-->
						<!-- 페이징 -->
							<div class="center-block text-center">
                           <ul class="pagination mb-0">			
								<div class="card-body">
									<ul class="pagination mg-b-0 page-0 ">
                          <c:if test ="${paging.nowPage != paging.startPage}">
                           <!--이전 페이지 이동 -->
                            <li class="page-item">
								<a aria-label="Last" class="page-link" href="freelancerList?nowPage=${paging.startPage}&cntPerPage=${paging.cntPerPage}">
								<i class="fa fa-angle-double-left"></i></a>
							</li>	
							<li class="page-item">
								<a aria-label="Next" class="page-link" href="freelancerList?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">
								<i class="fa fa-angle-left"></i></a>
							</li>	
                  			</c:if>
                           <!--페이지번호 -->
             			   <!-- 시작페이지~끝페이지 -->
						    <c:forEach var='p' begin="${paging.startPage}" end="${paging.endPage}" >
                              <c:choose>
                                 <c:when test="${p == paging.nowPage}">
                                    <li class='page-item active'><a class="page-link">${p}</a></li>
                                 </c:when>
                                 <c:when test = "${p != paging.nowPage }">
                                    <li class="page-item"><a class="page-link"  href="freelancerList?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a></li>
                                 </c:when>
                              </c:choose>
                           </c:forEach>
                              <c:if test ="${paging.nowPage != paging.lastPage}">
                                 <li class="page-item">
									<a aria-label="Next" class="page-link" href="freelancerList?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-right"></i></a>
								 </li>  
								<li class="page-item">
									<a aria-label="Last" class="page-link" href="freelancerList?nowPage=${paging.endPage}"><i class="fa fa-angle-double-right"></i></a>
								</li>
                              </c:if>         					
				<!--		<div class="card-body" style="margin:0 auto; align:center;">
							<ul class="pagination mg-b-0 page-0 ">
								<li class="page-item">
									<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
								</li>
								<li class="page-item">
									<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
								</li>
		
								<li class="page-item active">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link hidden-xs-down" href="#">3</a>
								</li>
								<li class="page-item ">
									<a class="page-link" href="#">4</a>
								</li>
								<li class="page-item">
									<a class="page-link hidden-xs-down" href="#">5</a>
								</li>
						
								<li class="page-item">
									<a aria-label="Next" class="page-link" href="freelancerList?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}"><i class="fa fa-angle-right"></i></a>
								</li>
								<li class="page-item">
									<a aria-label="Last" class="page-link" href="freelancerList?nowPage=${paging.endPage}"><i class="fa fa-angle-double-right"></i></a>
								</li>
							</ul>
						</div>-->
						<!--Add lists-->
					</div>
				</div>
			</div>
		</section>
		<!--Add Listing-->
		<!-- Message Modal -->
		<div class="modal fade" id="contact" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Send Message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="number" class="form-control" name="example-disabled-input" placeholder="234-652-6358" disabled>
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
		<!-- Message Modal -->
		<div class="modal fade" id="contact1" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Send Message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="email" class="form-control" id="contact-email" placeholder="test123js@gmail.com" disabled>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Subject">
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
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->