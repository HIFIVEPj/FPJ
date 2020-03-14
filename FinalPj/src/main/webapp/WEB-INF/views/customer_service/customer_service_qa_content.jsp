<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">문의하기</h1>
									<!--
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="page">문의하기</li>
									</ol>
									-->
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
					<h4 class="page-title">문의하기</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
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
						<div class="card">
							<div class="row">
								<div class="card-body text-justify">	
									<div class="font-weight-semibold" style="font-size: 1.6rem;">${qa_content.qa_sub}</div>
								</div>
								
								<div class="item-card2-icons">
									<a href="#" class="item-card9-icons1 wishlist" data-toggle="tooltip" data-placement="top" title="신고하기"> <i class="ti ti-face-sad" data-toggle="modal" data-target="#report"></i></a>
									
								</div>
							</div>
							<div class="card-header border-top" style="background-color:#f6f3ed;">

								<div class="row">
									<div class="col">
										<a href="#"><i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_name}</a>&nbsp;&nbsp;&nbsp;
										<span><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}</span>&nbsp;&nbsp;&nbsp;
										<span style="color:#ff382b;">
											<i class="fa fa-comment-o text-muted mr-2"></i><c:out value="${qa_content.replyCnt}"/>&nbsp;&nbsp;&nbsp;
										</span>
										<span><i class="fa fa-eye text-muted mr-2"></i>${qa_content.qa_vcnt}</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="col col-auto">											
										<span><i class="fa fa-calendar-o text-muted mr-2"></i><fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>												
									</div>
								</div>
								
							</div>
							

							<div class="card-header">
								<!--
								<div class="item7-card-desc d-flex mb-2 mt-2">
									<a href="#"><i class="fa fa-paperclip text-muted mr-2"></i>abc.txt</a>	
								</div>
								-->								
								
								<div class='bigPictureWrapper'>
								  <div class='bigPicture'>
								  </div>
								</div>
								
								<style>
								.uploadResult {
									width: 100%;
									background-color: white; /* #e9ecf0; */
								}
								
								.uploadResult ul {
									display: flex;
									flex-flow: row;
									justify-content: center;
									align-items: center;
								}
								
								.uploadResult ul li {
									list-style: none;
									padding: 10px;
									align-content: center;
									text-align: center;
								}
								
								.uploadResult ul li img {
									width: 40px;
								}
								
								.uploadResult ul li span {
									color:white;
								}
								
								.bigPictureWrapper {
								  position: absolute;
								  display: none;
								  justify-content: center;
								  align-items: center;
								  top:0%;
								  width:100%;
								  height:100%;
								  background-color: gray; 
								  z-index: 100;
								  background:rgba(255,255,255,0.5);
								}
								
								.bigPicture {
								  position: relative;
								  display:flex;
								  justify-content: center;
								  align-items: center;
								}
								
								.bigPicture img {
									width:600px;
								}
								
								</style>							
								
								<div class="uploadResult">
									<ul>
									
									</ul>
								</div>

							</div>

							<div class="card-body text-justify">	
								<p>${qa_content.qa_cont}</p>
							</div>
							<!--
							<div class="card-footer mx-auto" style="border-top: #fff;">	
								<a class="btn btn-app">
									<span class="badge badge-pill bg-blue">5</span>
									<i class="fa fa-thumbs-o-up"></i>
								</a>
							</div>
							-->
							
							<!-- 좋아요 -->
							<!--
							<div class="card-footer mx-auto" style="border-top: #fff;">
							-->
							<div class="card-header mx-auto" style="border-top: #fff; border-bottom: 0px;">
							
							<input type="hidden" value="${sessionScope.email}" class="mem_email"/>
							<!--
							<input type="hidden" value="${qa_content.qa_recommnum}" class="qa_recommnum"/>
							-->
							<c:if test="${empty sessionScope.email}">
								<a class="btn btn-app" href="javasript:void(0)" onclick="javascript:needtoLogin()">
									<span class="badge badge-pill bg-blue">${qa_content.qa_recommnum}</span>
									<i class="fa fa-thumbs-o-up"></i>
								</a>
							</c:if>
							
							
							<c:if test="${!empty sessionScope.email}">
								<c:choose>
									<c:when test="${qa_content.mem_email eq sessionScope.email}">
										<a class="btn btn-app" href="javasript:void(0)" onclick="javascript:notMine()">
											<span class="badge badge-pill bg-blue">${qa_content.qa_recommnum}</span>
											<i class="fa fa-thumbs-o-up"></i>
										</a>
									</c:when>
								
									<c:when test="${qa_recommend_num_list.contains(qa_content.qa_num)}">
										<!--										
										<a class="btn btn-app" onclick="javascript:del_recomm(${qa_content.qa_num})" id="del_recomm${qa_content.qa_num}">
										-->
										<div id="recomm${qa_content.qa_num}">
											<a class="btn btn-app" href="javascript:void(0)" onclick="javascript:del_recomm(${qa_content.qa_num})" id="del_recomm${qa_content.qa_num}">
												<span class="badge badge-pill bg-blue">${qa_content.qa_recommnum}</span>
												<!--
												<i class="fa fa-thumbs-up"></i>
												-->
												<i class="fa fa-thumbs-up" style="color:#e8564a"></i>
											</a>
										</div>									
									</c:when>
									<c:otherwise>
										<!--
										<a class="btn btn-app" onclick="javascript:add_recomm(${qa_content.qa_num})" id="insert_recomm${qa_content.qa_num}">
										-->
										<div id="recomm${qa_content.qa_num}">
											<a class="btn btn-app" href="javascript:void(0)" onclick="javascript:add_recomm(${qa_content.qa_num})" id="insert_recomm${qa_content.qa_num}">
												<span class="badge badge-pill bg-blue">${qa_content.qa_recommnum}</span>
												<i class="fa fa-thumbs-o-up"></i>
											</a>
										</div>									
									</c:otherwise>	
								</c:choose>
								
								<div id="recomm${qa_content.qa_num}">
								
								</div>
					
							</c:if>
							
							
							<script>
							function closed(){
								alert("프로필이 비공개 상태 입니다.")
							}
							function needtoLogin(){
								alert("로그인 후 사용 가능한 서비스 입니다.")
							}
							function notMine(){
								alert("타인의 게시물만 추천 가능합니다.")
							}
							function add_recomm(qa_num){
								//alert("mem_email : " + mem_email)
								//alert("qa_num : " + qa_num)
								//alert("qa_recommnum add before: " + qa_recommnum)
								$.ajax({
									url:"qa_recommend_insert",
									type:"GET",
									//async: true,
									cache: false,
									dataType:"json",
								    //dataType: "json",
								    //contentType:"application/json;charset=UTF-8",
					    			//data:"qa_num="+qa_num+"&mem_email="+$(".mem_email").val()+"&qa_recommnum="+$(".qa_recommnum").val(),
					    			//data:"qa_num="+qa_num+"&qa_recommnum="+qa_recommnum+"&mem_email="+$(".mem_email").val(),
					    			data:"qa_num="+qa_num+"&mem_email="+$(".mem_email").val(),
									success: function(data){
										//console.log(data);
										//alert(data.qa_recommnum);
										$('#insert_recomm'+qa_num).remove();
										//add_recomm(qa_num, qa_recommnum);
										//$('#insert_recomm'+qa_num);
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:del_recomm("+qa_num+")' id='del_recomm"+qa_num+"'><span class='badge badge-pill bg-blue' id='recomm"+qa_num+"'>${qa_content.qa_recommnum}</span><i class='fa fa-thumbs-up'></i></a>");
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:del_recomm("+qa_num+")' id='del_recomm"+qa_num+"'><span class='badge badge-pill bg-blue' id='recomm"+qa_num+"'>"+qa_recommnum+"</span><i class='fa fa-thumbs-up'></i></a>");
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:del_recomm("+qa_num+")' id='del_recomm"+qa_num+"'><span class='badge badge-pill bg-blue' id='recomm"+qa_num+"'>${qa_content.qa_recommnum}</span><i class='fa fa-thumbs-up'></i></a>");
										$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:del_recomm("+qa_num+")' id='del_recomm"+qa_num+"'><span class='badge badge-pill bg-blue'>"+data.qa_recommnum+"</span><i class='fa fa-thumbs-up' style='color:#e8564a'></i></a>");
										//alert("qa_recommnum add after: " + qa_recommnum);
									},
									error: function(data){
										alert("실패1");
									}
								});
								//alert("qa_recommnum add last: " + qa_recommnum);
							}
							function del_recomm(qa_num){
								//alert("qa_recommnum del before: " + qa_recommnum)
								$.ajax({
									url:"qa_recommend_del",
									type:"GET",
									//async: true,
									cache: false,
									dataType:"json",
								    //dataType: "json",
								    //contentType:"application/json;charset=UTF-8",
									//data: "qa_num="+qa_num+"&qa_recommnum="+qa_recommnum+"&mem_email="+$(".mem_email").val(),
									data:"qa_num="+qa_num+"&mem_email="+$(".mem_email").val(),
									success:function(data){
										//console.log(data);
										//alert(data.qa_recommnum);
										$('#del_recomm'+qa_num).remove();
										//del_recomm(qa_num, qa_recommnum);
										//$('#del_recomm'+qa_num);
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:add_recomm("+qa_num+")' id='insert_recomm"+qa_num+"'><span class='badge badge-pill bg-blue'>${qa_content.qa_recommnum}</span><i class='fa fa-thumbs-o-up'></i></a>");
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:add_recomm("+qa_num+")' id='insert_recomm"+qa_num+"'><span class='badge badge-pill bg-blue' id='recomm"+qa_num+"'>"+qa_recommnum+"</span><i class='fa fa-thumbs-o-up'></i></a>");
										//$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:add_recomm("+qa_num+")' id='insert_recomm"+qa_num+"'><span class='badge badge-pill bg-blue' id='recomm"+qa_num+"'>${qa_content.qa_recommnum}</span><i class='fa fa-thumbs-o-up'></i></a>");
										$('#recomm'+qa_num).append("<a class='btn btn-app' href='javascript:void(0)' onclick='javascript:add_recomm("+qa_num+")' id='insert_recomm"+qa_num+"'><span class='badge badge-pill bg-blue'>"+data.qa_recommnum+"</span><i class='fa fa-thumbs-o-up'></i></a>");
										//alert("qa_recommnum del after: " + qa_recommnum);
									},
									error: function(data){
										alert("실패2");
									}
								});
								//alert("qa_recommnum del last: " + qa_recommnum);
							}
							</script>
					
							</div>
							<!-- /좋아요 -->
							
							<!--
							<div class="card-footer" style="padding: 0rem 0rem;">
							-->
							<div class="card-header border-top" style="padding: 0rem 0rem; border-bottom: 0px;">
							<div class="card" style="margin-bottom: 0rem; border:0;">
								<div class="media mt-0 p-5">											
		                        	<div class="d-flex mr-3">
		                        		<c:if test="${qa_content.class_num == 1}">
		                            		<a href='#'><img src='../images/hifive.png' alt='X' class='media-object brround'> </a>                           		
		                            	</c:if>	
		                        		<c:if test="${qa_content.class_num == 2 or qa_content.class_num == 3}">
		                        			<c:choose>
			                            		<c:when test="${qa_content.free_fname ne null}">
													<a href="#"><img src="../hifiveImages/free_thumb/${qa_content.free_fname}" alt="X" class="media-object brround"> </a>
												</c:when>
												<c:otherwise>
													<a class='icons'><i class='fa fa-user-circle text-muted mr-1 fa-3x'></i></a>
												</c:otherwise>
											</c:choose>                           		
		                            	</c:if>
		                            	<c:if test="${qa_content.class_num == 4}">
		                            		<c:choose>
			                            		<c:when test="${qa_content.cor_fname ne null}">
													<a href="#"><img src="../hifiveImages/cor_thumb/${qa_content.cor_fname}" alt="X" class="media-object brround"> </a>
												</c:when>
												<c:otherwise>
													<a class='icons'><i class='fa fa-user-circle text-muted mr-1 fa-3x'></i></a>
												</c:otherwise>
											</c:choose>	                            		
		                            	</c:if>
		                            </div>
		                            <div class="media-body">
		                            	
		                            	<h5 class="mt-0 mb-1 font-weight-semibold">${qa_content.mem_name}
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>
										</h5>
										
										<!--
										<div class="mail-option" style="display:block !important;">
											<div class="chk-all">
												<div class="btn-group">
													<a data-toggle="dropdown" href="#" class="btn mini all" aria-expanded="false">
														한나영
														<i class="fa fa-angle-right "></i>
													</a>
													<ul class="dropdown-menu">
														<li><a href="#">프로필</a></li>
														<li><a href="#">연락하기</a></li>
														<li><a href="#">신고하기</a></li>
													</ul>
												</div>
											</div>
										</div>									
										-->
										
										<c:if test="${qa_content.class_num == 1}">
											<small class="text-muted"><i class="si si-briefcase"></i> 하이파이브</small>&nbsp;&nbsp;
										</c:if>
										
										<c:if test="${qa_content.class_num == 2 or qa_content.class_num == 3}">
											<c:choose>
												<c:when test="${qa_content.type_name ne null and qa_content.type_name ne null}">
													<small class="text-muted"><i class="si si-briefcase"></i> ${qa_content.type_name}  |<i class=" ml-1 fa fa-clock-o"></i>&nbsp;경력 ${qa_content.pro_exp}년</small>&nbsp;&nbsp;
												</c:when>
												<c:when test="${qa_content.type_name ne null and qa_content.type_name eq null}">
													<small class="text-muted"><i class="si si-briefcase"></i> ${qa_content.type_name}  </small>&nbsp;&nbsp;
												</c:when>
												<c:when test="${qa_content.type_name eq null and qa_content.type_name ne null}">
													<small class="text-muted"><i class=" ml-1 fa fa-clock-o"></i>&nbsp;경력 ${qa_content.pro_exp}년</small>&nbsp;&nbsp;
												</c:when>
												<c:otherwise>
													<small class="text-muted"></small>
												</c:otherwise>	
											</c:choose>
										</c:if>
										
										<c:if test="${qa_content.class_num == 4}">
											<c:choose>
												<c:when test="${qa_content.cor_name ne null and qa_content.cor_type ne null}">
													<small class="text-muted"><i class="si si-briefcase"></i> ${qa_content.cor_name}  |<i class=" ml-1 si si-settings"></i>&nbsp;${qa_content.cor_type}</small>&nbsp;&nbsp;
												</c:when>
												<c:when test="${qa_content.cor_name ne null and qa_content.cor_type eq null}">
													<small class="text-muted"><i class="si si-briefcase"></i> ${qa_content.cor_name}  </small>&nbsp;&nbsp;
												</c:when>
												<c:when test="${qa_content.cor_name eq null and qa_content.cor_type ne null}">
													<small class="text-muted"><i class=" ml-1 si-settings"></i>&nbsp;${qa_content.cor_type}</small>&nbsp;&nbsp;
												</c:when>
												<c:otherwise>
													<small class="text-muted"></small>
												</c:otherwise>	
											</c:choose>
										</c:if>
										<c:if test="${qa_content.class_num == 3}">
											<c:choose>
												<c:when test="${qa_content.profile_choice == 1}">
													<a href="freelancercontent?free_code=${qa_content.free_code}&pro_num=${qa_content.pro_num}" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-drivers-license-o"></i>&nbsp;프로필</span></a>
												</c:when>
												<c:otherwise>
													<a class="mr-2" href="javasript:void(0)" onclick="javascript:closed()"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-drivers-license-o"></i>&nbsp;프로필</span></a>													
												</c:otherwise>
											</c:choose>		
										</c:if>
										<a href="" class="mr-2" data-toggle="modal" data-target="#message"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8;"><i class=" ml-1 si si-envelope"></i>&nbsp;연락</span></a>	
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>									
										
											<!-- 즐겨찾기 설정 상태 -->
											<!--
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active" data-toggle="tooltip" data-placement="top" title="찜하기"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
											<!-- 즐겨찾기 해제 상태 
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											-->
									</div>	
								</div>
							</div>
							</div>
							
							<!--
							<div class="card-footer">
								<div class="row">
									<div class="col">
										<a href="#" class="btn btn-primary waves-effect waves-light">글 신고하기</a>
									</div>
									<div class="col col-auto">
										<a href="customer_service_notice_content?notice_num=${notice_content.notice_num+1}" class="btn btn-primary waves-effect waves-light">이전</a>
										<a href="customer_service_notice_content?notice_num=${notice_content.notice_num-1}" class="btn btn-primary waves-effect waves-light">다음</a>
										-->
										<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" value="삭제" onclick="delete(${notice_content.notice_num})">
										-->
										<!--
										<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal1" value='삭제'>
										<input type="button" class="btn btn-primary waves-effect waves-light" value="수정" onclick="location.href='customer_service_notice_modify?notice_num=${notice_content.notice_num}';">
		
										
										<input type="button" class="btn btn-primary waves-effect waves-light" value="목록" onclick="location.href='customer_service_notice';">				
										<a href="customer_service_notice_write" class="btn btn-danger">　글쓰기　</a>
									</div>
								</div>
							</div>
							-->
							<!--	
							<div class="card-footer text-right">
								<a href="#" class="btn btn-primary waves-effect waves-light">글 신고하기</a>
							</div>
							-->			
						</div>
						
						<!--Comments-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">댓글</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<!--
								<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-clock-o"></i>&nbsp;최신순</span></a>
								<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8"><i class="fa fa-thumbs-o-up"></i>&nbsp;추천순</span></a>	
								-->							
								<label class="mr-2 mt-1 mb-sm-1">정렬 :</label>
								<select name="item" class="form-control select-sm w-15">
									<option value="1">오래된순</option>
									<option value="2">추천순</option>
									<option value="3">최신순</option>
								</select>		
							</div>			
							<div class="card-body p-0">
								<ul class="chat">
									
									<!--
									<li class="media p-5 border-bottom mt-0" data-qacomm_num='1'>
										<div class="d-flex mr-3">
											<a href="#"> <img src="../images/faces/female/test5.png" alt="64x64" class="media-object brround"> </a>
										</div>
										<div class="media-body">
											<h5 class="mt-0 mb-1 font-weight-semibold">한나영
												<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
												<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
											</h5>												
											<p class="font-13  mb-2 mt-2">
	                                           	가나다라마바사아자차카타파하. 가나다라마바사아자차카타파하가나다라마바사아자차카타파하. 가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하.
	                                        </p>
											<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
			                                <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
											<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
											<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>												
											<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
										</div>
									</li>
									-->
									
								</ul>				
							</div>
							
							<!--
							<div class="card-footer mx-auto" style="border-top: 0px;">

								<ul class="pagination mg-b-0 page-0">
									<li class="page-item disabled">
										<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
									</li>
									<li class="page-item disabled">
										<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
									</li>

									<li class="page-item active">
										<a class="page-link" href="#">1</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="#">2</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="#">3</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="#">4</a>
									</li>
									<li class="page-item">
										<a class="page-link hidden-xs-down" href="#">5</a>
									</li>

									<li class="page-item">
										<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
									</li>
									<li class="page-item">
										<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
									</li>
								</ul>
							</div>
							-->
							
							<!--
							<div class="card-footer mx-auto" style="border-top: 0px;">
							-->
							<div class="card-footer mx-auto" style="border-top: 0px;">
							<!--
								<ul class="pagination mg-b-0 page-0">																							
									<c:if test="${pageMaker.prev}">
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="customer_service_qa?pageNum=${1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"><i class="fa fa-angle-double-left"></i></a>
										</li>
									</c:if>
									<c:if test="${pageMaker.prev}">
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="customer_service_qa?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"><i class="fa fa-angle-left"></i></a>
										</li>
									</c:if>

									<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
										<c:choose>
											<c:when test="${num == pageMaker.cri.pageNum}">
												<li class="page-item active" style="color:#fff">
													<div class="page-link">${num}</div>
												</li>
											</c:when>
											<c:when test="${num != pageMaker.cri.pageNum}">
												<li class="page-item">
													<a class="page-link" href="customer_service_qa?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${num}</a>
												</li>
											</c:when>
										</c:choose>
									</c:forEach>
																				
									<c:if test="${pageMaker.next}">
										<li class="page-item">
											<a aria-label="Next" class="page-link" href="customer_service_qa?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"><i class="fa fa-angle-right"></i></a>
										</li>
									</c:if>
									<c:if test="${pageMaker.next}">
										<li class="page-item">
											<a aria-label="Last" class="page-link" href="customer_service_qa?pageNum=${pageMaker.lastPage}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"><i class="fa fa-angle-double-right"></i></a>
										</li>
									</c:if>	
												
								</ul>
							-->									
							</div>
							
							<!--
							<div class="card-fotter">
							-->
							<div class="card-body border-top">

								<div class="row">
									
									<div class="col">
										<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#Comment" value='댓글쓰기'>
										-->
										<c:if test="${sessionScope.class_num > 0}">
											<!--
											<input id="addReplyBtn" type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#Comment" value='댓글쓰기'>											
											-->
											<button id="addReplyBtn" class="btn btn-primary waves-effect waves-light">댓글쓰기</button>
											<!--
											<input id="addReplyBtn" type="button" class="btn btn-primary" data-toggle="modal" data-target="#Comment" value='댓글쓰기'>
											<a href="" id="addReplyBtn" type="button" class="btn btn-primary" data-toggle="modal" data-target="#Comment">댓글쓰기</a>
											-->
											<a href="customer_service_qa_write#" class="btn btn-danger">답글쓰기</a>
										</c:if>	
									</div>
									
									<div class="col col-auto">

										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num+1}" class="btn btn-primary waves-effect waves-light"><i class="fa fa-arrow-circle-o-left"></i>&nbsp;이전</a>
										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num-1}" class="btn btn-primary waves-effect waves-light">다음&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a>
										<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" value="삭제" onclick="delete(${notice_content.notice_num})">
										-->
										<c:if test="${sessionScope.email == qa_content.mem_email}">
											<!--
											<input type="hidden" name="mem_email" value="${sessionScope.email}">
											-->
											
											<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal" value='삭제'>
											
											<!--
											<a id="deleteQa" href="javasript:void(0)" type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#deleteQa" onclick="javascript:deleteQa()">삭제</a>											
											<a href="javasript:void(0)" type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#deleteQa" onclick="javascript:deleteQa()">삭제</a>
											-->
											<input type="button" class="btn btn-primary waves-effect waves-light" value="수정" onclick="location.href='customer_service_qa_modify?qa_num=${qa_content.qa_num}&mem_email=${sessionScope.email}#';">
										</c:if>
										
										
										<input type="button" class="btn btn-primary waves-effect waves-light" value="목록" onclick="location.href='customer_service_qa';">
										
										<!--
										<a href="customer_service_qa?qa_num=${qa_list.qa_num}&pageNum=${pageMaker.cri.pageNum}&amount=5&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}" class="btn btn-primary waves-effect waves-light">이전</a>
										-->
										<c:if test="${sessionScope.class_num > 0}">
											<a href="customer_service_qa_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>
										</c:if>
										
									</div>
								</div>

							</div>
						</div>
						<!--Comments-->				
					</div>

					<!--Rightside Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
						<!--
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
						-->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">문의하기 분류</h3>
							</div>
							<div class="card-body p-0">
								<div class="list-catergory">
									<div class="item-list">
										<ul class="list-group mb-0">
											<li class="list-group-item">
												<a href="#" class="">
													전체
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">100</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프로젝트
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">20</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리마켓
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">20</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리랜서
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													가입/탈퇴
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													회원정보
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													결제/환불
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													할인
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													기타
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">10</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">검색하기</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="search-text" placeholder="검색할 단어 입력">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected>전체</option>
										<option value="2">프로젝트</option>
										<option value="3">프리마켓</option>
										<option value="4">프리랜서</option>
										<option value="5">가입/탈퇴</option>
										<option value="6">회원정보</option>
										<option value="7">결제/환불</option>
										<option value="8">할인</option>
										<option value="9">기타</option>
									</select>
								</div>
								<div class="">
									<a href="#" class="btn  btn-primary"><i class="fa fa-binoculars"></i>&nbsp;&nbsp;검색</a>
								</div>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">비슷한 문의</h3>
							</div>
							<div class="card-body pb-3">
								<ul class="vertical-scroll">
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">프로젝트 기간 변경1</h4></a>
											<small class="text-muted"><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}&nbsp;&nbsp;&nbsp;<i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</small>
											<div class="icons mt-3 pb-0 ">
												<!--
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												-->
												<a href="#" class="btn btn-primary btn-sm icons"> 자세히 보기</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">프로젝트 기간 변경2</h4></a>
											<small class="text-muted"><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}&nbsp;&nbsp;&nbsp;<i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</small>
											<div class="icons mt-3 pb-0 ">
												<!--
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												-->
												<a href="#" class="btn btn-primary btn-sm icons"> 자세히 보기</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">프로젝트 기간 변경3</h4></a>
											<small class="text-muted"><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}&nbsp;&nbsp;&nbsp;<i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</small>
											<div class="icons mt-3 pb-0 ">
												<!--
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												-->
												<a href="#" class="btn btn-primary btn-sm icons"> 자세히 보기</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">프로젝트 기간 변경4</h4></a>
											<small class="text-muted"><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}&nbsp;&nbsp;&nbsp;<i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</small>
											<div class="icons mt-3 pb-0 ">
												<!--
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												-->
												<a href="#" class="btn btn-primary btn-sm icons"> 자세히 보기</a>
											</div>
										</div>
									</li>
									<li class="item">
										<div class="item-det card-body">
											<a href="#" class="text-dark"><h4 class="mb-2">프로젝트 기간 변경5</h4></a>
											<small class="text-muted"><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}&nbsp;&nbsp;&nbsp;<i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</small>
											<div class="icons mt-3 pb-0 ">
												<!--
												<a href="#" class="btn btn-info btn-sm icons" data-toggle="modal" data-target="#apply"> Apply</a>
												-->
												<a href="#" class="btn btn-primary btn-sm icons"> 자세히 보기</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						
					</div>
					<!--/Rightside Content-->
				</div>
			</div>
		</section>
		<!--/Add listing-->
		

		<!-- Message Modal -->
		<!--
		<div class="modal fade" id="message" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleCommentLongTitle">연락하기</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					-->
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="commet-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="commet-email" placeholder="Email Address">
						</div>
						-->
						<!--
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지 입력"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
		</div>
		-->
		<!-- Report Modal -->
		<!--
		<div class="modal fade" id="report" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="examplereportLongTitle">신고하기</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					-->
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="report-name" placeholder="Enter url">
						</div>
						-->
						<!--
						<div class="form-group">
							<select name="country" id="select-countries" class="form-control custom-select">
								<option value="1" selected>분류</option>
								<option value="2">스팸</option>
								<option value="3">아이디 도용</option>
								<option value="4">사기</option>
								<option value="5">광고</option>
								<option value="6">피싱</option>
								<option value="7">스파이웨어</option>
							</select>
						</div>
						-->
						<!--
						<div class="form-group">
							<input type="email" class="form-control" id="report-email" placeholder="Email Address">
						</div>
						-->
						<!--
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지 입력"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
		</div>
		-->
		
		<!--Comment Modal -->
		<!--
		<div class="modal fade" id="Comment" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">댓글쓰기</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					-->
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="Comment-email" placeholder="Email Address">
						</div>
						-->
						<!--
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지 입력"></textarea>
						</div>
					</div>
					-->
					<!--
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">확인</button>
					</div>
					-->
					<!--
					<div class="modal-footer">
						<div class="col">
							<label class="custom-control custom-checkbox mb-0">
								<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
								<span class="custom-control-label">비밀글</span>
							</label>
						</div>	
						<div class="col col-auto">
							<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">확인</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		-->

		<!-- small Modal -->		
		<div id="smallModal" class="modal fade">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						
						<div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>글을 정말 삭제할까요?</p>
					</div>
					
					<div class="modal-footer">
					
						<a href="customer_service_qa_delete?qa_num=${qa_content.qa_num}" class="btn btn-primary">네</a>
						
						<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
					</div>
				</div>
			</div>		
		</div>	
		<!-- /small Modal -->
		
		<!--Comment Modal / ajax 적용 댓글 달기 테스트-->
		<div class="modal fade" id="Comment" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">댓글</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="Comment-email" placeholder="Email Address">
						</div>
						-->
						<div class="form-group mb-0">
							<!--
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지 입력"></textarea>
							-->
							<!--
							<textarea class="form-control" name="qacomm_cont" rows="6" placeholder="메세지 입력"></textarea>
							-->
							
							<textarea class="form-control" name="qacomm_cont" rows="6" value="qacomm_cont" placeholder="메세지 입력"></textarea>
							
							<!--
							<input class="form-control" name="qacomm_cont" value="qacomm_cont" placeholder="메세지 입력">
							-->
						</div>
						<div class="form-group">
							<input class="form-control" type="hidden" name="mem_email" value="mem_email">
						</div>
						<div class="form-group">
							<input class="form-control" type="hidden" name="qacomm_rdate" value="qacomm_rdate">
						</div>
					</div>
					<!--
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">확인</button>
					</div>
					-->
					<div class="modal-footer">
						<div class="col">
							<label class="custom-control custom-checkbox mb-0">
								<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
								<span class="custom-control-label">비밀글</span>
							</label>
						</div>	
						<div class="col col-auto">
							<button id='modalCloseBtn'type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
							<button id='modalRemoveBtn' type="button" class="btn btn-primary">삭제</button>
							<button id='modalModBtn' type="button" class="btn btn-primary">수정</button>
							<button id='modalRegisterBtn' type="button" class="btn btn-primary">등록</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		
		<!-- 댓글 js -->
		<script type="text/javascript" src="../js/reply.js"></script>
		<!-- /댓글 js -->

		<!-- 댓글  -->		
		<script>		
		$(document).ready(function () {
			  var qa_numValue = '<c:out value="${qa_content.qa_num}"/>';
			  var mem_emailValue = '<c:out value="${sessionScope.email}"/>';			  
			  var replyUL = $(".chat");
			  
			    showList(1);
			    
			function showList(page){
				    
			    replyService.getList({qa_num:qa_numValue, page:page || 1 }, function(replyCnt, list) {
			    	
			    	console.log("replyCnt: "+ replyCnt);
			        console.log("list: " + list);
			        console.log(list);
			        
					if(page == -1) {
						pageNum = Math.ceil(replyCnt/5.0);
						showList(pageNum);
						return;
					}
			    		
			    	var str="";
			     
			    	if(list == null || list.length == 0){			     	
			    		/*
			    		replyUL.html("");
			    		if(pageNum == 1){
			    			replyPageFooter.html("");
			    		}else{
			    			//showList(pageNum-1);
			    			showList(-1);
			    			//replyPageFooter.html(str);
			    		}
			    		return;
			    		*/			    		
			    		if(pageNum == 1){
			    			replyUL.html("");
			    			replyPageFooter.html("");
			    		}else{
			    			showList(-1);
			    		}
			    		return;
			     	}
				
			     //for (var i = 0, len = list.length || 0; i < len; i++) {
			     var len = list.length;
			     var commentList = list;
			     commentList.sort(function(a, b){
			    	 return a.qacomm_num - b.qacomm_num
			     })
			     for (var i = 0; i < len; i++) {	 
			       //alert("comment_start" + list[i].qacomm_num);
			       
			       str +="<li class='media p-5 border-bottom mt-0' data-qacomm_num='"+list[i].qacomm_num+"'>";
			       str +="	<div class='d-flex mr-3'>";
			       if(list[i].class_num == 1){
			       //str +="	<a class='icons'><i class='fa fa-user-circle text-muted mr-1 fa-3x'></i></a>";
			    	   str +="	<a href='#'><img src='../images/hifive.png' alt='X' class='media-object brround'> </a>";
			       }else if(list[i].class_num == 2 || list[i].class_num == 3){
			       		if(list[i].free_fname != null){
			       str +="			<a href='#'><img src='../hifiveImages/free_thumb/"+list[i].free_fname+"' alt='X' class='media-object brround'> </a>";
			       		}else{
			       str +="			<a class='icons'><i class='fa fa-user-circle text-muted mr-1 fa-3x'></i></a>";		
			       		}    	
			       }else if(list[i].class_num == 4){
			    	    if(list[i].cor_fname != null){
			       str +="			<a href='#'><img src='../hifiveImages/cor_thumb/"+list[i].cor_fname+"' alt='X' class='media-object brround'> </a>";
			    	    }else{
			       str +="			<a class='icons'><i class='fa fa-user-circle text-muted mr-1 fa-3x'></i></a>";    	
			    	    }
			       }else{
			    	  	needtoLogin();
			       }
			       str +="	</div>";
			       str +="	<div class='media-body'>";
			       str +="		<h5 class='mt-0 mb-1 font-weight-semibold'>"+list[i].mem_name;
			       str +="			<span class='fs-14 ml-0' data-toggle='tooltip' data-placement='top' title='verified'><i class='fa fa-check-circle-o text-success'></i></span>&nbsp;&nbsp;&nbsp;";
			       str +="			<small class='text-muted'><i class='fa fa-calendar'></i>&nbsp;"+replyService.displayTime(list[i].qacomm_rdate)+"</small>";
			       str +="		</h5>";
			       str +="		<p class='font-13  mb-2 mt-2'>"+list[i].qacomm_cont+"</p>";
			       str +="		<a href='#' class='mr-2'><span class='badge badge-primary' style='font-size: 0.8rem; background-color:#7fa5b8'>&nbsp;<i class='fa fa-thumbs-o-up'></i>&nbsp;21&nbsp;</span></a>";
			       str +="		<a href='' class='mr-2' data-toggle='modal' data-target='#Comment1'><span class='badge badge-primary' style='font-size: 0.8rem;'><i class=' ml-1 fa fa-comment-o'></i>&nbsp;댓글</span></a>";
				   str +="		<a href='' class='mr-2' data-toggle='modal' data-target='#Comment'><span class='badge badge-primary' style='font-size: 0.8rem; background-color:#ced1cc;'><i class=' ml-1 fa fa-pencil-square-o'></i>&nbsp;수정</span></a>";
				   str +="		<a href='' class='mr-2' data-toggle='modal' data-target='#smallModal1'><span class='badge badge-primary' style='font-size: 0.8rem; background-color:#ced1cc;'><i class=' ml-1 fa fa-trash-o'></i>&nbsp;삭제</span></a>";
				   str +="		<a href='' class='mr-2' data-toggle='modal' data-target='#report1'><span class='badge badge-danger' style='font-size: 0.8rem; background-color:#ced1cc;'><i class=' ml-1 si si-ban'></i>&nbsp;신고</span></a>";
				   str +="	</div>";
				   str +="</li>";
				   //alert("comment_end" + list[i].qacomm_num);
			     }
		     
			     replyUL.html(str);
				 
			     showReplyPage(replyCnt);
			     
			   });
			     
			 }						
			
			// 댓글 페이징
			var pageNum = 1;
		    var replyPageFooter = $(".card-footer");
		    
		    function showReplyPage(replyCnt){

		      var endNum = Math.ceil(pageNum / 5.0) * 5;  
		      var startNum = endNum - 4; 
		      var prev = startNum != 1;
		      var next = false;
		      
		      if(endNum * 5 >= replyCnt){
		        endNum = Math.ceil(replyCnt/5.0);
		      }
		      
		      if(endNum * 5 < replyCnt){
		        next = true;
		      }
		      
		      var str = "<ul class='pagination mg-b-0 page-0'>";
		      
		      if(prev){
		        str+= "<li class='page-item'><a aria-label='Next' class='page-link' href='"+(startNum - 1)+"'><i class='fa fa-angle-left'></i></a></li>";
		      }
		      
		      for(var i = startNum; i <= endNum; i++){
		        
		        var active = pageNum == i? "active":"";
		        
		        str+= "<li class='page-item "+active+"' style='color:#fff'><a class='page-link' href='"+i+"'>"+i+"</a></li>";
		      }
		      
		      if(next){
		        str+= "<li class='page-item'><a aria-label='Next' class='page-link' href='"+(endNum + 1)+"'><i class='fa fa-angle-right'></i></a></li>";
		      }
		      
		      str += "</ul></div>";
		      
		      console.log(str);
		      
		      replyPageFooter.html(str);
		    }
		    
		    replyPageFooter.on("click","li a", function(e){
		        e.preventDefault();
		        console.log("page click");
		        
		        var targetPageNum = $(this).attr("href");
		        
		        console.log("targetPageNum: " + targetPageNum);
		        
		        pageNum = targetPageNum;
		        
		        showList(pageNum);
		    });
		 	// 댓글 페이징
			
			
			// 댓글 모달 처리
			//var modal = $(".modal");
		 	var modal = $("#Comment");
		    var modalInputQacomm_cont = modal.find("textarea[name='qacomm_cont']"); //textarea를 이용해서 입력하려면 "input[name='qacomm_cont']" 대신에 "textarea[name='qacomm_cont']"라고 써야함
		    //var modalInputMem_email = modal.find("input[name='mem_email']");
		    var modalInputQacomm_rdate = modal.find("input[name='qacomm_rdate']");
		    
		    var modalModBtn = $("#modalModBtn");
		    var modalRemoveBtn = $("#modalRemoveBtn");
		    var modalRegisterBtn = $("#modalRegisterBtn");
		    
		    $("#modalCloseBtn").on("click", function(e){
		    	
		    	modal.modal('hide');
		    });
		    
		    $("#addReplyBtn").on("click", function(e){
		      
		      //modal.find("input").val("");
		      modal.find("textarea").val(""); // input을 textarea로 바꿔야 함. 그래야 댓글쓰기 버튼을 누를 때, 이전에 띄웠던 모달창의 댓글 내용이 불러와지지 않음
		      modalInputQacomm_rdate.closest("div").hide();
		      modal.find("button[id !='modalCloseBtn']").hide();
		      
		      modalRegisterBtn.show();
		      
		      //$(".modal").modal("show");
		      $("#Comment").modal("show");
		      
		    });
		    
		
		    modalRegisterBtn.on("click",function(e){
		      
		      var qacomm_cont = {
		            qacomm_cont:modalInputQacomm_cont.val(),
		            //mem_email:modalInputMem_email.val(), // 이메일을 입력하게 하지 말고 아래처럼 값을 넘기게 하자
		            mem_email:mem_emailValue,
		            qa_num:qa_numValue
		          };
		      replyService.add(qacomm_cont, function(result){
		        
		        alert(result);
		        
		        //modal.find("input").val("");
		        modal.find("textarea").val("");
		        modal.modal("hide");
		        
		        //showList(1); // 새로운 댓글 등록 후 댓글 목록 갱신
		        showList(-1);
		        
		      });
		      
		    });
		    
		    
		    // 특정 댓글 클릭 시 이벤트 처리 
		    //$(".chat").on("click", "li", function(e){
		    $(".chat").on("click", "li", function(e){
		      alert(mem_emailValue);
		    	
		      var qacomm_num = $(this).data("qacomm_num");
		      
		      replyService.get(qacomm_num, function(qacomm_cont){
		    	  modalInputQacomm_cont.val(qacomm_cont.qacomm_cont);
		    	  //modalInputMem_email.val(qacomm_cont.mem_email);
		    	  modalInputQacomm_rdate.val(replyService.displayTime(qacomm_cont.qacomm_rdate)).attr("readonly","readonly");
		          modal.data("qacomm_num", qacomm_cont.qacomm_num);
		          
		          modal.find("button[id !='modalCloseBtn']").hide();
		          modalModBtn.show();
		          modalRemoveBtn.show();
		          
		          //$(".modal").modal("show");
		          $("#Comment").modal("show");

		      });
		    
		    });
		    
		    
		    modalModBtn.on("click", function(e){
		        
		        var qacomm_cont = {qacomm_num:modal.data("qacomm_num"), qacomm_cont: modalInputQacomm_cont.val()};
		        
		        replyService.update(qacomm_cont, function(result){
		              
		          alert(result);
		          modal.modal("hide");
		          //showList(1);
		          showList(pageNum);
		          
		        });
		        
	      	});

	      	modalRemoveBtn.on("click", function (e){
	      	  
	    	  var qacomm_num = modal.data("qacomm_num");
	    	  
	    	  replyService.remove(qacomm_num, function(result){
	    	        
	    	      alert(result);
	    	      modal.modal("hide");
	    	      //showList(1);
	    	      showList(pageNum);
	    	      
	    	  });
	    	  
	    	});
		    
		});
		
		//for replyService add test
		/*
		replyService.add(
			{qacomm_cont:"JS Test", mem_email:"baramoss@cyworld.com", qa_num:qa_numValue}
			,
			function(result){
				alert("RESULT : " + result);
			}
		);
		*/
		
		//for reply list test
		/*
		replyService.getList({qa_num:qa_numValue, page:1}, function(list){
			for(var i = 0, len = list.length||0; i < len; i++){
				console.log(list[i]);
			}
		});
		*/
		
		//for reply delete test
		/*
		replyService.remove(14, function(count) {
			console.log(count);
			
			if (count == "success") {
				alert("removed");
			}
		}, function(err) {
			alert("error!!!");
		});
		*/
		
		//for reply update test
		/*
		replyService.update({
			qacomm_num : 11,
			qa_num : qa_numValue,
			qacomm_cont : "### reply update test"
		}, function(result){
			alert("update done");
		});
		*/
		
		//for reply get test //수정 작업 할 때 이렇게 먼저 창을 띄우기 (글 내용 등도 같이 불러오자)
		/*
		replyService.get(11, function(data) {
			console.log(data);
		});
		*/		
		</script>
		<!-- /댓글  -->

		<!-- 첨부파일 -->
		<script>
			$(document).ready(function(){
			  
			  (function(){
			  
			    var qa_num = '<c:out value="${qa_content.qa_num}"/>';
			    
			    $.getJSON("/getAttachList", {qa_num:qa_num}, function(arr){
			    
			      console.log(arr);
			      
			      var str = "";
			      
			      $(arr).each(function(i, attach){
			    	  
			    	  if(attach.fileType){
			              var fileCallPath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
			              
			              str += "<li data-path='"+attach.uploadPath+"'data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+attach.fileName+"</b></div></li>";
			          }else{
			              str += "<li data-path='"+attach.uploadPath+"'data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div><img src='../images/attach.png'>" + " " + "<b>"+attach.fileName+"</b></div></li>";
			          }
			    	  
			      });
			          
			          $(".uploadResult ul").html(str);
			      
      
			    }); //end getjson
			  })(); //end function
			  
			  		$(".uploadResult").on("click","li", function(e){
			      
				    console.log("view image");
				    
				    var liObj = $(this);
				    
				    var path = encodeURIComponent(liObj.data("path")+"/" + liObj.data("uuid")+"_" + liObj.data("filename"));
				    
				    if(liObj.data("type")){
				      showImage(path.replace(new RegExp(/\\/g),"/"));
				    }else {
				      //download 
				      self.location ="/download?fileName="+path
				    }
				    
				    
				  });
				  
				  function showImage(fileCallPath){
					    
				    //alert(fileCallPath);
				    
				    $(".bigPictureWrapper").css("display","flex").show();
				    
				    $(".bigPicture")
				    .html("<img src='/display?fileName="+fileCallPath+"'>")
				    .animate({width:'100%', height: '100%'}, 1000);
				    
				  }

				  $(".bigPictureWrapper").on("click", function(e){
				    $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
				    setTimeout(function(){
				      $('.bigPictureWrapper').hide();
				    }, 1000);
				  });

			});
		</script>
		<!-- /첨부파일 -->


<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
>>>>>>> ae82e0fe4b132d55bb86f97ae28424b889cadc8c
<!--/footer-->