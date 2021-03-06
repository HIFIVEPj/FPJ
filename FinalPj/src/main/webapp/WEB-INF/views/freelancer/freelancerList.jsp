<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
      <!--Sliders Section-->
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
                           <h1 class="" style="margin-bottom:0rem;">프리랜서</h1>
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
               <h4 class="page-title">Freelancer</h4>
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="../">Home</a></li>
                  <li class="breadcrumb-item"><a href="mydash_cor">프리랜서</a></li>
                  <li class="breadcrumb-item active" aria-current="page">프리랜서</li>
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
                     <form id="search_form" onsubmit="return false;">
                        <div class="input-group">
                           <input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search" id="searchKeyword" onKeyDown="onkey();">
                           <div class="input-group-append ">
                              <button type="button" class="btn btn-primary br-tr-7 br-br-7" onclick="search()">
                                 검색
                              </button>
                           </div>
                        </div>
                     </form>
                     </div> 
                  </div>
                  <form id="no_submit">
                  <div class="card">
                     <div class="card-header">
                        <h3 class="card-title">구분</h3>
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
                     <div class="card-header border-top">
                        <h3 class="card-title">경력</h3>
                     </div>
                     <div class="card-body">
                        <div class="filter-product-checkboxs">
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_grade" value="1">
                              <span class="custom-control-label">
                                 초급
                              </span>
                           </label>
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_grade" value="2">
                              <span class="custom-control-label">
                                 중급
                              </span>
                           </label>
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_grade" value="3">
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
                              <input type="checkbox" class="custom-control-input" name="pro_place" value="1">
                              <span class="custom-control-label">
                                 상주
                              </span>
                           </label>
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_place" value="2">
                              <span class="custom-control-label">
                                 반상주
                              </span>
                           </label>
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_place" value="0">
                              <span class="custom-control-label">
                                 자택
                              </span>
                           </label>
                           <label class="custom-control custom-checkbox mb-2">
                              <input type="checkbox" class="custom-control-input" name="pro_place" value="3">
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
                  </form>
               </div>
               <!--Left Side Content-->
               <div class="col-xl-9 col-lg-8 col-md-12">
                  <div class="card item2-gl ">
                     <div class="item2-gl-nav d-flex">
                        <h6 class="mb-0 mt-2">Showing &nbsp;${paging.nowPage}&nbsp; to 4 of &nbsp;${paging.total}&nbsp;entries</h6>
                        <ul class="nav item2-gl-menu ml-auto">
                        <!--    <li class=""><a href="#tab-11" class="active show" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
                           <li><a href="#tab-12" data-toggle="tab" class="" title="Grid"><i class="fa fa-th"></i></a></li>-->
                        </ul> 
                        <div class="d-flex">
                        <!-- <label class="mr-2 mt-1 mb-sm-1">Sort By:</label>  -->   
                           <select name="item" class="form-control select-sm w-90" id="selectbox_cate" onchange="sortSelectbox(this.value)">
                              <option value="profile_date">최신순</option>
                              <!-- <option value="2">평점높은순</option> -->
                              <option value="pro_vcnt">조회수높은순</option>                              
                           </select>
                        </div>
                     </div>
                  </div>
                  <!--Add lists-->
            <div class="listStart">
               <c:forEach var="list" items="${freelancerList}" varStatus="status">
               <div></div> <!-- div 추가 빼면 겹침.(c:forEach때문) -->
                  <div class="card overflow-hidden before_ajax_content">
                     <!-- <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div> -->
                     <div class="card-header pt-5 pb-5">
                        <div  class="d-flex">
                     <!--       <span class="avatar avatar-md  d-block brround cover-image mr-4" data-image-src="../images/faces/male/25.jpg"></span>  -->
            <div class="media mt-0 p-1">                  
               <div class="d-flex mr-3">
                  <c:if test="${list.member.get(0).class_num == 3}">
                     <c:choose>
                                <c:when test="${list.free_fname != null}">
                           <!--  
                           <img src="../hifiveImages/free_thumb/${list.free_fname}" alt="X" class="avatar-xxl brround mx-auto">
                           -->
                           <img src="/home/ubuntu/hifive/hifiveImages/free_thumb/${list.free_fname}" alt="X" class="avatar-xxl brround mx-auto">
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
                  <div class="card-body pb-2">
                           <ul class="usertab-list mb-0">
                              <h4>수행한 프로젝트</h4>            
                           <c:forEach items="${freelancerList3}" var="project" >
                              <c:forEach items="${project.list_freelancerprofile}" var="profile" >                        
                                 <c:if test="${list.free_code eq profile.free_code}">                     
                                    <c:forEach items="${project.list_project}" var="sub" >
                                    <i class="fa fa-caret-right mr-2"></i> <span class="font-weight-semibold">${sub.pj_sub}</span><br/>
                                    </c:forEach>
                                 </c:if>
                              </c:forEach>                     
                           </c:forEach>
                           <br/><br/><br/>                                            
                        </ul>                        
                     </div> 
                     <!-- 별점 -->
                     <div class="card-footer">
                        <div class="row">
                           <div class="product-filter-desc col">                              
                              <div class="rating-stars d-inline-flex mb-2 mr-3">

            
                         <c:forEach  var="star" items="${list_star}" varStatus="status">   
                                    <c:if test="${list.free_code eq star.free_code}">
                                       <input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value">
                                             <c:if test="${star.freerev_star >= 0}">
                                                          <c:forEach var="1" begin="1" end="${star.freerev_star}">
                                                            <i class="fa fa-star text-warning"> </i>
                                                          </c:forEach>
                                                          <c:forEach var="1" begin="1" end="${5-star.freerev_star}">
                                                  <i class="fa fa-star-o text-warning"> </i>
                                                </c:forEach>
                                                          <span class="rated-products-ratings">&nbsp; ${star.freerev_star}   &nbsp;&nbsp;&nbsp;   </span>
                                                     </c:if>
                                    </c:if>
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
                              <a class="icons" href="freelancercontent?free_code=${list.free_code}&pro_num=<c:forEach  var="num" items="${list.list_freelancerprofile}" varStatus="status">${num.pro_num}</c:forEach>">
                              <i class="fa fa-angle-double-right text-muted mr-1"></i>더보기</a>
                           </div>                  
                        </div>
                     </div>      
                  </div>      
                </c:forEach>   
            </div>
                  <!-- 페이징 -->
            <div class="paginationDiv">
               <div class="center-block text-center">
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
                  </ul>
               </div>
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
      <script src="../js/dateFormat.js"></script>
   <script>
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
            //alert("프리랜서 프로필이 찜목록에 추가되었습니다.")
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
      function onkey(){
           if(event.keyCode == 13){
                search();
             }
        }
      var selectkey="";
      function sortSelectbox(value){
         selectkey= value;
         sortAjax();
      }
   
   var type = new Array();
   var pro_grade = new Array();
   var pro_place = new Array();
   var nowPage = 1;
   var mem_email="";
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
   $("form#no_submit input:checkbox[name='pro_grade']").on("click",function(){
      var pro_gradeTemp = new Array();
      var pro_grade_cnt = 0;
       $('input:checkbox[name="pro_grade"]').each(function() {
            if(this.checked){
               pro_gradeTemp[pro_grade_cnt] = this.value;
               pro_grade_cnt++;
            }
      });
       pro_grade=pro_gradeTemp;
       sortAjax();
   });
   
   function search(){
      searchKey="";
      searchKey = $("#searchKeyword").val();
      sortAjax();
   }
   
   $("form#no_submit input:checkbox[name='pro_place']").on("click",function(){
      var pro_placeTemp = new Array();
      var pro_place_cnt = 0;
       $('input:checkbox[name="pro_place"]').each(function() {
            if(this.checked){
               pro_placeTemp[pro_place_cnt] = this.value;
               pro_place_cnt++;
            }
      });
       pro_place=pro_placeTemp;
       sortAjax();
   });
   function sortAjax(){
      var flag= ${!empty sessionScope.email};
      var objParam={
            "typeList" : type,
            "nowPage" : nowPage,
            "selectKeyword" : selectkey,
            "pro_gradeList": pro_grade,
            "pro_placeList":pro_place,
            "searchKey":searchKey
      };
       $.ajax({ 
          type:"get",
          url:"<c:url value='freelancer_list_ajax' />",
          data:objParam,
          dataType: "json",
          success:function(data){
             var lists=data.freelancerList;
             var cnt = lists.length;
             
             var typelists = data.freelancerList2;
             var typeCnt = typelists.length;
             var projectlists = data.freelancerList3;
             var projectCnt = projectlists.length;
             var cor = data.cor;
             var pages=data.paging;
             var pagesCnt = pages.length;
             
             $(".before_ajax_content").remove();
             $(".pagination").remove();
             if(cnt == 0){
                $(".listStart").append('<div class="card overflow-hidden before_ajax_content"><span>등록된 프리랜서가 없습니다</span></div>');
             }else{
                var pageSet="";
                var paginationSet="";
                
                for(i=0; i<cnt; i++){
                  var dateFormat = format(lists[i].profile_date,'yyyy-MM-dd');         
                  pageSet+='<div></div><div class="card overflow-hidden before_ajax_content"><div class="card-header pt-5 pb-5">'
                  +'<div class="d-flex"><div class="media mt-0 p-1"><div class="d-flex mr-3">'
                  if(lists[i].member[0].class_num==3){
                     if(lists[i].free_fname != null){
                        //pageSet+='<img src="../hifiveImages/free_thumb/'+lists[i].free_fname+'" alt="X" class="avatar-xxl brround mx-auto">'
                    	 pageSet+='<img src="/home/ubuntu/hifive/hifiveImages/free_thumb/'+lists[i].free_fname+'" alt="X" class="avatar-xxl brround mx-auto">'
                     }else{
                        pageSet+='<i class="fa fa-user-circle text-muted mr-1 fa-3x" ></i>'
                     }
               
                   }else{
                      pageSet+='<i class="fa fa-user-circle text-muted mr-1 fa-3x" ></i>'
                   }
                pageSet+='</div></div><div>'
                for(j=0; j<lists[i].list_review.length; j++){
                   pageSet+='<a href="freelancercontent?free_code='+lists[i].free_code
                         +'&pro_num='+lists[i].list_review[j].pro_num+'" class="font-weight-semibold fs-18 text-body">&nbsp;&nbsp;'+lists[i].free_name+'</a><br>'
                }
                for(j=0; j<lists[i].list_freelancerprofile.length; j++){
                   pageSet+='<small>&nbsp;&nbsp;&nbsp;경력 &nbsp;&nbsp;'+lists[i].list_freelancerprofile[j].pro_exp+'&nbsp;&nbsp;년</small>&nbsp;|'
                }
                for(j=0; j<typeCnt; j++){
                   for(k=0; k<typelists[j].list_type.length; k++){
                     if(lists[i].free_code == typelists[j].free_code){
                        pageSet+='<small>&nbsp;&nbsp;</small>'+typelists[j].list_type[k].type_name
                     } 
                   }
                }
                pageSet+='</div></div>'
                if(cor == null){
                   pageSet+='<div class="item-card9-icons zzim"><a href="javasript:void(0)" class="item-card9-icons wishlist" style="margin-right:40%" onclick="javascript:onlyCor();">'
                   +'<i class="fa fa fa-heart-o" style=""></i></a></div>'
                }else{
                   pageSet+='<input type="hidden" value="${cor.cor_code}" class="cor_codes"/>'
                   for(j=0; j<lists[i].list_freelancerprofile.length; j++){
                      if(data.pronumList.indexOf(lists[i].list_freelancerprofile[j].pro_num)!=-1){
                         pageSet+='<div class="item-card9-icons" id="zzim'+lists[i].list_freelancerprofile[j].pro_num+'" >'
                              +'<a href="javasript:void(0)" class="item-card9-icons delwish" style="margin-right:40%; background-color: #e8564a;"'
                              +'onclick="javascript:del_wish('+lists[i].list_freelancerprofile[j].pro_num+')">'
                               +'<i class="fa fa fa-heart" style="color:white"></i></a></div>'
                      }else{
                         pageSet+='<div class="item-card9-icons">'
                              +'<a href="javasript:void(0)" class="item-card9-icons wishlist" id="insertwish'+lists[i].list_freelancerprofile[j].pro_num+'"style="margin-right:40%"'
                              +'onclick="javascript:wish('+lists[i].list_freelancerprofile[j].pro_num+')">'
                            +'<i class="fa fa fa-heart-o" style=""></i></a></div>'
                      }
                      pageSet+='<div class="item-card9-icons" id="zzim'+lists[i].list_freelancerprofile[j].pro_num+'"></div>'
                   }
      
                }
                pageSet+='</div><div class="card-body pb-2 hide-details"><ul class="usertab-list mb-0"><h4>수행한 프로젝트</h4>'
                for(j=0; j<projectCnt; j++){
                   for(k=0; k<projectlists[j].list_freelancerprofile.length; k++){
                      if(lists[i].free_code == projectlists[j].list_freelancerprofile[k].free_code){
                         for(L=0; L<projectlists[j].list_project.length; L++){
                            pageSet+='<i class="fa fa-caret-right mr-2"></i> <span class="font-weight-semibold">'+projectlists[j].list_project[L].pj_sub+'</span><br/>'
                         }
                      }
                   }
                }
                pageSet+='<br/><br/><br/>'
                pageSet+='</ul></div><div class="card-footer"><div class="row"><div class="product-filter-desc col"><div class="rating-stars d-inline-flex mb-2 mr-3">'
                for(j=0; j<lists[i].list_review.length; j++){
                   pageSet+='<input type="number" readonly="readonly" class="rating-value star" name="rating-stars-value">'
                      +'<span class="rated-products-ratings">'
                  if(lists[i].list_review[j].freerev_star >=0){
                     for(k=1; k<=lists[i].list_review[j].freerev_star; k++){
                        pageSet+=' <i class="fa fa-star text-warning"> </i>'
                     }
                     for(k=1; k<=5-lists[i].list_review[j].freerev_star; k++){
                        pageSet+='<i class="fa fa-star-o text-warning"> </i>'
                     }
                  }
                   pageSet+=' </span>&nbsp;'+lists[i].list_review[j].freerev_star+'&nbsp;&nbsp;&nbsp;'   
                }
                for(j=0; j<lists[i].list_freelancerprofile.length; j++){
                   pageSet+='<a class="icons"><i class="fa fa-eye text-muted mr-1"></i>'+lists[i].list_freelancerprofile[j].pro_vcnt+'&nbsp;Views</a>'
                }
                for(j=0;j<lists[i].list_freelancerprofile.length; j++){
                   pageSet+='&nbsp;&nbsp;&nbsp;<a class="icons"><i class="fa fa-heart text-muted mr-1"></i>'+lists[i].list_freelancerprofile[j].pro_pcnt+'&nbsp;Picks</a>'
                }
                pageSet+='</div></div><div class="col col-auto dams" >'
                      +'<a class="icons" href="freelancercontent?free_code='+lists[i].free_code+'"><i class="fa fa-angle-double-right text-muted mr-1"></i>더보기</a>'
                     +'</div></div></div></div>'
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
             $(".listStart").html(pageSet);
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