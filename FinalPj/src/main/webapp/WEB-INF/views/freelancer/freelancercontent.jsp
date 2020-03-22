<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--header-->
<!-- hifive ...-->
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
									<h2 class=""><span class="font-weight-bold"></span> Freelancer</h2>
									<h6>56,868개의 클라이언트 기업과 73,392개의 개발회사 & 프리랜서가 함께하는 sdfdsfdsfdsfsdfds</h6>
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
					<h4 class="page-title">Freelancer</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active" aria-current="page">Job List</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
	<!--	<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8 col-md-12">-->
			<section class="sptb">
			<div class="col-md-6 mx-auto">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-md-12">					
							<!--Add lists-->
						<div class="card mb-lg-0">
							<div class="card-body ">
								<div class="row">
									<div class="col">
										<div class="profile-pic mb-0">
											<div class="d-md-flex">
											   <!--	<img src="../images/faces/female/25.jpg" class="w100 h-100 brround" alt="user">   --> 
											<div style="margin-top:21px;">   
 											<c:if test="${content.get(0).freelancer.get(0).free_fname ne null}">
				
												<img src="../hifiveImages/free_thumb/${content.get(0).freelancer.get(0).free_fname}" alt="X" class="avatar-xxl brround"> 
											</c:if> 
											<c:if test="${content.get(0).freelancer.get(0).free_fname eq null}">
												<i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i>	
											</c:if>   
											</div>  
											   
											 <!-- <a class="icons"><i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i></a> --> 
											 	
											 	
											 	
											
												<c:forEach items="${content}" var="list"  varStatus="status">
												<div class="ml-4">
													<c:forEach items="${list.freelancer}" var="profile"  varStatus="status">
														<p class="text-dark"><h4 class="mt-3 mb-1 font-weight-bold">${profile.free_name}</h4></p>
													</c:forEach>
													<span class="text-gray"></span>&nbsp;
													<span class="text-muted">${list.pro_exp}&nbsp;년</span><br>
												<c:forEach items="${content3}" var="key"  varStatus="status">
												<c:forEach items="${key.frKeyWord}" var="keyword"  varStatus="status" begin="0" end="3">
													<span class="text-muted">${keyword.key_name} </span> &nbsp;
												</c:forEach>
												</c:forEach>
												<br/>
													<span class="text-gray">${list.pro_addr}</span>&nbsp;<br/>
													<a class="icons"><i class="fa fa-eye text-muted mr-1"></i> ${list.pro_vcnt} Views</a>&nbsp;&nbsp;
													<a class="icons"><i class="fa fa-heart text-muted mr-1"></i>&nbsp;${list.pro_pcnt} Picks<br/>
													<div class="rating-stars d-inline-flex mb-2 mr-3">
													<!-- 별점 -->
														<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value">
															<div class="rating-stars d-inline-flex mb-2 mr-3">
															<c:if test="${empty star}">
																<span class="rated-products-ratings">
																	 <i class="fa fa-star-o text-warning"></i>
																	 <i class="fa fa-star-o text-warning"></i>
																	 <i class="fa fa-star-o text-warning"></i>
																	 <i class="fa fa-star-o text-warning"></i>
																	 <i class="fa fa-star-o text-warning"><span class="text-muted">&nbsp;0</span></i>
																</span>
															</c:if> 	
															<c:forEach items="${star}" var="avg_star"  varStatus="status">	
															<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value">
												 		    <span class="rated-products-ratings">
					                        		        <c:if test="${avg_star.freerev_star >= 0}">
						                                        <c:forEach var="1" begin="1" end="${avg_star.freerev_star}">
						                                          <i class="fa fa-star text-warning"> </i>
						                                         </c:forEach>
					                                         
						                                        <c:forEach var="1" begin="1" end="${5-avg_star.freerev_star}">
																  <i class="fa fa-star-o text-warning"> </i>
																</c:forEach>
															</c:if>    	
															</div>
															<!-- 별점표시 텍스트 -->	
																<c:if test="${avg_star.freerev_star ne null}">
																${avg_star.freerev_star}
																</c:if>
															</c:forEach>	 
															<!-- 별점표시 텍스트 위치 끝 -->	
													</div>
												</div>
												</c:forEach>
											</div>
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
								<c:forEach var="i" begin="0" end="${content.size()-1}">
									<c:choose>
										<c:when test="${pronumList.contains(list.list_freelancerprofile.get(i).pro_num)}">
											<div class="item-card9-icons"  id="zzim${content.get(i).pro_num}" >
												<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;" onclick="javascript:del_wish(${content.get(i).pro_num})">
												 <i class="fa fa fa-heart" style="color:white"></i></a> 
											</div>
										</c:when>
										<c:otherwise>
											<div class="item-card9-icons">
												<a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish${content.get(i).pro_num}"style="margin-right:40%" onclick="javascript:wish(${content.get(i).pro_num})">
												 <i class="fa fa fa-heart-o" style=""></i></a>
											</div>
										</c:otherwise>	
									</c:choose>
										<div class="item-card9-icons"  id="zzim${content.get(i).pro_num}"></div>
								</c:forEach>
							</c:if>
						</div> 
								<h4 class="pb-3 border-bottom mt-4">Profile</h4>
								<c:forEach items="${content}" var="list"  varStatus="status">
									<c:forEach items="${list.freelancer}" var="profile"  varStatus="status">
								<ul class="usertab-list mb-0">
									<li><span class="font-weight-semibold">이름 :</span> ${profile.free_name}</li>
									<li><span class="font-weight-semibold">경력 :</span> ${list.pro_exp}&nbsp;년</li>
									</c:forEach>
								</c:forEach>
								<c:forEach items="${content4}" var="content"  varStatus="status">
									<li><span class="font-weight-semibold">직종:</span>&nbsp;${content4[0].type_name}</li>
									</c:forEach>
							<c:forEach items="${content}" var="list"  varStatus="status" >
								
									<li><span class="font-weight-semibold">사용기술 :</span>
										<c:forEach items="${content3}" var="key"  varStatus="status">
											<c:forEach items="${key.frKeyWord}" var="keyword"  varStatus="status" begin="0" end="2">
												${keyword.key_name}&nbsp;
											</c:forEach>
										</c:forEach>
									</li>																	
									<!-- <li><span class="font-weight-semibold">주소 :</span> ${list.pro_addr} </li> -->
									<li><span class="font-weight-semibold">선호지역 :</span> ${list.pro_workplace}</li>														
									<li><span class="font-weight">Email :</span> ${list.mem_email} </li>
									<c:forEach items="${list.freelancer}" var="profile"  varStatus="status">
									<li><span class="font-weight-semibold">연락처 :</span>${tel.get(0).freelancer.get(0).free_tel}</li>
									</c:forEach>
									<li><span class="font-weight-semibold">최종학력 : &nbsp;${list.pro_edu}</span></li>
									<li><span class="font-weight-semibold">현재 근무가능여부 :
										<c:if test ="${list.pro_ox == 'on'}">가능</c:if>
										<c:if test ="${list.pro_ox == 'off'}">불가능</c:if></li></span> 
									<li><span class="font-weight-semibold">선호근무형태 :</span>
										<c:choose> 
											<c:when test="${list.pro_place eq 0}">
												비상주
											</c:when>
											<c:when test="${list.pro_place eq 1}">
												상주
											</c:when>
											<c:when test="${list.pro_place eq 2}">
												반상주
											</c:when>
											<c:otherwise>
												상관없음
											</c:otherwise>
										</c:choose>
									</li>
									<li><span class="font-weight-semibold">업무가능일 :</span>  ${list.pro_start} </li>	
									<li class="w-100 mt-3"><span class="font-weight-semibold"><h4 class="pb-3 border-bottom mt-4">자기소개</h4>${list.pro_cv}</span></li>
									<!-- <li><span class="font-weight-semibold"></span> 201402</li> 
									<li><span class="font-weight-semibold"></span>  ${list.pro_edu}</li>-->
									</ul>
								
								</c:forEach>

					<!--  		<h4 class="pb-3 border-bottom mt-4">Employment Details</h4>
								<div><i class="fa fa-caret-right mr-2"></i> Currently Working at  <span class="font-weight-bold">Info Tech Pvt Ltd</span></div>
								<div><i class="fa fa-caret-right mr-2"></i> 3 Yrs Of Working Experience in   <span class="font-weight-bold">Info Tech Pvt Ltd</span></div> -->	
								<h4 class="pb-3 border-bottom mt-5">프로젝트</h4>
								<div class="table-responsive">
									<table class="table table-bordered border-top mb-0">
									
									<c:if test="${empty content2}">
										수행한 프로젝트가 없습니다.
									</c:if>
									
									<c:forEach items="${content2}" var="content"  varStatus="status">
										<c:forEach items="${content.frProject}" var="project"  varStatus="status">
											<tr>
												<c:if test="${project.pj_num ne null}">
										<thead>
											<tr>
												<th class="pb-3 border-bottom mt-4"><h4>수행한 프로젝트</h4></th>
												<th>사용언어  & 주요기술</th>
											</tr>
										</thead>
									<tbody>	
										<td scope="row"><b>${project.pj_sub}</b><br/>
											<c:forEach items="${content.applied_project}" var="apply"  varStatus="status">
												<span>${apply.appp_date}</span>
											</c:forEach>	
										</td>
											<c:if test="${project.pj_sub ne null}">
												<td scope="row">
													<c:forEach items="${content5}" var="content"  varStatus="status">
															<c:forEach items="${content.frKeyWord}" var="key"  varStatus="status" >
																${key.key_name}
															</c:forEach>
														</c:forEach>
													</td>
												</c:if>		
											</c:if>	
										</td>
									</c:forEach>
								</c:forEach>		
										</tbody>	
									</table>
								</div>
							</div>
							<div class="card-body" align="right">
								<div class="icons">
							<!-- 	<span><a href="freelancerdelete?free_code=${list.free_code}" class="btn btn-secondary icons">삭제</a></span> -->
									<a href="freelancerList" class="btn btn-primary icons">목록</a>
								</div>
							</div>
						</div>
					<br/>
						<!--Add lists-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">리뷰</h3>
							</div>
							<!--  <div class="card-body">-->
								<div class="row">
							<!-- 리뷰 -->
							${review}
								<c:if test="${empty review}">
									<div class="col-md-12">
										<div id="replyItem0" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: 0px; display: inline-block" >
											<div class="media mt-0 p-5">
			                                 	<div class="media-body"> 
			                                		 등록된 리뷰가 없습니다.      
												</div>
								   	 		</div>
								    	</div>		
									</div>
								</c:if>		
							<c:if test="${!empty review}">	
								<c:forEach items="${review}" var="review_content"  varStatus="status">							
									<div class="col-md-12  before_review">
									<div id="replyItem0" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: 0px; display: inline-block" >
									<div class="media mt-0 p-5">
			                 
          								  <div>   
 											<c:if test="${fnames ne null}">
												<img src="../hifiveImages/free_thumb/${fnames.free_fname}" alt="X" class="avatar-xxl brround"> 
											</c:if> 
											<c:if test="${fnames eq null}">
												<i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i>	
											</c:if> 
						                     </div> &nbsp;&nbsp;&nbsp;

			                                 <div class="media-body"> 
						                          <h5 class="mt-0 mb-1 font-weight-semibold">${review.get(0).mmember.mem_name}
												<!-- 	<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified" >							
														<i class="fa fa-check-circle-o text-success"></i></span> -->
													 	&nbsp;&nbsp;&nbsp;<small class="text-muted" name="freerev_rdate" id="freerev_rdate"><i class="fa fa-calendar"></i>&nbsp;${review_content.freerev_rdate}</small>
													 </h5>
													<c:forEach items="${review}" var="review_content"  varStatus="status">	
												 		 <span class="rated-products-ratings">
					                        		        <c:if test="${review_content.freerev_star >= 0}">
						                                        <c:forEach var="1" begin="1" end="${review_content.freerev_star}">
						                                          <i class="fa fa-star text-warning"> </i>
						                                         </c:forEach>
					                                         
						                                        <c:forEach var="1" begin="1" end="${5-review_content.freerev_star}">
																  <i class="fa fa-star-o text-warning"> </i>
																  
																</c:forEach>
															 </c:if>	${review_content.freerev_star}
															</span>    			
													</c:forEach>
												</div>
									<div class="col-md-6 text-center align-items-center">
									</div>      

									</div>                    
										<c:forEach items="${review}" var="review_content"  varStatus="status">	
		                                 <div class="font-13  mb-2 mt-2" style="margin-left:80px;">${review_content.freerev_cont}</div>
		                              	</c:forEach>      		
									</div>	
						
								<c:if test="${sessionScope.email eq review.get(0).mmember.mem_email}">
									<div class="card-body item-user" align="right">
										<div class="icons"> 
								   	 		<!-- <form method="get" action="review_del" name="DeleteReview" style="padding-right:58px;">-->
								   	 		<form method="get" action="review_del" name="DeleteReview" style="margin-right;">						
								   				 <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteModal">삭제</button>
								   				 
								   			</form>
								   		<!-- <form method="post" action="review_update" name="review_update" style="margin-top:-38px;">								    		
								   				<button type="button" class="btn btn-primary" id="updateReview" onclick="update();">수정</button>
								   		    </form> -->		
								   	 	</div>
								    </div>	
								 </c:if>   
								</div>		
							</c:forEach>									
								
					<!-- 페이징 -->				
					<div class='paginationDiv' id="tab-11" style="margin:0 auto; align:center;" >
						 <div class='center-block text-center'> 
                           <ul class="pagination mb-0">         
                        <div class="card-body" style="margin:0 auto; align:center;" id="review_paging">
                           <ul class="pagination mg-b-0 page-0 ">
                          <c:if test ="${paging.nowPage != 1}">
                       <!--이전 페이지 이동 -->
                           <li class="page-item">
                           <a class="page-link noMem_prev" href="freelancercontent?nowPage=${paging.firstPage}&cntPerPage=${paging.cntPerPage}&free_code=${paging.free_code}&pro_num=${paging.pro_num}">
		                       <i class="fa fa-angle-double-left"></i></a>
                    		 </li>
                    		    
		                   <li class="page-item">
		                        <a aria-label="Next" class="page-link" href="freelancercontent?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}&free_code=${paging.free_code}&pro_num=${paging.pro_num}">
		                       <i class="fa fa-angle-left"></i></a>
		                  </li>   
                              
                          </c:if>
                         
                           <!--페이지번호 -->
           
 <!-- 시작페이지~끝페이지 -->    <c:forEach var='p' begin="1" end="${paging.lastPage}" >	 
                              <c:choose>
                                 <c:when test="${p == paging.nowPage}">
                                  <c:if test ="${paging.nowPage != 1}">
	                                  <c:forEach var='p' begin="${paging.startPage}" end="${p}" >
	                                  	<li class='page-item active'><a class="page-link">${p}</a></li>
	                                  </c:forEach>
                                  </c:if>
                                  <!--  <li class='page-item active'><a class="page-link">${p}</a></li> --> 
                                    
                                 </c:when>
                                 <c:when test = "${p != paging.nowPage }">
									
                                  <li class="page-item"><a class="page-link" href="freelancercontent?nowPage=${p}&cntPerPage=${paging.cntPerPage}&free_code=${paging.free_code}&pro_num=${paging.pro_num}">${p}</a></li> 
                                 </c:when>
                              </c:choose>
                           </c:forEach>
                         <c:if test ="${paging.nowPage != paging.lastPage}">
	                        <li class="page-item">
	                           <!-- <a aria-label="Next" class="page-link" id="goNextPage"  onclick="reviewList(${paging.free_code},${paging.pro_num},${paging.cntPerPage},${paging.nowPage+1});"> -->
	                           <a class="page-link" href="freelancercontent?nowPage=${paging.nowPage+1}&cntPerPage=${paging.cntPerPage}&free_code=${paging.free_code}&pro_num=${paging.pro_num}">
	                           <i class="fa fa-angle-right"></i></a>
	                         </li>  
	                        <li class="page-item">
	                           <a aria-label="Last" class="page-link" href="freelancercontent?nowPage=${paging.lastPage}&cntPerPage=${paging.cntPerPage}&free_code=${paging.free_code}&pro_num=${paging.pro_num}"><i class="fa fa-angle-double-right"></i></a>
	                        </li>
                         </c:if>
                        </ul>
                      </div>
                    </ul>
                 </div> 
                 </div>				
							
				</c:if>			
			</div>
				<!--	</div>-->	
		</div>
			<!-- 리뷰작성 -->
		<c:if test="${sessionScope.email ne null}">
			<c:if test="${sessionScope.email ne content.get(0).mem_email}">
			<form method="post" action="InsertReview" name="InsertReview">
				<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">리뷰 작성하기</h3>
							</div>
							<div class="card-body">
								<div>
									<div class="ml-auto">
										<div class="rating-stars block">
											<input id="freerev_star" name="freerev_star" type="number" readonly="readonly" class="rating-value star"><!-- name="rating-stars-value" -->
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
											<textarea class="form-control" id="freerev_cont" name="freerev_cont" rows="6"></textarea>
											<c:if test="${!empty review}">
												<input type="hidden" id="freerev_num" name="freerev_num" value="${review.get(0).freerev_num}" />
											</c:if>
												<input type="hidden" id="free_code" name="free_code" value="${content3.get(0).free_code}" />	
												<input type="hidden" id="mem_email" name="mem_email" value="${sessionScope.email}" />
												<input type="hidden" id="pro_num" name="pro_num" value="${content3.get(0).pro_num}" />
												
										</div>							
											<div align="right">
											 <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#insertModal" style="margin-right:-1px;" >작성하기</button>
   									</form>
   								 </div>
								</div>
							</div>
						</div>
					</c:if></c:if>
<!-- 지우면깨짐 -->	</div> <!-- 지우면깨짐 -->
				</div>
			</div>
		</section>
		<!--Add Listing-->
<!-- delete Modal -->   
      <div id="deleteModal" class="modal fade delete">
         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <p>리뷰를 정말 삭제할까요?</p>
               </div>
               <div class="modal-footer">
             	  <button class="btn btn-primary" type="button" style="color:white;"  id="deletereview" name="deletereview" onclick="delreview();">네</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
<!-- /delete Modal -->
<!-- insert Modal -->   
      <div id="insertModal" class="modal fade insert">
         <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <p>리뷰를 작성 할까요?</p>
               </div>
               <div class="modal-footer">
             	  <!-- <button class="btn btn-primary" type="button" style="color:white;" onclick="inreview();">네</button> -->
             	  <button class="btn btn-primary" type="button" style="color:white;" onclick="insertOK();">네</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
<!-- /insert Modal -->

<script>    
	function inreview(value){
		
		cont=$("#freerev_cont").val();
		pnum=$("#pro_num").val();
		fcode=$("#free_code").val();
		mem_email =$("#mem_email").val();
		freerev_star =$("#freerev_star").val();

		var objParam={
			"cont" : cont,
			"pnum" : pnum,
			"fcode" : fcode,
			"mem_email" : mem_email,
			"freerev_star" : freerev_star
		};
		
	 $.ajax({
		 type:"post",
		 url:"InsertReview",
		 data:objParam,
		 success: function(data) {
			 $(".insert").remove();
			 $(".modal-backdrop").remove();
			
			 var free_code ="<c:out value="${paging.free_code}" />";
			 var pro_num ="<c:out value="${paging.pro_num}" />";
			 
			location.replace("freelancercontent?free_code="+free_code+"&pro_num="+pro_num);
			
		 },
		 error:function(data){
			 alert("별점을 입력해 주세요");
		 }
		});
	 }

	function insertOK(value){
		
		cont=$("#freerev_cont").val();
		var cont_cnt=Object.keys(cont).length;
		//alert(cont_cnt);

		if (cont_cnt == 0){
				alert("내용을 입력해 주세요");
			}else{
				inreview();
			}
		}
	
	function update(value){
		
	 $.ajax({
		 type:"post",
		 url:"reviewUpdate",
		 data: "cont="+cont+
			   "&freerev_star="+freerev_star+
			   "&freerev_num="+freerev_num,
		 
		 success:function(data){	
			 $(".insert").remove();
			 $(".modal-backdrop").remove();
			 history.go();
			   },
		 error:function(data){
			 alert("에러발생2");
		       }
		});
	 }

	function delreview(){
			freerev_num=$("#freerev_num").val();
			
		 $.ajax({
			 type:"get",
			 url:"review_del",
			 data:"freerev_num="+freerev_num,
			 
			 success:function(data){	
				 $(".delete").remove();
				 $(".modal-backdrop").remove();
				 var free_code ="<c:out value="${paging.free_code}" />";
				 var pro_num ="<c:out value="${paging.pro_num}" />";
				 var nowpage ="<c:out value="${paging.nowPage}" />";
				 var cntpage ="<c:out value="${paging.cntPerPage}" />";
	
				 
				//  onSuccessReview();
				location.replace("freelancercontent?free_code="+free_code+"&pro_num="+pro_num+"&nowPage="+nowpage+"&cntPerPage="+cntpage);
				   },
			 error:function(data){
				 alert("에러발생2");
			       }
			});
	 }
	
	//리뷰 페이징//
	function reviewList(free_code, pro_num, nowPage){
		
	
		var nowPage =1;
	
		
		 var objParam={
					"free_code" : free_code,
					"pro_num" : pro_num,
					"nowPage" : nowPage
				};
	
		$.ajax({
			type:'GET',
	  	 	url:'freelancercontent_ajax',
	    	dataType:'json',
			data: objParam,
	    	async :true,
	    	error:onError,
	    	success: onSuccessReview
		});
		
		
	}
	

	function onError(request,status,error){
		alert(error);
	    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	}
	function onSuccessReview(data){
		console.log("data:"+data);
		var list = data.review_ajax;
		var cnt = list.length;
		
		var fname = data.fnames[0].free_fname;
		var fcnt = data.fnames.length;
		
		var pages=data.freelancerreview;
		
		console.log("data.fnames.length"+data.fnames.length);
		console.log("data.fnames:"+data.fnames[0].free_fname);
		console.log("fcnt"+fcnt);
		console.log("fname"+fname);
		
		for(y=0; y<fcnt; y++){	
			var filename= fname[y];
		}
		
		var filename=data.fnames.free_fname;

		
		for(i=0; i<cnt; i++){
			
				var cont ='';//문자열
				var name = list[i].mmember.mem_name; 
				var star = list[i].freerev_star;
				var date = list[i].freerev_rdate;
				var fr_cont = list[i].freerev_cont;

			//	$(".before_review").remove();
		
				function getFormatDate(date){
				    var year = date.getFullYear();             
				    var month = (1 + date.getMonth());          
				    month = month >= 10 ? month : '0' + month;  
				    var day = date.getDate();                  
				    day = day >= 10 ? day : '0' + day;         
				    return  year + '-' + month + '-' + day;
				}
				var date = new Date();
				date = getFormatDate(date);
				
				cont+=
				'<div class="col-md-12  before_review">'	
				+'<div id="replyItem0" style="width: 600px; padding: 5px; margin-top: 5px; margin-left: 0px; display: inline-block" >'
				+'<div class="media mt-0 p-5">';		
				if(fcnt > 0){
					cont+='<div><img  alt="X" class="avatar-xxl brround" src="../hifiveImages/free_thumb/'+fname+'">';
				}else{
					cont+='<i class="fa fa-user-circle text-muted mr-1 fa-5x" ></i>';	
				}
					cont+='</div> &nbsp;&nbsp;&nbsp;'
					
				+'<div class="media-body">'
				+'<h5 class="mt-0 mb-1 font-weight-semibold">'+name
				+'<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="" data-original-title="verified >'
				+'<i class="fa fa-check-circle-o text-success"></i></span>'
				+'&nbsp;&nbsp;&nbsp;<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;'+date+'</small>'
				+'</h5>'
				+'<span class="rated-products-ratings">';
				for(var i=0;i<star;i++){
					cont+='<i class="fa fa-star text-warning">&nbsp;</i>';
		  		}
				for(var i=0;i<(5-star);i++){
					cont+='<i class="fa fa-star-o text-warning mt-0 mb-1 font-weight-semibold">&nbsp;</i>';
		  		}
				cont+= 
				star+'<div class="col-md-6 text-center align-items-center"></div></div>'
				+'<div class="font-13  mb-2 mt-2" style="margin-left:80px;"></div></div>'
				+'<div class="col-md-6 text-center align-items-center"></div></div>'
				+'<div class="font-13  mb-2 mt-2" style="margin-left:80px;">'+fr_cont+'</div></div>'
				+'<div class="card-body item-user" align="right">'
				+'<div class="icons"> '
				+'<form method="get" action="review_del" name="DeleteReview" style="padding-right:58px;">'
				+'<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteModal">삭제</button></form>'
				+'<form method="post" action="review_update" name="review_update" style="margin-top:-38px;">'
				+'<button type="button" class="btn btn-primary" id="updateReview" onclick="update();">수정</button></form>'
				+'</div></div></div>'
			//페이징버튼//
				+'<div class="center-block text-center paginationDiv" id="tab-11">'
				+'<ul class="pagination mb-0">'
				+'<div class="card-body" style="margin:0 auto; align:center;" id="review_paging">'
				+'<ul class="pagination mg-b-0 page-0 ">'
				+'<li class="page-item active"><a class="page-link">1</a></li>'
				+'<li class="page-item">'
				+'<a aria-label="Next" class="page-link" id="goNextPage" onclick="reviewList();"><i class="fa fa-angle-right"></i></a>'
				+'</li><li class="page-item">'
				+'<a aria-label="Last" class="page-link"></a>'
				+'</li></ul></div> </ul>'//</div></div>'
		}
	
		
		$(".goNextPage").click(function(){
			nowPage = eval(pages.nowPage) + 1;	
			pageFlag = 1;
			reviewList();
		    pageFlag = 0;
	    });

	
	}
</script>
		<script src="../js/dateFormat.js"></script>
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
		<script>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->