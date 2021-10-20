<%@page import="com.bc.model.vo.LogInVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	LogInVO lvo = (LogInVO)request.getAttribute("lvo");
	System.out.println("lvo: " + lvo);
	
	pageContext.setAttribute("lvo", lvo);
	/* LogInVO vo = (LogInVO)pageContext.getAttribute("lvo");
	System.out.println("vo: " + vo); */
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./styles.css" />
	<meta charset="UTF-8">

<title>정보수정OK</title>
</head>
<body>
	<div id="header">
      <div class="headerWrap">
        <div class="utilArea">
        	
          <ul class="utilMenu">
            <li>
              <button class="utilMenuOne" id= "logOut" name="logOut" onclick="logOut_btn()">로그아웃</button>
            </li>
            <li>
              <button class="utilMenuOne">회원가입</button>
            </li>
            <li>
              <button class="utilMenuOne">장바구니</button>
            </li>
            <li>
              <button class="utilMenuOne">고객센터</button>
            </li>
          </ul>
        </div>
        
        <div class="headerTop">
          <h1>bitElectro</h1>
        </div>
        <div class="headerMenuArea">
          <ul class="headerMenu">
            <li class="bestItem">Best 100</li>
            <li>대형가전</li>
            <li>계절가전</li>
            <li>컴퓨터</li>
            <li>휴대폰</li>
            <li>카메라</li>
          </ul>
          <span class="headerMenuSearchBar">
            <input type="text" placeholder="검색어를 입력해주세요" />
          </span>
        </div>
      </div>
    </div>
     
     <div id="container">
      <div id="content">
        <div class="locationArea">
          <h1>마이페이지</h1>
          <hr />
        </div>
        <div id="bitContentArea">
          <div class="leftArea">
            <div class="leftMenu">
              <ul class="leftMenuBar">
                <!-- <button class="leftMenuTitle">마이전자</button>
                <hr />
                <button class="leftMenuBtn" onclick="noticeGo()">
                  공지사항
                </button>
                <button class="leftMenuBtn" onclick="faqGo()">
                  자주 묻는 질문
                </button>
                <button class="leftMenuBtn" onclick="inquireGo()">
                  나의 문의 내역
                </button> -->
                <button class="leftMenuBtn" onclick="location.href='memberInformation.jsp'">
                  회원정보
                </button>
                <button class="leftMenuBtn" onclick="location.href='memberModify.jsp'">
                  정보수정
                </button>
                <button class="leftMenuBtn">
                  주문내역조회
                </button>
                <button class="leftMenuBtn">
                  쿠폰조회
                </button>
                <button class="leftMenuBtn" onclick="location.href='pointInformation.jsp'">
                  포인트정보
                </button>
                <button class="leftMenuBtn" onclick="location.href='withdrawal.jsp'">
                  회원탈퇴
                </button>
              </ul>
            </div>
          </div>    
	<div id="mainArea">
		<div class="mainContent">
		<script>alert("정보가 수정되었습니다.")</script>
			<h1>정보수정OK</h1>
			<ul>
				<li>이름: ${lvo.mname }</li>
				<li>생년월일: ${lvo.mjumin}</li>
				<li>아이디: ${lvo.mid}</li>
				<li>비밀번호 :${lvo.mpw}</li>
				<li>전화번호: ${lvo.mphone}</li>
				<li>이메일: ${lvo.memail}</li>
				<li>주소: ${lvo.maddress}</li>
			</ul>	
	<a href="myPage.jsp">마이페이지로 이동</a>
	   </div>
           </div>
			<footer id="footer">
		      <div class="infoArea">
		        <div class="footerMenuArea">
		          <ul class="footerMenu">
		            <li>회사소개</li>
		            <li>이용약관</li>
		            <li>개인정보처리방침</li>
		          </ul>
		        </div>
		        <div class="footerArea">
		          <img
		            src="http://static1.e-himart.co.kr/resources/layout/images/common/new_footLogo.png"
		            alt="bitElectro"
		          />
		          <div class="footerRight">
		            <ul>
		              <li><h2>비트일렉트로</h2></li>
		              <li>대표이사 : 2조 비트일렉트로</li>
		              <li>
		                주소 (우) 010101 서울특별시 비트로 999-1, 111 (마포, 비트타워)
		                비트캠프
		              </li>
		              <li>
		                고객지원센터 : 1588-1111 홈케어/이전설치 1588-9999 FAX :
		                111-1234-1234
		              </li>
		              <li class="COPYRIGHT">COPYRIGHTⓒ bitElectro</li>
		            </ul>
		          </div>
		        </div>
		      </div>
		    </footer>
		</body>
</html>