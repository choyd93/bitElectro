<%@page import="java.util.List"%>
<%@page import="com.bc.model.vo.LogInVO"%>
<%@page import="com.bc.model.dao.LogInDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>로그인성공</title>
</head>
<body>
	<script>alert("로그인에 성공하였습니다.")</script>
	<%-- <h1>로그인성공</h1>
	<ul>
	<li>${vo.mid }</li>
	<li>${vo.mname }</li>
	<li>${vo.mphone }</li>
	<li>${vo.maddress }</li>
	<li>${vo.mpoint }</li>
	<li>${vo.mjoindate }</li>
	</ul>		 --%>			
	<!-- c:forEach 문을 쓰는거는 List문에 데이터를 하나하나 꺼내올때 써야한다
		 지금 만드는 로그인은 데이터 하나하나 꺼내올 필요 없이 바로 꺼내면 된다.
	 -->
	 
	 <script>
	 	location.href="mainMenu.jsp"; // 로그인 성공 시 메인페이지로 이동 
	 </script>
	 			
</body>
</html>