<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<!--
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">공지사항</h1>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">고객센터</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">공지사항</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		-->
		<!--/Breadcrumb-->
		
		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:1rem;">공지사항</h1>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="community_faq">공지사항</li>
									</ol>
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
					<h4 class="page-title">공지사항</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">공지사항</li>
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
							<div class="card-body text-justify">	
								<div class="font-weight-semibold" style="font-size: 1.6rem;">${notice_content.notice_sub}</div>
							</div>
							<div class="card-header border-top" style="background-color:#f6f3ed;">

								<div class="item7-card-desc d-flex mb-2 mt-2">
									<a href="#"><i class="fa fa-user text-muted mr-2"></i>${notice_content.mem_email}</a>
									<span><i class="fa fa-tags text-muted mr-2"></i>${notice_content.notice_cate}</span>&nbsp;&nbsp;&nbsp;&nbsp;
									<!--
									<div class="ml-auto">
										<i class="fa fa-comment-o text-muted mr-2"></i>2 Comments</a>
									</div>
									-->
									<!--
									<span class="text-muted"><i class="fa fa-thumbs-o-up"></i>&nbsp; 36</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-->
									<span><i class="fa fa-eye text-muted mr-2"></i>${notice_content.notice_vcnt}</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span><i class="fa fa-calendar-o text-muted mr-2"></i><fmt:formatDate value="${notice_content.notice_rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>	
									
									<!--
									<div class="item-card2-icons">
										<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa-thumbs-o-up"></i></a>
									</div>
									
									&nbsp;<button type="button" class="btn btn-warning"><i class="fe fe-heart mr-1"></i>27</button>
									&nbsp;<button type="button" class="btn btn-warning"><i class="ion ion-heart mr-1"></i>27</button>
									-->
									<!-- 즐겨찾기 설정 상태 
									<div class="item-card2-icons">
										<a href="#" class="item-card9-icons1 wishlist active"> <i class="fa fa fa-heart-o"></i></a>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-->
									
									<!-- 즐겨찾기 해제 상태 
									<div class="item-card2-icons">
										<a href="#" class="item-card9-icons1 wishlist"> <i class="fa fa fa-heart-o"></i></a>
									</div>
									-->
									
											
								</div>
							</div>

							<div class="card-body text-justify">	
								<p>${notice_content.notice_cont}</p>
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
							
							<div class="card-footer text-right">
						
								
								<a href="customer_service_notice_content?notice_num=${notice_content.notice_num+1}" class="btn btn-primary waves-effect waves-light">이전</a>
								
								<a href="customer_service_notice_content?notice_num=${notice_content.notice_num-1}" class="btn btn-primary waves-effect waves-light">다음</a>
								<!--
								<input type="button" class="btn btn-primary waves-effect waves-light" value="삭제" onclick="delete(${notice_content.notice_num})">
								-->
								<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal1" value='삭제'>
								<input type="button" class="btn btn-primary waves-effect waves-light" value="수정" onclick="location.href='customer_service_notice_modify?notice_num=${notice_content.notice_num}';">

								
								<input type="button" class="btn btn-primary waves-effect waves-light" value="목록" onclick="location.href='customer_service_notice';">				
								<a href="customer_service_notice_write" class="btn btn-danger">　글쓰기　</a>
							</div>
						</div>
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
								<h3 class="card-title">공지사항 분류</h3>
							</div>
							<div class="card-body p-0">
								<div class="list-catergory">
									<div class="item-list">
										<ul class="list-group mb-0">
											<li class="list-group-item">
												<a href="#" class="">
													공지
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">14</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													채용
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">63</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													이벤트
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">25</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													기타
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a;">74</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
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
					
						<a href="customer_service_notice_delete?notice_num=${notice_content.notice_num}" class="btn btn-primary">네</a>
						
						<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
					</div>
				</div>
			</div>		
		</div>
		<!-- /small Modal -->

		<!-- Message Modal -->
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
							<input type="text" class="form-control" id="commet-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="commet-email" placeholder="Email Address">
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
							<select name="country" id="select-countries" class="form-control custom-select">
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
						<button type="button" class="btn btn-success">Submit</button>
					</div>
				</div>
			</div>
		</div>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->