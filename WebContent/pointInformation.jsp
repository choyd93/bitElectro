<%@page import="com.bc.model.vo.LogInVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>포인트정보</title>
    <link rel="stylesheet" href="./styles.css" />
</head>
<%
	LogInVO vo = (LogInVO)session.getAttribute("vo");
	System.out.println("마이페이지 vo: " + vo);
%>
<script>
	function logOut_btn() {
		//alert("로그아웃 되었습니다.");
		
		location.href="logOut_ok.jsp";
		
	}

</script>
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
          <h1>MY LAND</h1>
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
                <button class="leftMenuBtn" onclick="">
                  배송지정보
                </button>
                <button class="leftMenuBtn" onclick="">
                  수취확인정보
                </button>
                <button class="leftMenuBtn" onclick="">
                  포인트정보
                </button>
                <button class="leftMenuBtn" onclick="">
                  주문배송조회
                </button>
                <button class="leftMenuBtn" onclick="">
                  주문내역조회
                </button>
                <button class="leftMenuBtn" onclick="">
                  쿠폰조회
                </button>
                </br>
                <button class="leftMenuBtn" onclick="location.href='memberModify.jsp'">
                  정보수정
                </button>
                </br>
                <button class="leftMenuBtn" onclick="location.href='withdrawal.jsp'">
                  회원탈퇴
                </button>
              </ul>
            </div>
          </div>  
          <div id="mainArea">
		<div class="mainContent">
	   		<h1>포인트 정보</h1>
	   		<h2>사용가능한 포인트는 0원입니다.</h2>
	   		<h2>이달 소멸  포인트는 0원입니다.</h2>
	   		<hr>
	   		<h2>포인트 유의사항</h2>
	   		<p>주문취소 또는 반품의 경우에는 적립된 포인트가 회수됩니다.</p>
	   		<p>포인트는 적립일로부터 3년간 유효하며, 유효기간이
	   		경과한 적립금은 자동적으로 소멸됩니다.</p>
			<p>포인트는 10,000원 이상부터 사용가능하며 당월 소멸 얘정포인트는
			1원부터 사용가능합니다.</p>	   		
	   		
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