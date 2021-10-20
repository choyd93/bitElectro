<%@page import="com.bc.model.vo.LogInVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	LogInVO vo =  (LogInVO)session.getAttribute("vo");
	session.setAttribute("vo", vo);
	
	System.out.println("vo: " + vo);
%>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="./styles.css" />
<script>
	function withdrawal_btn() {
		
		var form = document.withdrawal; // 폼 이름이랑 연결 (document.withdrawal) 
		if (!form.mpw.value) {
			alert("비밀번호를 입력해주세요."); // 폼 값은 무조건 네임값이 넘어간다.
			return false;
		}
		
		if (form.mpw_check.value.trim() == "") {
			alert("비밀번호를 한번 더 입력해주세요.");
			return;
		}
		
		if (form.mpw.value != form.mpw_check.value) {
			alert("잘못입력하셨습니다. 다시입력해주세요.");
			return;
		}
		
		let check = confirm('정말로 탈퇴하시겠습니까?');
		if (check) {
			form.action = "withdrawal";
			form.submit();
			
		}
		
		
	}

</script>
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
		<div class="mainContent" style="overflow:auto;">
			<div>
				<div>
					<p>회원탈퇴시,소유하고 있는 쿠폰/포인트/e.POINT 등은 자동으로 소멸되며,</p>
					<p>재가입하더라도 복구되지 않습니다.</p>
					<p>(OK멤버십 탈퇴는 OK캐쉬백 사이트에서 가능합니다.)</p>
					<p>서비스 이용내역은 모두 삭제되며, 재가입하더라도 복구되지 않습니다.</p>
					<p>상품주문 및 취소/교환/반품 처리가 진행중일 경우에는 탈퇴처리가 이루어지지 않습니다.</p>
					<p>탈퇴 후 1개월 내 재가입이 불가합니다.</p>
				<hr>
					<form  id="withdrawal" name="withdrawal">
					<p>비밀번호: <input type="password" id="mpw" name="mpw"></p>
					<p>비밀번호확인: <input type="password" id="mpw_check" name="mpw_check"></p>
					<input type="button" value="회원탈퇴" onclick="withdrawal_btn()">
					<input type="button" value="취소" onclick="history.go(-1)">
					
					<!-- //<input type="hidden" id="mid" name="mid"> -->		
					</form>
				</div>
			</div>
		</div>
		</div>
	   </div>
	<footer id="footer" style="position: initial;">
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