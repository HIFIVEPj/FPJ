<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
   if(${empty sessionScope.name}){
      alert("로그인이 필요합니다.");
      location.href="../login";
      //history.back();
      //history.forward();
      //history.go(); back / forward 둘다 가능(음수/양수)
   }
</script>