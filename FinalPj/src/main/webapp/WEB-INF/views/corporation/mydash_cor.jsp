<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<c:choose>
<c:when test="${empty cor}">
      <script>
         function check(){
        	 if(input_cor.cor_mname.value==""){
 				alert("담당자 성명은 필수 입력 사항입니다.");
 				return;
 			}
        	if(input_cor.cor_reg.value==""){
  				alert("사업자 등록번호는 필수 입력 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_name.value==""){
  				alert("회사이름은 필수 입력 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_detailaddr.value==""){
  				alert("회사 주소는 필수 입력 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_addr.value==""){
  				alert("회사 주소는 필수 입력 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_tel.value==""){
  				alert("연락처는 필수 입력 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_type.value==""){
  				alert("직종 선택은 필수 사항입니다.");
  				return;
  			}
        	if(input_cor.cor_type.value==""){
  				alert("직종 선택은 필수 사항입니다.");
  				return;
  			}
            input_cor.submit();
         }
      </script>
      <!--Breadcrumb-->
      <section>
         <!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">나의 정보</h1>
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
		
      </section>
      <!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Corporation Profile</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="mydash_cor">마이페이지</a></li>
						<li class="breadcrumb-item active" aria-current="page">나의 정보</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

      <!--User Dashboard-->
      <section class="sptb">
         <div class="container">
            <div class="row">
               <div class="col-xl-3 col-lg-12 col-md-12">
                  <div class="card">
                     <div class="card-header">
                        <h3 class="card-title">회원정보</h3>
                     </div>
                     <div class="card-body text-center item-user">
                        <div class="profile-pic">
                           <div class="profile-pic-img">
                              <img src="../images/faces/male/25.jpg" class="brround" alt="user">
                           </div>
                           <a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
                        </div>
                     </div>
                     <aside class="doc-sidebar my-dash">
                     <!--<aside class="app-sidebar doc-sidebar my-dash">-->
                        <div class="app-sidebar__user clearfix">
                           <ul class="side-menu">
                              <li class="slide">
                                 <a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
                                 <ul class="slide-menu">
                                    <li><a class="slide-item " href="mydash_cor?mem_email=${sessionScope.email}">기업</a></li>
                                 </ul>
                              </li>
                              <li>
                                 <a class="side-menu__item" href="logout.do"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
                              </li>
                           </ul>
                        </div>
                     </aside>
                  </div>
               </div>
               
               <div class="col-xl-9 col-lg-12 col-md-12">
                  <div class="card mb-0">
                     <div class="card-header">
                        <h3 class="card-title"><b>회원정보</b></h3>
                     </div>
                     
                     <form name="input_cor" method="post" action="mydash_cor_insert" enctype="multiPART/form-data">
                     <div class="card-body">
                        <div class="row">
                           <div class="col-sm-6 col-md-6">
                              <div class="form-group">
                                 <label class="form-label">담당자 성명</label>
                                 <input type="text" class="form-control" value="${sessionScope.name}"  name="cor_mname">
                              </div>
                           </div>
                           <div class="col-sm-6 col-md-6">
                              <div class="form-group">
                                 <label class="form-label">담당자 이메일</label>
                                 <input type="email" id="mem_email" class="form-control" value="${sessionScope.email}" name="mem_email" readonly>
                              </div>
                           </div>
                           
                           <div class="col-sm-6 col-md-4">
                              <div class="form-group">
                                 <label class="form-label">비밀번호</label>
                                 <input type="password" class="form-control" placeholder="비밀번호">
                              </div>
                           </div>
                           <div class="col-sm-6 col-md-4">
                              <div class="form-group">
                                 <label class="form-label">비밀번호 확인</label>
                                 <input type="password" class="form-control" placeholder="비밀번호 확인">
                              </div>
                           </div>
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="form-label">사업자등록번호</label>
									<input type="text" class="form-control authCorRegNum" placeholder="사업자등록번호" name="cor_reg" value="${cor.cor_reg}" data-target="#regModal" data-toggle="modal" readonly>
								</div>
							</div>
							<div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel"> <span class="float-right btn btn-icon btn-primary btn-sm mt-3"><i class="si si-share mr-1"></i></span></h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">×</span>
													</button>
												</div>
												<div class="modal-body " style="margin:0 auto;">
													 <p style="text-align:center;">사업자 등록번호를 입력하세요</p>
							                		<input type="text" class="form-control regnum" placeholder="-를 제외한 10자리 숫자" value="${cor.cor_reg}" style="float:left; width:200px;">
							                		<button type="button" class="btn btn-primary regauth"  onclick="reg_check()">인증</button>
												</div>
												<div class="modal-footer">
						               
												</div>
											</div>
										</div>
									</div>
                           <div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="form-label">회사명</label>
									<input type="text" class="form-control" placeholder="회사명" name="cor_name" value="${cor.cor_name}">
								</div>
							</div>
                           <!-- 주소 api부분 -->
                           <div class="col-sm-3 col-md-3">
                           <label class="form-label">주소</label>
                              <div class="form-group">
                                 <input type="text"  class="form-control" id="postcode" placeholder="우편번호" name="cor_postcode">
                              </div>
                           </div>
                           <div class="col-sm-4 col-md-4">
                              <div class="form-group"></div>
                                 <input type="button" class="btn btn-primary"  style="margin-top:10px" onclick="execDaumPostcode()" value="우편번호 찾기">   
                              </div>
                           <div class="col-sm-12 col-md-7">
                              <div class="form-group">
                                 <input type="text" class="form-control" id="address" placeholder="주소" name="cor_addr" readonly><br>
                              </div>
                           </div>
                           <div class="col-sm-12 col-md-5">
                              <div class="form-group">   
                                 <input type="text" class="form-control" id="detailAddress" placeholder="상세주소" name="cor_detailaddr">
                              </div>
                           </div>
                        <!-- 좌표 부분 1차 시작 , (좌표를 위한 추가)지도 쓸일 없으면 안해도 됨 -->
                           <input type="hidden" id="address_x"  class="form-control" placeholder="x좌표" name="cor_addr_x"> 
                           <input type="hidden" id="address_y"  class="form-control" placeholder="y좌표" name="cor_addr_y">
                        <!-- 좌표를 위한 카카오 key 추가,지도 쓸 일 없으면 지워도 됨 -->
                           <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e87f1e8bcbb6ac445c4b87fdbcf76e&libraries=services"></script>
                        <!-- 좌표부분 1차 끝 // -->
                           
                           <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                           <script>
                               function execDaumPostcode() {
                                  var geocoder = new daum.maps.services.Geocoder();
                                   new daum.Postcode({
                                       oncomplete: function(data) {
                                           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                           
                                           // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                           var addr = ''; // 주소 변수
                                           var extraAddr = ''; // 참고항목 변수
                           
                                           //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                           if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                               addr = data.roadAddress;
                                           } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                               addr = data.roadAddress;
                                           }
                           
                                           // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                           if(data.userSelectedType === 'R'){
                                               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                   extraAddr += data.bname;
                                               }
                                               // 건물명이 있고, 공동주택일 경우 추가한다.
                                               if(data.buildingName !== '' && data.apartment === 'Y'){
                                                   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                               }
                                               // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                               if(extraAddr !== ''){
                                                   extraAddr = ' (' + extraAddr + ')';
                                               }
                                               // 조합된 참고항목을 해당 필드에 넣는다.
                                               document.getElementById("address").value = extraAddr;
                                           
                                           } else {
                                               document.getElementById("address").value = '';
                                           }
                           
                                           // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                           document.getElementById('postcode').value = data.zonecode;
                                           document.getElementById("address").value = addr+extraAddr;
                                           
                                      //좌표찾기(지도 쓸일 없으면 생략가능)------------ 좌표 2차시작
                                           geocoder.addressSearch(data.address, function(results, status) {
                                        // 정상적으로 검색이 완료됐으면
                                            if (status === daum.maps.services.Status.OK) {
                        
                                                var result = results[0]; //첫번째 결과의 값을 활용
                        
                                            // 해당 주소에 대한 좌표를 받아서 입력
                                                document.getElementById("address_x").value=result.x;
                                                document.getElementById("address_y").value=result.y; 
                                            }
                                        });
                                      //여기까지 삭제-------------- 좌표 2차 끝
                                           // 커서를 상세주소 필드로 이동한다.
                                           document.getElementById("detailAddress").focus();
                                       }
                                   }).open();
                               }
                           </script>
                           <!-- 주소 api끝 -->
                           <div class="col-sm-6 col-md-6">
                              <div class="form-group">
                                 <label class="form-label">연락처</label>
                                 <input type="text" class="form-control" placeholder="연락처를 입력해주세요" name="cor_tel">
                              </div>
                           </div>
                           <div class="col-sm-6 col-md-3">
                              <div class="form-group">
                                 <label class="form-label">기업활동점수</label>
                                 <input type="text" class="form-control" value="0" readonly>
                              </div>
                           </div>
                           <div class="col-sm-6 col-md-3">
                              <div class="form-group">
                                 <label class="form-label">기업활동등급</label>
                                 &nbsp;<img src="../images/photos/bronze100.png" alt="브"  width="13%">&nbsp; <b>Bronze</b>
                              </div>
                           </div>
                           <div class = "col-sm-6 col-md-6">
                              <div class="form-group">
                              <label class="form-label">직종</label>
                                 <select class="form-control" name="cor_type" id="typeSelect">
                                    <option selected> 직종 분류 선택 </option>
                                    <option value="프로그램 개발">프로그램 개발</option>
                                    <option value="웹개발">웹 개발</option>
                                    <option value="솔루션 개발">솔루션개발</option>
                                 </select>
                              
                              </div>
                           </div>
                           <div class="col-md-12">
                              <div class="form-group">
                                 <label class="form-label">회사소개</label>
                                 <textarea rows="5" class="form-control" placeholder="회사를 소개해주세요" name="cor_profile"></textarea>
                              </div>
                           </div>                  
                           <div class="col-md-12">
                              <div class="form-group mb-0">
                                 <label class="form-label">기업이미지 등록</label>
                                 <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="fileName" id="file" onchange="upfile()" accept=".gif, .jpg, .png">
                                    <label class="custom-file-label" id="fileName_label"></label>
                                 </div>
                              </div>
                           </div>
                        
                        </div>
                     </div>
                     <div class="col-md-12">
                     <div class="card-footer" style="text-align:center;">
                        <input type="button" class="btn btn-primary" id="edit_ok" value="등록하기" onclick="check();">
                     </div>
                     </div>
                  </form>
                     
                     </div>
                  </div>
               </div>
            </div>
      </section>
      <!--/User Dashboard-->
   <script>
   function reg_check(){
		var regnum=$(".regnum").val();
		$.ajax({
			type:"GET",
			url:"<c:url value='getCorRegInfo' />",
			data:"cor_regnum="+regnum,
			dataType:"json",
			success:function(data){
				if(data == "normal"){ 
					alert("확인 되었습니다.");
					$(".authCorRegNum").attr("value",regnum);
				$(".regauth").attr("disabled","disabled");
				$("#regModal").modal("hide");
				}else {
					alert("잘못 입력하셨습니다. 사업자등록번호를(10자리 숫자) 확인해주세요");
					$(".regnum").attr("value","");
				}
			},
			error:function(data){
				alert(data);
			}
		});
	}
  
  function upfile(){
     var filename = document.getElementById("file").value;
     document.getElementById("fileName_label").innerHTML=filename;
 	 }   
   </script>
   </c:when>
   <c:otherwise>
         <script>
         function check(){
        	 if(input_cor.cor_mname.value==""){
  				alert("담당자 성명은 필수 입력 사항입니다.");
  				return;
  			}
         	if(input_cor.cor_reg.value==""){
   				alert("사업자 등록번호는 필수 입력 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_name.value==""){
   				alert("회사이름은 필수 입력 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_detailaddr.value==""){
   				alert("회사 주소는 필수 입력 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_addr.value==""){
   				alert("회사 주소는 필수 입력 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_tel.value==""){
   				alert("연락처는 필수 입력 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_type.value==""){
   				alert("직종 선택은 필수 사항입니다.");
   				return;
   			}
         	if(input_cor.cor_type.value==""){
   				alert("직종 선택은 필수 사항입니다.");
   				return;
   			}
            //$("#typeSelect").val();
            input_cor.submit();
         }
      </script>
        <!--Breadcrumb-->
      <section>
     <div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">나의 정보</h1>
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
		
      </section>
      <!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Corporation Profile</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="mydash_cor">마이페이지</a></li>
						<li class="breadcrumb-item active" aria-current="page">나의 정보</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
								<c:if test="${cor.cor_fname == null}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="media-object brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${cor.cor_fname != null}">
									<div class="profile-pic-img">
										
										<img src="../hifiveImages/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
										
										<!--
										<img src="/home/ubuntu/hifive/hifiveImages/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
										-->

									</div>
								</c:if>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
							<!--<aside class="app-sidebar doc-sidebar my-dash">-->
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item " href="mydash_cor">기업</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="myNotification_cor"><i class="side-menu__icon si si-bell"></i><span class="side-menu__label">새로 온 알림</span></a>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite_cor">프리랜서 찜</a></li>
												<li><a class="slide-item" href="cor-myfavoriteMarket">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">내 프로젝트관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="project_write">프로젝트 작성하기</a></li>
												<li><a class="slide-item" href="managed_project">프로젝트관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments_cor"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li>
											<a class="side-menu__item" href="logout.do"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
					</div>
					
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>회원정보</b></h3>
							</div>
							
							<form name="input_cor" method="post" action="mydash_cor_update" enctype="multiPART/form-data">
							<div class="card-body">
								<div class="row">
								
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">담당자 성명</label>
											<input type="text" class="form-control" value="${sessionScope.name}"  name="cor_mname">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">담당자 이메일</label>
											<input type="email" class="form-control" value="${sessionScope.email}" name="mem_email" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호</label>
											<input type="password" class="form-control" placeholder="비밀번호">
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호 확인</label>
											<input type="password" class="form-control" placeholder="비밀번호 확인">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">사업자등록번호</label>
											<input type="text" class="form-control authCorRegNum" placeholder="사업자등록번호" name="cor_reg" value="${cor.cor_reg}" data-target="#regModal" data-toggle="modal" readonly>
										</div>
									</div>
		                           <div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">회사명</label>
											<input type="text" class="form-control" placeholder="회사명" name="cor_name" value="${cor.cor_name}">
										</div>
									</div>
									<div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel"> <span class="float-right btn btn-icon btn-primary btn-sm mt-3"><i class="si si-share mr-1"></i></span></h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">×</span>
													</button>
												</div>
												<div class="modal-body " style="margin:0 auto;">
													 <p style="text-align:center;">사업자 등록번호를 입력하세요</p>
							                		<input type="text" class="form-control regnum" placeholder="-를 제외한 10자리 숫자" value="${cor.cor_reg}" style="float:left; width:200px;">
							                		<button type="button" class="btn btn-primary regauth"  onclick="reg_check()">인증</button>
												</div>
												<div class="modal-footer">
						               
												</div>
											</div>
										</div>
									</div>
									<!-- 주소 api부분 -->
									<div class="col-sm-3 col-md-3">
									<label class="form-label">주소</label>
										<div class="form-group">
											<input type="text"  class="form-control" id="postcode" placeholder="우편번호" name="cor_postcode" value="${cor.cor_postcode}">
										</div>
									</div>
									<div class="col-sm-4 col-md-4">
										<div class="form-group"></div>
											<input type="button" class="btn btn-primary"  style="margin-top:10px" onclick="execDaumPostcode()" value="우편번호 찾기">	
										</div>
									<div class="col-sm-12 col-md-7">
										<div class="form-group">
											<input type="text" class="form-control" id="address" placeholder="주소" name="cor_addr" value="${cor.cor_addr}"><br>
										</div>
									</div>
									<div class="col-sm-12 col-md-5">
										<div class="form-group">	
											<input type="text" class="form-control" id="detailAddress" placeholder="상세주소" name="cor_detailaddr" value="${cor.cor_detailaddr}">
										</div>
									</div>
								<!-- 좌표 부분 1차 시작 , (좌표를 위한 추가)지도 쓸일 없으면 안해도 됨 -->
									<input type="hidden" id="address_x"  class="form-control" placeholder="x좌표" name="cor_addr_x" value="${cor.cor_addr_x}"> 
									<input type="hidden" id="address_y"  class="form-control" placeholder="y좌표" name="cor_addr_y" value="${cor.cor_addr_y}">
								<!-- 좌표를 위한 카카오 key 추가,지도 쓸 일 없으면 지워도 됨 -->
									<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e87f1e8bcbb6ac445c4b87fdbcf76e&libraries=services"></script>
								<!-- 좌표부분 1차 끝 // -->
									
									<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
									    function execDaumPostcode() {
									    	var geocoder = new daum.maps.services.Geocoder();
									        new daum.Postcode({
									            oncomplete: function(data) {
									                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
									
									                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
									                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									                var addr = ''; // 주소 변수
									                var extraAddr = ''; // 참고항목 변수
									
									                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									                    addr = data.roadAddress;
									                } else { // 사용자가 지번 주소를 선택했을 경우(J)
									                    addr = data.roadAddress;
									                }
									
									                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
									                if(data.userSelectedType === 'R'){
									                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
									                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
									                        extraAddr += data.bname;
									                    }
									                    // 건물명이 있고, 공동주택일 경우 추가한다.
									                    if(data.buildingName !== '' && data.apartment === 'Y'){
									                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
									                    }
									                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									                    if(extraAddr !== ''){
									                        extraAddr = ' (' + extraAddr + ')';
									                    }
									                    // 조합된 참고항목을 해당 필드에 넣는다.
									                    document.getElementById("address").value = extraAddr;
									                
									                } else {
									                    document.getElementById("address").value = '';
									                }
									
									                // 우편번호와 주소 정보를 해당 필드에 넣는다.
									                document.getElementById('postcode').value = data.zonecode;
									                document.getElementById("address").value = addr+extraAddr;
									                
									           //좌표찾기(지도 쓸일 없으면 생략가능)------------ 좌표 2차시작
									                geocoder.addressSearch(data.address, function(results, status) {
								                // 정상적으로 검색이 완료됐으면
								                    if (status === daum.maps.services.Status.OK) {
								
								                        var result = results[0]; //첫번째 결과의 값을 활용
								
								                    // 해당 주소에 대한 좌표를 받아서 입력
								                        document.getElementById("address_x").value=result.x;
								                        document.getElementById("address_y").value=result.y; 
								                    }
								                });
									           //여기까지 삭제-------------- 좌표 2차 끝
									                // 커서를 상세주소 필드로 이동한다.
									                document.getElementById("detailAddress").focus();
									            }
									        }).open();
									    }
									</script>
									<!-- 주소 api끝 -->
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">연락처</label>
											<input type="text" class="form-control" placeholder="연락처를 입력해주세요" name="cor_tel" value="${cor.cor_tel}">
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label class="form-label">기업활동점수</label>
											<input type="text" class="form-control" value="${cor.cor_point}" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label class="form-label">기업활동등급</label>
											<c:if test="${cor.cor_level==0}">
												&nbsp;<img src="../images/photos/bronze100.png" alt="브"  width="13%">&nbsp; <b>Bronze</b>
											</c:if> 
											<c:if test="${cor.cor_level==1}">
												&nbsp; <img src="../images/photos/silver100.png" alt="실" width="13%"> &nbsp; <b>Silver</b>
											</c:if>
											<c:if test="${cor.cor_level==2}"> 
												&nbsp;<img src="../images/photos/gold100.png" alt="골"  width="13%">&nbsp; <b>Gold</b>
											</c:if> 	
										</div>
									</div>
									<div class = "col-sm-6 col-md-6">
										<div class="form-group">
										<label class="form-label">직종</label>
											<select class="form-control" name="cor_type" id="typeSelect">
											 <c:choose>
												<c:when test="${cor.cor_type=='프로그램 개발'}">
													<option> 직종 분류 선택 </option>
													<option value="프로그램 개발" selected>프로그램 개발</option>
													<option value="웹개발">웹 개발</option>
													<option value="솔루션 개발">솔루션개발</option>
												</c:when>
												<c:when test="${cor.cor_type=='웹개발'}">
													<option> 직종 분류 선택 </option>
													<option value="프로그램 개발" >프로그램 개발</option>
													<option value="웹개발" selected>웹 개발</option>
													<option value="솔루션 개발">솔루션개발</option>
												 </c:when>
												 <c:when test="${cor.cor_type=='솔루션 개발'}">
													<option> 직종 분류 선택 </option>
													<option value="프로그램 개발" >프로그램 개발</option>
													<option value="웹개발">웹 개발</option>
													<option value="솔루션 개발" selected>솔루션개발</option>
												 </c:when>
												  <c:otherwise>
													<option selected> 직종 분류 선택 </option>
													<option value="프로그램 개발" >프로그램 개발</option>
													<option value="웹개발">웹 개발</option>
													<option value="솔루션 개발" >솔루션개발</option>
												 </c:otherwise>
											  </c:choose>
											</select>
										
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">회사소개</label>
											<textarea rows="5" class="form-control" placeholder="회사를 소개해주세요" name="cor_profile">${cor.cor_profile}</textarea>
										</div>
									</div>						
									<div class="col-md-12">
										<div class="form-group mb-0">
											<label class="form-label">기업이미지 등록</label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" name="fileName" id="file" onchange="upfile()" accept=".gif, .jpg, .png" value="${cor.cor_fname}">
												<label class="custom-file-label" id="fileName_label">${cor.cor_ofname}</label>

                                 </div>
                              </div>
                           </div>
                        
                        </div>
                     </div>
                     <input type="hidden" class="form-control" value="${cor.cor_code}"  name="cor_code">
                     <div class="col-md-12">
                     <div class="card-footer" style="text-align:center;">
                        <input type="button" class="btn btn-primary" id="edit_ok" value="수정완료" onclick="check();">
                     </div>
                     </div>
                  </form>
                     
                     </div>
                  </div>
               </div>
            </div>
      </section>
      <!--/User Dashboard-->
   <script>
   function reg_check(){
		var regnum=$(".regnum").val();
		$.ajax({
			type:"GET",
			url:"<c:url value='getCorRegInfo' />",
			data:"cor_regnum="+regnum,
			dataType:"json",
			success:function(data){
				if(data == "normal"){ 
					alert("확인 되었습니다.");
					$(".authCorRegNum").attr("value",regnum);
				$(".regauth").attr("disabled","disabled");
				$("#regModal").modal("hide");
				}else {
					alert("잘못 입력하셨습니다. 사업자등록번호를(10자리 숫자) 확인해주세요");
					$(".regnum").attr("value","");
				}
			},
			error:function(data){
				alert(data);
			}
		});
	}
   
   function upfile(){
      var filename = document.getElementById("file").value;
      document.getElementById("fileName_label").innerHTML=filename;
   }   
   </script>
   </c:otherwise>
   </c:choose>
      <!--footer-->
      <%@ include file="/WEB-INF/views/include/footer.jsp"%>
      <!-- /footer  -->