<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>기업 리스트</title>

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
  <style>
    .company-box {
        border: 1px solid #ccc;
        padding: 15px;
        margin: 10px;
        border-radius: 5px;
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
    }
    .company-box h3 {
        margin-top: 0;
    }
    .company-box p {
        margin: 5px 0;
    }
    .company-box a {
        color: blue;
        text-decoration: none;
    }
    .company-box a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <h1>dkdlrh </h1>
<div class="container">
    <h1>기업 리스트</h1>
    dddd
    <c:forEach var="company" items="${company_list}">
        <div class="company-box">
            <h3>${company.corp_name}</h3>
            <p>기업 형태: ${company.corp_type}</p>
            <p>주소: ${company.corp_address}</p>
            <p>평균 연봉: ${company.corpInfo_Sal}</p>
            <p>사원수: ${company.corpInfo_empNo}</p>
            <p>매출액: ${company.corpInfo_money}</p>
            <p>소개: ${company.corpInfo_intro}</p>
            <p>설립년도: ${company.corpInfo_birth}</p>
            <!-- <a href="company_detail?id=${company.corpInfo_No}">자세히 보기</a> -->
        </div>
    </c:forEach>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>