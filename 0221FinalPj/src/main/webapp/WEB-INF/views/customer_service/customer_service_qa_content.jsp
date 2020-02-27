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
										<a href="#"><i class="fa fa-user text-muted mr-2"></i>${qa_content.mem_email}</a>&nbsp;&nbsp;&nbsp;
										<span><i class="fa fa-tags text-muted mr-2"></i>${qa_content.qa_cate}</span>&nbsp;&nbsp;&nbsp;
										<span style="color:#ff382b;">
											<i class="fa fa-comment-o text-muted mr-2"></i>6&nbsp;&nbsp;&nbsp;
										</span>
										<span><i class="fa fa-eye text-muted mr-2"></i>${qa_content.qa_vcnt}</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="col col-auto">											
										<span><i class="fa fa-calendar-o text-muted mr-2"></i><fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>												
									</div>
								</div>
								
							</div>
							<div class="card-header">
								<div class="item7-card-desc d-flex mb-2 mt-2">
									<a href="#"><i class="fa fa-paperclip text-muted mr-2"></i>abc.txt</a>	
								</div>
							</div>

							<div class="card-body text-justify">	
								<p>${qa_content.qa_cont}</p>
							</div>
							<div class="card-footer mx-auto" style="border-top: #fff;">	
								<a class="btn btn-app">
									<span class="badge badge-pill bg-blue">5</span>
									<i class="fa fa-thumbs-o-up"></i>
								</a>
								
								<!--
								<div class="icons">
									<a href="#" class="btn btn-primary icons"><i class="fa fa-thumbs-o-up"></i> 345</a>
								</div>
								
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#" class="btn btn-primary icons"><i class="fa fa-thumbs-o-up"></i> 345</a></li>
									</ul>
								</div>
								-->
							</div>
							<!--
							<div class="card-body product-filter-desc">
								<div class="product-tags clearfix">
									<ul class="list-unstyled mb-0">
										<li><a href="#">좋아요 버튼 이걸로 할까?</a></li>
									</ul>
								</div>
							</div>
							-->
							<!--
							<div class="card-body item-user">
								<div class="row">
									<div class="profile-pic mb-0">
										<img src="../images/faces/male/25.jpg" class="brround avatar-xxl" alt="user">
									</div>
									<div>
										<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-1 font-weight-semibold">&nbsp;한나영</h4></a>
										<span class="text-gray">&nbsp;개발자</span>
										<span class="text-gray">&nbsp;|</span>
										<span class="text-muted">&nbsp;경력 3년</span>
									</div>
								</div>
							</div>
							-->
							
							<div class="card-footer" style="padding: 0rem 0rem;">
							<div class="card" style="margin-bottom: 0rem; border:0;">
								<div class="media mt-0 p-5">											
		                        	<div class="d-flex mr-3">
		                            	<a href="#"><img src="../images/faces/female/test5.png" alt="64x64" class=" avatar avatar-xxl brround mx-auto"> </a>
		                            </div>
		                            <div class="media-body">
		                            	
		                            	<h5 class="mt-0 mb-1 font-weight-semibold">한나영
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
										<small class="text-muted"><i class="si si-briefcase"></i> 개발자  |<i class=" ml-1 fa fa-clock-o"></i>&nbsp;경력 3년</small>&nbsp;&nbsp;
										
										<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-drivers-license-o"></i>&nbsp;프로필</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#message"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8;"><i class=" ml-1 si si-envelope"></i>&nbsp;연락</span></a>	
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>									
										
										<!-- 즐겨찾기 설정 상태 -->
											<div class="item-card2-icons">
												<a href="#" class="item-card9-icons1 wishlist active" data-toggle="tooltip" data-placement="top" title="찜하기"> <i class="fa fa fa-heart-o"></i></a>
											</div>
											
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
								<div class="media mt-0 p-5">
                                    <div class="d-flex mr-3">
                                        <a href="#"><img src="../images/faces/female/test7.png" alt="64x64" class="media-object brround"> </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-1 font-weight-semibold">김소담
											<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
											<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
										</h5>
										<!--
										<small class="text-muted"><i class="fa fa-calendar"></i> Dec 21st&nbsp;&nbsp;&nbsp;<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a></small>
                                        -->
                                        <p class="font-13  mb-2 mt-2">
                                           	별로네요.
                                        </p>
                                        <a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
                                        <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
										<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>
										<!--
										<input type="button" class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;" data-toggle="modal" data-target="#smallModal1" value='삭제'>
										-->
										<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
										<!-- 댓글 -->
                                        <div class="media mt-5 border-top">
                                            <div class="d-flex mr-3" style="margin-top: 1.5rem !important;">
                                                <a href="#"> <img src="../images/faces/female/test5.png" alt="64x64" class="media-object brround"> </a>
                                            </div>
											<div class="media-body" style="margin-top: 1.5rem !important;">
												<h5 class="mt-0 mb-1 font-weight-semibold">한나영
													<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
													<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
												</h5>												
												<p class="font-13  mb-2 mt-2">
												   뭐요?
												</p>
												<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
		                                        <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>												
												<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
												<!-- 댓글 -->
												<div class="media mt-5 border-top">
		                                            <div class="d-flex mr-3" style="margin-top: 1.5rem !important;">
		                                                <a href="#"> <img src="../images/faces/female/test5.png" alt="64x64" class="media-object brround"> </a>
		                                            </div>
													<div class="media-body" style="margin-top: 1.5rem !important;">
														<h5 class="mt-0 mb-1 font-weight-semibold">한나영
															<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
															<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
														</h5>												
														<p class="font-13  mb-2 mt-2">
														   <i class="fa fa-expeditedssl"></i>&nbsp;&nbsp;비밀 댓글
														</p>														
														<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
				                                        <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
														<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
														<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>												
														<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
													</div>
												</div>
												<!-- /댓글 -->
											</div>
										</div>
										<!-- /댓글 -->
										<!-- 댓글 -->
										<div class="media mt-5 border-top">
                                            <div class="d-flex mr-3" style="margin-top: 1.5rem !important;">
                                                <a href="#"> <img src="../images/faces/female/test5.png" alt="64x64" class="media-object brround"> </a>
                                            </div>
											<div class="media-body" style="margin-top: 1.5rem !important;">
												<h5 class="mt-0 mb-1 font-weight-semibold">한나영
													<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
													<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
												</h5>												
												<p class="font-13  mb-2 mt-2">
												   <i class="fa fa-lock" style="color:red;"></i>&nbsp;&nbsp;비밀 댓글
												</p>
												<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
				                                <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>												
												<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
											</div>
										</div>
										<!-- 댓글 -->
										<!-- 댓글 -->
										<div class="media mt-5 border-top">
                                            <div class="d-flex mr-3" style="margin-top: 1.5rem !important;">
                                                <a href="#"> <img src="../images/faces/female/test5.png" alt="64x64" class="media-object brround"> </a>
                                            </div>
											<div class="media-body" style="margin-top: 1.5rem !important;">
												<h5 class="mt-0 mb-1 font-weight-semibold">한나영
													<span class="fs-14 ml-0" data-toggle="tooltip" data-placement="top" title="verified"><i class="fa fa-check-circle-o text-success"></i></span>&nbsp;&nbsp;&nbsp;
													<small class="text-muted"><i class="fa fa-calendar"></i>&nbsp;<fmt:formatDate value="${qa_content.qa_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></small>
												</h5>												
												<p class="font-13  mb-2 mt-2">
												   <i class="fa fa-expeditedssl" style="color:red;"></i>&nbsp;&nbsp;비밀 댓글
												</p>												
												<a href="#" class="mr-2"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#7fa5b8">&nbsp;<i class="fa fa-thumbs-o-up"></i>&nbsp;21&nbsp;</span></a>	
				                                <a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem;"><i class=" ml-1 fa fa-comment-o"></i>&nbsp;댓글</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#Comment"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-pencil-square-o"></i>&nbsp;수정</span></a>
												<a href="" class="mr-2" data-toggle="modal" data-target="#smallModal1"><span class="badge badge-primary" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 fa fa-trash-o"></i>&nbsp;삭제</span></a>												
												<a href="" class="mr-2" data-toggle="modal" data-target="#report"><span class="badge badge-danger" style="font-size: 0.8rem; background-color:#ced1cc;"><i class=" ml-1 si si-ban"></i>&nbsp;신고</span></a>
											</div>
										</div>
										<!-- 댓글 -->
									</div>
								</div>
								<div class="media p-5 border-top border-bottom mt-0">
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
								</div>
							</div>
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
							
							<div class="card-footer">

								<div class="row">
									
									<div class="col">
										<input type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#Comment" value='댓글쓰기'>
										<a href="customer_service_qa_write#" class="btn btn-danger">답글쓰기</a>
									</div>
									
									<div class="col col-auto">

										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num+1}" class="btn btn-primary waves-effect waves-light"><i class="fa fa-arrow-circle-o-left"></i>&nbsp;이전</a>
										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num-1}" class="btn btn-primary waves-effect waves-light">다음&nbsp;<i class="fa fa-arrow-circle-o-right"></i></a>
										<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" value="삭제" onclick="delete(${notice_content.notice_num})">
										-->
										<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal1" value='삭제'>
										<input type="button" class="btn btn-primary waves-effect waves-light" value="수정" onclick="location.href='customer_service_qa_modify?qa_num=${qa_content.qa_num}#';">
		
										
										<input type="button" class="btn btn-primary waves-effect waves-light" value="목록" onclick="location.href='customer_service_qa';">				
										<a href="customer_service_qa_write#" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>

									</div>
								</div>

							</div>
						</div>
						<!--Comments-->
						
						<!-- 댓글 쓰기 창 이전 버전 -->
						<!--
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">댓글 쓰기 (이거 모달창 폼 쓸거면 필요 없겠는데? 거기서 수정/삭제)</h3>
							</div>
							<div class="card-body">
								<div>
									-->
									<!--
									<div class="form-group">
										<input type="text" class="form-control" id="name1" placeholder="Your Name">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" placeholder="Email Address">
									</div>
									-->
									<!--
									<div class="form-group">
										<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="댓글 입력"></textarea>
									</div>
									-->
									
									<!--
									<label class="custom-control custom-checkbox mb-0 text-left">
									-->
										<!--
										<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
										-->
										<!--
										<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
										<span class="custom-control-label">비밀글</span>
									</label>
									<div class="text-right">
										<a href="#" class="btn btn-primary">Send Reply</a>
									</div>
									-->
									<!--
									<div class="row">
										<div class="col">
											<label class="custom-control custom-checkbox mb-0">
												-->
												<!--
												<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
												-->
												<!--
												<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
												<span class="custom-control-label">비밀글</span>
											</label>
										</div>	
										<div class="col col-auto">
											<a href="#" class="btn btn-primary mb-0">&nbsp;댓글&nbsp;쓰기&nbsp;</a>
										</div>
									</div>
									-->
									<!--
									<div class="row">
										<div class="col">
											<a class="mb-0">Job ID : #8976542</a>
										</div>
										<div class="col col-auto">
											Posted By <a class="mb-0 font-weight-bold">Company</a> / 25th Dec 2018
										</div>
									</div>
									-->
									
									
									<!--
								</div>
							</div>
							<div class="card-footer">

								<div class="row">
									<div class="col">	
										<a href="customer_service_qa_write" class="btn btn-danger">답글쓰기</a>
									</div>
									
									<div class="col col-auto">

										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num+1}" class="btn btn-primary waves-effect waves-light">이전</a>
										<a href="customer_service_qa_content?qa_num=${qa_content.qa_num-1}" class="btn btn-primary waves-effect waves-light">다음</a>
										-->
										<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" value="삭제" onclick="delete(${notice_content.notice_num})">
										-->
										<!--
										<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal1" value='삭제'>
										<input type="button" class="btn btn-primary waves-effect waves-light" value="수정" onclick="location.href='customer_service_qa_modify?qa_num=${qa_content.qa_num}';">
		
										
										<input type="button" class="btn btn-primary waves-effect waves-light" value="목록" onclick="location.href='customer_service_qa';">				
										<a href="customer_service_qa_write#" class="btn btn-danger">　글쓰기　</a>

									</div>
								</div>

							</div>
						</div>
						-->
						<!-- /댓글 쓰기 창 이전 버전 -->
						
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
					
						<a href="customer_service_qa_delete?qa_num=${qa_content.qa_num}" class="btn btn-primary">네</a>
						
						<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
					</div>
				</div>
			</div>		
		</div>
		<!-- /small Modal -->

		<!-- Message Modal -->
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
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="commet-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="commet-email" placeholder="Email Address">
						</div>
						-->
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

		<!-- Report Modal -->
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
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="report-name" placeholder="Enter url">
						</div>
						-->
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
						<!--
						<div class="form-group">
							<input type="email" class="form-control" id="report-email" placeholder="Email Address">
						</div>
						-->
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

		
		<!--Comment Modal -->
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
						<!--
						<div class="form-group">
							<input type="text" class="form-control" id="Comment-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="Comment-email" placeholder="Email Address">
						</div>
						-->
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지 입력"></textarea>
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
							<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">확인</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
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
						<p>답변을 정말 삭제할까요?</p>
					</div>
					
					<div class="modal-footer">
					
						<a href="customer_service_qa_delete?qa_num=${qa_content.qa_num}" class="btn btn-primary">네</a>
						
						<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
					</div>
				</div>
			</div>		
		</div>
		<!-- /small Modal -->


<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->