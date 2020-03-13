<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->


<form action="uploadFormAction" method="post" enctype="multipart/form-data">


<input type="file" class="dropify" id="dropify" name="uploadFile" data-height="100" multiple/>
<script type="text/javascript">
   $(document).ready(function(){					            	
   	$('#dropify').dropify();
   });
</script>




<!--
<style>
.dropzone {
       background-color: #ccc;
    border: 3px dashed #888;
    width: 350px;
    height: 150px;
    border-radius: 25px;
    font-size: 20px;
    color: #777;
    padding-top: 50px;
    text-align: center;
}
.dropzone.over {
    opacity: .7;
    border-style: solid;
}
#dropzone .dropzone {
    margin-top: 25px;
    padding-top: 60px;
}
</style> 


<form id="dropzone">
		<button type="button" class="btn btn-success fileup-btn" style="background-color: #4CAE4C;">
        파일 선택
        <input type="file" id="upload-4" multiple>
    </button>
	
	<a class="control-button btn btn-link" style="display: none"
       href="javascript:$.fileup('upload-2', 'upload', '*')">Upload all</a>
    <a class="control-button btn btn-link" style="display: none"
       href="javascript:$.fileup('upload-2', 'remove', '*')">Remove all</a>
		
	    <div id="upload-4-dropzone" class="dropzone">이곳으로 파일을 끌어 놓아주세요.
	    </div>

	    <div id="upload-4-queue" class="queue"></div>
	    
</form>

<script src="../plugins/fileuploads-test/jquery.growl.js"></script> 
<script src="../plugins/fileuploads-test/fileup.js"></script> 
<script>
       $.fileup({
           url: 'example.com/your/path?file_upload=1',
           inputID: 'upload-1',
           queueID: 'upload-1-queue',
           onSuccess: function(response, file_number, file) {
               $.growl.notice({ title: "Upload success!", message: file.name });
           },
           onError: function(event, file, file_number) {
               $.growl.error({ message: "업로드 실패!" });
           }
       });
	$.fileup({
           url: 'example.com/your/path?file_upload=1',
           inputID: 'upload-2',
           dropzoneID: 'upload-2-dropzone',
           queueID: 'upload-2-queue',
           onSelect: function(file) {
               $('#multiple .control-button').show();
           },
           onRemove: function(file, total) {
               if (file === '*' || total === 1) {
                   $('#multiple .control-button').hide();
               }
           },
           onSuccess: function(response, file_number, file) {
               $.growl.notice({ title: "Upload success!", message: file.name });
           },
           onError: function(event, file, file_number) {
               $.growl.error({ message: "업로드 실패!" });
           }
       });
	$.fileup({
           url: 'https://github.com?file_upload=1',
           inputID: 'upload-3',
           queueID: 'upload-3-queue',
           autostart: true,
           onSelect: function(file) {
               $('#types .control-button').show();
           },
           onRemove: function(file, total) {
               if (file === '*' || total === 1) {
                   $('#types .control-button').hide();
               }
           },
           onSuccess: function(response, file_number, file) {
               $.growl.notice({ title: "Upload success!", message: file.name });
           },
           onError: function(event, file, file_number) {
               $.growl.error({ message: "업로드 실패!" });
           }
       });
	 $.fileup({
           url: 'https://github.com?file_upload=1',
           inputID: 'upload-4',
           queueID: 'upload-4-queue',
           dropzoneID: 'upload-4-dropzone'
       })
           .select(function(file) {
               $('#dropzone .control-button').show();
           })
           .remove(function(file, total) {
               if (file === '*' || total === 1) {
                   $('#dropzone .control-button').hide();
               }
           })
           .success(function(response, file_number, file) {
               $.growl.notice({ title: "Upload success!", message: file.name });
           })
           .error(function(event, file, file_number) {
               $.growl.error({ message: "업로드 실패!" });
           })
           .dragEnter(function(event) {
               $(event.target).addClass('over');
           })
           .dragLeave(function(event) {
               $(event.target).removeClass('over');
           })
           .dragEnd(function(event) {
               $(event.target).removeClass('over');
           });

   </script>
   <script type="text/javascript">

 var _gaq = _gaq || [];
 _gaq.push(['_setAccount', 'UA-36251023-1']);
 _gaq.push(['_setDomainName', 'jqueryscript.net']);
 _gaq.push(['_trackPageview']);

 (function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();

</script>
-->

<button>Submit</button>

</form>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->