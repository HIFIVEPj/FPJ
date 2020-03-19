
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">프로젝트</h1>
<<<<<<< HEAD
									<!--
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="page">문의하기</li>
									</ol>
									-->
=======
								</div>
								<div class="search-background mb-0">
									
>>>>>>> c1264c8ef15092d800dd48f8c135cf5272de93bb
								</div>
							</div>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</div>
		<!--/Sliders Section-->
		
		<!--/Sliders Section-->

		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Project</h4>
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
					<!--Left Side Content-->
					<div class="col-xl-3 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-body">
							<form id="search_form" onsubmit="return false;">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="검색" id="searchKeyword" onKeyDown="onkey();">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary" onclick="search()">
											검색
										</button>
									</div>
								</div>
								</form>
							</div>
						</div>
						<div class="card">
						<form id="no_submit">
						<!-- 구분 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">직종</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="1">
										<span class="custom-control-label">
											개발
											<span class="label label-secondary float-right">${countDevelop}</span>
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="2">
										<span class="custom-control-label">
											퍼블리싱
											<span class="label label-secondary float-right">${countPublishing}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="3">
										<span class="custom-control-label">
											디자인
											<span class="label label-secondary float-right">${countDesign}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="4">
										<span class="custom-control-label">
											기획
											<span class="label label-secondary float-right">${countPlan}</span>
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="type" value="5">
										<span class="custom-control-label">
											기타
											<span class="label label-secondary float-right">${countEtc}</span>
										</span>
									</label>
								</div>
							</div>
						<!-- /구분 카테고리 -->
						<!-- 등급 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">경력</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="1">
										<span class="custom-control-label">
											초급
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="2">
										<span class="custom-control-label">
											중급
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_fgrade" value="3">
										<span class="custom-control-label">
											고급
										</span>
									</label>
								</div>
							</div>
						<!-- /등급 카테고리 -->
						<!-- 근무형태 카테고리 -->
							<div class="card-header border-top">
								<h3 class="card-title">근무형태	
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
								
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="0">
										<span class="custom-control-label">
											비상주
										</span>
									</label>
									
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="1">
										<span class="custom-control-label">
											상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="2">
										<span class="custom-control-label">
											반상주
										</span>
									</label>
									<label class="custom-control custom-checkbox mb-2">
										<input type="checkbox" class="custom-control-input" name="pj_place" value="3">
										<span class="custom-control-label">
											상관없음
										</span>
									</label>
								</div>
							</div>
						<!-- /근무형태 카테고리 -->
						<!-- 지역 카테고리 -->
								<div class="card-header border-top">
								<h3 class="card-title">지역</h3>
							</div>
									<div class="card-body">
								<div class="filter-product-checkboxs">
									<div class="d-flex"> 
										<select name="all_area" id="pjt_place" class="form-control select-sm w-100">
										 <option value="">전체<!--전체--></option>
										</select>
									</div>
									<br/>
										<select name="subCategory" id="pjt_subplace" class="form-control select-sm w-100">
										 <option value="">전체<!--전체--></option>																																
										</select>	
								</div>
							</div>
						<!-- /지역 카테고리 -->
						</form>	
						</div>
					</div>
					<!--Left Side Content-->
					<div class="col-xl-9 col-lg-8 col-md-12">
						<!--Add lists-->
						<div class="card mb-0">
							<div class="card-body">
								<div class="item2-gl ">
									<div class="item2-gl-nav d-flex" style="width:100%;" align="right" >
									  <h6 class="mb-0 mt-2">Showing &nbsp;${pa.nowPage}&nbsp; to &nbsp;${pa.cntPerPage}&nbsp; of &nbsp;${pa.total}&nbsp; entries</h6> 	
										<ul class="nav item2-gl-menu ml-auto"></ul>
										<div class="d-flex"> 
								<!--  		<label class="mr-2 mt-1 mb-sm-1">Sort By:</label>  -->	
										<c:if test="${empty selectKeyword}">
											<select name="item" class="form-control select-sm"  style="width:160px;" id="selectbox_cate" onchange="sortSelectbox(this.value)">
												<option id ="pj_rdate" value="pj_rdate" selected>최신순</option>
												<option id ="pj_recnum" value="pj_recnum">모집인원순</option>
												<option id ="pj_pay" value="pj_pay">규모순</option>
												<option id ="pj_vcnt"  value="pj_vcnt">조회높은순</option>
											</select>
										</c:if>
										<c:if test="${!empty selectKeyword}">
											<select name="item" class="form-control select-sm"  style="width:160px;" id="selectbox_cate" onchange="sortSelectbox(this.value)">
												<option id ="pj_rdate" value="pj_rdate" selected>최신순</option>
												<option id ="pj_recnum" value="pj_recnum">모집인원순</option>
												<option id ="pj_pay" value="pj_pay">규모순</option>
												<option id ="pj_vcnt"  value="pj_vcnt">조회높은순</option>
											</select>
										</c:if>
										</div>
										
									</div>

									<!--  <div><a href="project_write" class="btn btn-primary" style="margin-top:-85px; margin-left:15px;">글쓰기</a></div>
									-->
									<div class="tab-content">
										<div class="tab-pane active" id="tab-11">
									
									<c:if test="${empty list}">
										등록된 프로젝트가 없습니다
									</c:if>
									<c:if test="${not empty list}">
									<c:forEach var="dto" items="${list}">	
											<div class="card overflow-hidden before_ajax_content" id="">
												<div class="d-md-flex">
													<div>
										<!--  			<div class="arrow-ribbon bg-primary">New</div>-->	
														<div class="item-card9-imgs">
															<a href="books.html"></a>
											<!--				<img src alt="img" class="cover-image h-100">-->	
														</div>
														
													</div>
													<input type="hidden" value="${free.free_code}" class="free_codes"/>
													<div class="card border-0 mb-0">
														<div class="card-body" style="padding:30px;">
														<c:if test="${empty free}">
															<div class="item-card9-icons zzim">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:onlyFree();">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==0}">
															<div class="item-card9-icons zzim">
																<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:profilePlease()">
																 <i class="fa fa fa-heart-o" style=""></i></a>
															</div>
														</c:if>
														<c:if test="${free.free_profileox==1}">
														<c:choose>
															<c:when test="${pjnumList.contains(dto.pj_num)}">
																<div class="item-card9-icons"  id="zzim${dto.pj_num}" >
																	<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;" onclick="javascript:del_wish(${dto.pj_num})">
																	 <i class="fa fa fa-heart" style="color:white"></i></a>
																</div>
															</c:when>
															<c:otherwise>
																<div class="item-card9-icons">
																	<a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish${dto.pj_num}"style="margin-right:40%" onclick="javascript:wish(${dto.pj_num})">
																	 <i class="fa fa fa-heart-o" style=""></i></a>
																</div>
															</c:otherwise>	
														</c:choose>
														<div class="item-card9-icons"  id="zzim${dto.pj_num}">
														
														</div>
														</c:if>

															<div class="item-card9">
															<i class="fa fa-map-marker"></i>
															<c:set var = "loc" value="${fn:split(dto.pj_loc,' ')}"/>
															<c:forEach var = "pj_loc" items="${loc}" varStatus = "g" >
															<c:if test="${g.count<3}" >
															 ${pj_loc}
															</c:if>
															</c:forEach>
															<span style="margin-left:10px; margin-right:10px">
																 <i class="fa fa-user" ></i>
																<c:if test="${dto.type_num==1}">
																개발
																</c:if>
																<c:if test="${dto.type_num==2}">
																퍼블리싱
																</c:if>
																<c:if test="${dto.type_num==3}">
																디자인
																</c:if>
																<c:if test="${dto.type_num==4}">
																기획
																</c:if>
																<c:if test="${dto.type_num==5}">
																기타
																</c:if>
																|<c:if test="${dto.pj_fgrade == 1}" >
																초급
																</c:if>
																<c:if test="${dto.pj_fgrade == 2}" >
																중급
																</c:if>
																<c:if test="${dto.pj_fgrade == 3}" >
																고급
																</c:if>
																</span>
																<c:forEach var="key" items="${keyname}">
																	<c:if test="${key.pj_num eq dto.pj_num}">
																		<c:choose>
																			<c:when test="${key.keyword eq '[]'}">
																				키워드 없음
																			</c:when>
																			<c:otherwise>
																				<c:choose>
																				<c:when test="${key.keyword.size()>2}">
																					<c:forEach var="i" begin="0" end="2">
																						<span class="tag tag-gray">${key.keyword.get(i).key_name}</span>
																					</c:forEach>
																				</c:when>
																				<c:otherwise>
																					<c:forEach var="i" begin="0" end="${key.keyword.size()-1}">
																						<span class="tag tag-gray">${key.keyword.get(i).key_name}</span>
																					</c:forEach>
																				</c:otherwise>
																				</c:choose>
																			</c:otherwise>
																		</c:choose>
																	</c:if>
																</c:forEach><br/><br/>
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h3 class="font-weight-bold">${dto.pj_sub}</h3></a>
																<div style="width:85%">
																<span id = "content" style="width:10px">
														          <c:choose>
														           <c:when test="${fn:length(dto.pj_cont) > 101}">
														            <c:out value='${fn:substring(dto.pj_cont.replaceAll("\\\<.*?\\\>",""),0, 100)}' escapeXml='false'/>....
														           </c:when>
														           <c:otherwise>
														            <c:out value='${dto.pj_cont.replaceAll("\\\<.*?\\\>","")}' escapeXml="false"/>
														           </c:otherwise> 
														          </c:choose>
																</span>
																</div><br/>
																<p class="mb-0 leading-tight mt-1">급여 :<fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</p>
															</div>
														</div>
														<div class="card-footer pt-4 pb-4">
															<div class="item-card9-footer d-flex">
																<div class="item-card9-cost" style="padding-left: 10px">
														<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1.5em;"><strong>
															<fmt:parseDate value="${dto.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
															
															<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
															<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
															
																<c:if test="${dto.pj_status==0 && endDate > currentDate}">
																	D -${endDate - currentDate}
																</c:if>
																<c:if test="${dto.pj_status==1 || endDate <= currentDate}">
																	마감
																</c:if>
															
															</strong></span>
														&nbsp;&nbsp;&nbsp;
														<span> (${dto.pj_ddate})</span>
																</div>
													
															</div>
														</div>
													</div>
													
												</div>
											</div>

											</c:forEach>
										</c:if>
										</div>
									</div>
								</div>
								<div class="paginationDiv">
									<div class="center-block text-center ">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link noMem_prev" href="project_list?nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link noMem_no_nowPage" href="project_list?nowPage=${p}&cntPerPage=${pa.cntPerPage}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link noMem_next" href="project_list?nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
								</div>
							</div>
						</div>
						<!--Add lists-->
					</div>
				</div>
			</div>
		</section>
		<!--Add Listing-->
		<script src="../js/dateFormat.js"></script>
			<script>
			
			function onlyFree(){
				alert("프리랜서 회원만 이용가능한 서비스 입니다.")
			}
			
			function profilePlease(){
				alert("프로필을 등록하셔야 이용할 수 있습니다.")
			}
			function wish(pj_num){	
				$.ajax({
					type:"get",  
					url:"<c:url value='project_wish'/>",
	    			data:"pj_num="+pj_num+"&free_code="+$(".free_codes").val(),
					success: function(data){
						$('#insertwish'+pj_num).remove();
						$('#zzim'+pj_num).append("<a href='javasript:void(0)' class='item-card9-icons' id='delwish"+pj_num+"' style='margin-right:40%; background-color:#e8564a' onclick='javascript:del_wish("+pj_num+")'><i class='fa fa fa-heart' style='color:white'></i></a>");
						alert("프로젝트가 찜목록에 추가되었습니다.")
					},
					error: function(data){
					alert("에러발생");
					}
				});
			}
			function del_wish(pj_num){
				$.ajax({
					type:"get",
					url:"<c:url value='project_wish_del'/>",
					data: "pj_num="+pj_num+"&free_code="+$(".free_codes").val(),
					success:function(data){
						$('#delwish'+pj_num).remove();
						$('#zzim'+pj_num).append("<a href='javasript:void(0)' class='item-card9-icons wishlist' id='insertwish"+pj_num+"' style='margin-right:40%' onclick='javascript:wish("+pj_num+")'><i class='fa fa fa-heart-o'></i></a>");
					}
				})
			}
			</script>
			<script>
			  var pjtPlace = ['서울', '부산', '대구', '인천', '광주', '대전', '울산', '세종', '경기', '강원', '충북', '충남', '전북', '전남', '경북', '경남', '제주', '기타'];
			    var pjtSubplace = [];
			    pjtSubplace['강원'] = ['강릉시', '고성군', '동해시', '삼척시', '속초시', '양구군', '양양군', '영월군', '원주시', '인제군', '정선군', '철원군', '춘천시', '태백시', '평창군', '홍천군', '화천군', '횡성군'];
			    pjtSubplace['경기'] = ['가평군', '고양시 덕양구', '고양시 일산동구', '고양시 일산서구', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시 분당구', '성남시 수정구', '성남시 중원구', '수원시 권선구', '수원시 영통구', '수원시 장안구', '수원시 팔달구', '시흥시', '안산시 단원구', '안산시 상록구', '안성시', '안양시 동안구', '안양시 만안구', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시 기흥구', '용인시 수지구', '용인시 처인구', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시'];
			    pjtSubplace['경남'] = ['거제시', '거창군', '고성군', '김해시', '남해군', '밀양시', '사천시', '산청군', '양산시', '의령군', '진주시', '창녕군', '창원시 마산합포구', '창원시 마산회원구', '창원시 성산구', '창원시 의창구', '창원시 진해구', '통영시', '하동군', '함안군', '함양군', '합천군'];
			    pjtSubplace['경북'] = ['경산시', '경주시', '고령군', '구미시', '군위군', '김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군', '영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군', '포항시 남구', '포항시 북구'];
			    pjtSubplace['광주'] = ['광산구', '남구', '동구', '북구', '서구'];
			    pjtSubplace['기타'] = ['미국', '일본', '중국', '캐나다', '영국', '인도', '베트남', '싱가폴', '우크라이나', '헝가리', '아랍에미리트', '사우디'];
			    pjtSubplace['대구'] = ['남구', '달서구', '달성군', '동구', '북구', '서구', '수성구', '중구'];
			    pjtSubplace['대전'] = ['대덕구', '동구', '서구', '유성구', '중구'];
			    pjtSubplace['부산'] = ['강서구', '금정구', '기장군', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구'];
			    pjtSubplace['서울'] = ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'];
			    pjtSubplace['울산'] = ['남구', '동구', '북구', '울주군', '중구'];
			    pjtSubplace['인천'] = ['강화군', '계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군', '중구'];
			    pjtSubplace['전남'] = ['강진군', '고흥군', '곡성군', '광양시', '구례군', '나주시', '담양군', '목포시', '무안군', '보성군', '순천시', '신안군', '여수시', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'];
			    pjtSubplace['전북'] = ['고창군', '군산시', '김제시', '남원시', '무주군', '부안군', '순창군', '완주군', '익산시', '임실군', '장수군', '전주시 덕진구', '전주시 완산구', '정읍시', '진안군'];
			    pjtSubplace['제주'] = ['서귀포시', '제주시'];
			    pjtSubplace['충남'] = ['계룡시', '공주시', '금산군', '논산시', '당진시', '보령시', '부여군', '서산시', '서천군', '아산시', '예산군', '천안시 동남구', '천안시 서북구', '청양군', '태안군', '홍성군'];
			    pjtSubplace['충북'] = ['괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '제천시', '증평군', '진천군', '청주시 상당구', '청주시 서원구', '청주시 청원구', '청주시 흥덕구', '충주시'];
			 
			  var loc_first="";
			  var loc_second="";
			  function onkey(){
				  if(event.keyCode == 13){
						 search();
					 }
			  }
			 
			 $("document").ready(function () {
				
				for ( var i = 0; i < pjtPlace.length; i++ ) {
		            $("#pjt_place").append($("<option/>", {value: pjtPlace[i], text: pjtPlace[i]}));
		        }
		        // "지역" 상위 <select> 선택에 따른 하위 <select> 내 <option> 항목 변경 처리 (2019.02.28 bestware@naver.com)
		        $("#pjt_place").on("change", function() {
		            $("#pjt_subplace option:gt(0)").remove();  // 맨위 "선택해주세요" <option>만 남기고 모두 제거
		            loc_second="";
		            if ( $("#pjt_place").val() != "" ) {  // "전체" 이외의 항목 선택 선택
		            	loc_first =$("#pjt_place").val();
		            	sortAjax();
		                var subplace = pjtSubplace[ $("#pjt_place").val() ];
		                for ( var j = 0; j < subplace.length; j++ )
		                    $("#pjt_subplace").append( $("<option/>", { value:subplace[j], text:subplace[j] }) );
		                	
			                $("#pjt_subplace").on("change", function(){
					        	loc_second = $("#pjt_subplace").val();
					        	sortAjax();
					        })
		            }else{
		            	loc_second="";
		            	loc_first =$("#pjt_place").val();
		            	sortAjax();
		            }
		        });
			 });
			
			var selectkey="";
			function sortSelectbox(value){
				selectkey= value;
				sortAjax();
			}
		
		var type = new Array();
		var pj_fgrade = new Array();
		var pj_place = new Array();
		var nowPage = 1;
		var searchKey="";
		$("form#no_submit input:checkbox[name='type']").on("click",function(){
			var typeTemp = new Array();
			var type_cnt = 0;
			 $('input:checkbox[name="type"]').each(function() {
					if(this.checked){
						typeTemp[type_cnt] = this.value;
						type_cnt++;
					}
			});
			 type=typeTemp;
			 sortAjax();
		});
		$("form#no_submit input:checkbox[name='pj_fgrade']").on("click",function(){
			var pj_fgradeTemp = new Array();
			var pj_fgrade_cnt = 0;
			 $('input:checkbox[name="pj_fgrade"]').each(function() {
					if(this.checked){
						pj_fgradeTemp[pj_fgrade_cnt] = this.value;
						pj_fgrade_cnt++;
					}
			});
			 pj_fgrade=pj_fgradeTemp;
			 sortAjax();
		});
		
		function search(){
			searchKey="";
			searchKey = $("#searchKeyword").val();
			sortAjax();
		}
		
		$("form#no_submit input:checkbox[name='pj_place']").on("click",function(){
			var pj_placeTemp = new Array();
			var pj_place_cnt = 0;
			 $('input:checkbox[name="pj_place"]').each(function() {
					if(this.checked){
						pj_placeTemp[pj_place_cnt] = this.value;
						pj_place_cnt++;
					}
			});
			 pj_place=pj_placeTemp;
			 sortAjax();
		});
		function sortAjax(){
			var flag= ${!empty sessionScope.email};
			var objParam={
					"typeList" : type,
					"nowPage" : nowPage,
					"selectKeyword" : selectkey,
					"pj_fgradeList": pj_fgrade,
					"pj_placeList":pj_place,
					"loc_first":loc_first,
					"loc_second":loc_second,
					"searchKey":searchKey
			};
			 $.ajax({
				 type:"get",
				 url:"<c:url value='project_list_ajax' />",
				 data:objParam,
				 dataType: "json",
				 success:function(data){
					 var keys = data.keyname;
					 var keyCnt = keys.length;
						 var lists=data.list;
						 var cnt = lists.length;
						 var pages=data.pa;
						 var pagesCnt = pages.length;
						 var frees = data.free;
						 $(".before_ajax_content").remove();
						 $(".pagination").remove();
						 if(cnt == 0){
							 $("#tab-11").append('<div class="card overflow-hidden before_ajax_content"><span>등록된 프로젝트가 없습니다</span></div>');
						 }else{
							 var pageSet="";
							 var paginationSet="";
							 for(i=0; i<cnt; i++){
								var loc= lists[i].pj_loc;
								var locArray = loc.split(' ');
								var pj_cont_change = lists[i].pj_cont.replace(/(<([^>]+)>)/gi, "");
								var pj_pay_comma = lists[i].pj_pay.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								var dateFormat = format(lists[i].pj_ddate,'yyyy-MM-dd');
								var now = new Date();
								var Dday = lists[i].pj_ddate - now.getTime();
								Dday = Math.floor(Dday / ((1000 * 60 * 60 * 24))+1);			
								
								pageSet+='<div class="card overflow-hidden before_ajax_content"><div class="d-md-flex">'+
								'<div><div class="item-card9-imgs"><a href="books.html"></a></div></div>'+
								'<div class="card border-0 mb-0"><div class="card-body" style="padding:30px; padding-bottom:10px;">'
								if(frees==null){
									pageSet+='<div class="item-card9-icons zzim">'
										+'<a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:onlyFree();">'
									 	+'<i class="fa fa fa-heart-o" style=""></i></a></div><div class="item-card9"><i class="fa fa-map-marker"></i>&nbsp;'
								}else{
									pageSet+='<input type="hidden" value="'+frees.free_code+'" class="free_codes"/>'
									if(frees.free_profileox==0){
										pageSet+='<div class="item-card9-icons zzim"><a href="javasript:void(0)" class="item-card9-icons wishlist"'+lists[i].pj_num+
										'style="margin-right:40%" onclick="javascript:profilePlease();">'+
										'<i class="fa fa fa-heart-o" style=""></i></a></div><div class="item-card9"><i class="fa fa-map-marker"></i>&nbsp;'
									}else{
										if(data.pjnumList.indexOf(lists[i].pj_num)!=-1){
											pageSet+='<div class="item-card9-icons" id="zzim'+lists[i].pj_num+'"><a href="javasript:void(0)" class="item-card9-icons delwish"'+
											'style="margin-right:40%; background-color:#e8564a;" onclick="javascript:del_wish('+lists[i].pj_num+');">'+
											'<i class="fa fa fa-heart" style="color:white"></i></a></div><div class="item-card9"><i class="fa fa-map-marker"></i>&nbsp;'
										}else{
											pageSet+='<div class="item-card9-icons"><a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish'
											+lists[i].pj_num+'"style="margin-right:40%" onclick="javascript:wish('+lists[i].pj_num+');">'
											 +'<i class="fa fa fa-heart-o" style=""></i></a></div><div class="item-card9"><i class="fa fa-map-marker"></i>&nbsp;'
										}
										pageSet+='<div class="item-card9-icons"  id="zzim'+lists[i].pj_num+'"></div>'
									}
								}
								
								pageSet+=locArray[0]+' '+locArray[1]+'<span style="margin-left:10px; margin-right:10px"><i class="fa fa-user" ></i>'
								if(lists[i].type_num == 1){pageSet+=' 개발&nbsp;|&nbsp;'}
								else if(lists[i].type_num == 2){pageSet+=' 퍼블리셔&nbsp;|&nbsp;'}
								else if(lists[i].type_num == 3){pageSet+=' 디자인&nbsp;|&nbsp;'}
								else if(lists[i].type_num == 4){pageSet+=' 기획&nbsp;|&nbsp;'}
								else if(lists[i].type_num == 5){pageSet+=' 기타&nbsp;|&nbsp;'}
								else{pageSet+='&nbsp;없음&nbsp;|&nbsp;'}
								if(lists[i].pj_fgrade == 1){pageSet+='초급&nbsp;&nbsp;'}
								else if(lists[i].pj_fgrade == 2){pageSet+='중급&nbsp;&nbsp;'}
								else if(lists[i].pj_fgrade == 3){pageSet+='고급&nbsp;&nbsp;'}
								else{pageSet+='&nbsp;'}+'</span>' 
								for(j=0; j<keyCnt; j++){
									if(keys[j].pj_num==lists[i].pj_num){
										if(keys[j].keyword == '[]'){
											pageSet+='키워드 없음'
												console.log("키워드없음");
										}else{
											if(keys[j].keyword.length>2){
												for( k=0; k<3; k++){
													pageSet+='&nbsp;<span class="tag tag-gray">'+keys[j].keyword[k].key_name+'</span>'
												}
											}else{
												for( k=0; k<keys[j].keyword.length; k++){
													pageSet+='&nbsp;<span class="tag tag-gray">'+keys[j].keyword[k].key_name+'</span>'
												}
											}
										}
									}
								}
								pageSet+='<br/><br/><a href="project_content?pj_num='+lists[i].pj_num+'" class="text-dark"><h3 class="font-weight-bold">'+lists[i].pj_sub+'</h3></a>'
										+'<div style="width:85%"><span id = "content" style="width:10px">'
										if(lists[i].pj_cont.length> 100){
											pageSet+=pj_cont_change.substr(0,100)+'....'
										}else{
											pageSet+=pj_cont_change
										}
										pageSet+='</span></div><br/><p class="mb-0 leading-tight mt-1">급여 :'+pj_pay_comma+'원</p></div></div>'
										+'<div class="card-footer pt-4 pb-4"><div class="item-card9-footer d-flex"><div class="item-card9-cost" style="padding-left: 10px">'
										+'<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1.5em;"><strong>'
										if(Dday>0 && lists[i].pj_status==0){
											pageSet+= 'D -'+Dday+'</strong></span>&nbsp;&nbsp;&nbsp;'
										}else{
											pageSet+='마감</strong></span>&nbsp;&nbsp;&nbsp;'
										}
										pageSet+='<span>('+dateFormat+')</span></div></div></div></div></div></div></div></div>';
							 }
							 
							 paginationSet+='<ul class="pagination mb-0">'
						 			if(pages.nowPage != 1){
						 				paginationSet+='<li class="page-item page-prev ">'+
						 					'<a class="page-link mem_prev goFirstPage" href="javascript:void(0)">prev</a>'
						 					+'</li>'
						 			}
							 	for(i=pages.startPage; i<=pages.endPage; i++){
							 		if(i==pages.nowPage){
							 			paginationSet+='<li class="page-item active"><a class="page-link">'+i+'</a></li>'
							 		}else{
							 			paginationSet+='<li class="page-item"><a class="page-link mem_no_nowPage goPage" href="javascript:void(0)" data-page="'+i+'">'+i+'</a></li>'
							 		}
							 	}
							 	if(pages.nowPage != pages.lastPage){
							 		paginationSet+='<li class="page-item page-next">'+
										'<a class="page-link mem_next goNextPage" href="javascript:void(0)">Next</a></li>'
							 	}
						 }
						 
						 
						 $("#tab-11").html(pageSet);
						 $(".paginationDiv").html(paginationSet);
							$(".goFirstPage").click(function(){
								nowPage =1;
								pageFlag =1;
								sortAjax();
								pageFlag=0;
								
							});
							$(".goPage").click(function(){
								nowPage=$(this).attr("data-page");
								pageFlag=1;
								sortAjax();
								pageFlag=0;
							});
							$(".goNextPage").click(function(){
								nowPage = eval(pages.nowPage) + 1;
								pageFlag = 1;
								sortAjax();
							    pageFlag = 0;
						    });

					 
				 },
				 error:function(data){
					 alert("에러발생");
				 }
			 });
		}	
		</script>
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->