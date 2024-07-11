<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main2.css' />">

<script>
    $(document).ready(function(){
        $('header, nav').hover(function(){
            $('.submenu').stop(true, true).slideDown();
        }, function(){
            $('.submenu').stop(true, true).slideUp();
        });
    });
    </script>
</head>
<body>
   


    <div id="wrap">
               <h1 >검색 결과 </h1>        
                 <!-- 검색어를 가져와 출력합니다 -->
        <c:if test="${not empty param.query}">
                  <p>검색어: ${param.query}</p>
        </c:if>

          <!-- 여기에 실제 검색 결과를 추가 -->
          <p>검색 결과가 여기에 표시됩니다.</p>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>