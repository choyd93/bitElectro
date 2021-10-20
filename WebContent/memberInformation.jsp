<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
    <link rel="stylesheet" href="./styles.css" />
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
			<h1>회원정보</h1>
				<!--  아이디, 비밀번호, 이름 , 휴대전화, 이메일, 생년월일, 회원포인트, 누적금액, 가입일, 회원구분  -->
				<div>
					<div>
						<p>ID: <input type="text" id="mid" name="mid" value=${vo.mid } readonly="readonly"></p> 
						<p>비밀번호: <input type="password" id="mpw" name="mpw" value=${vo.mpw } readonly="readonly"></p>
						<p>이름: <input type="text" id="mname" name="mname" value=${vo.mname } readonly="readonly"></p>
						<p>휴대전화: <input type="text" id="mphone" name="mphone" value=${vo.mphone } readonly="readonly"></p>
						<p>이메일: <input type="text" id="memail" name="memail" value=${vo.memail } readonly="readonly"></p>
						<p>주소: <input type="text" id="maddress" name="maddress" value=${vo.maddress } readonly="readonly"></p>
						<p>생년월일: <input type="text" id="mjumin" name="mjumin" value=${vo.mjumin } readonly="readonly"></p>
						<p>회원포인트: <input type="text" id="mpoint" name="mpoint" value=${vo.mpoint } readonly="readonly"></p>
						<p>회원구분: <input type="text" id="mclass" name="mclass" value=${vo.mclass } readonly="readonly"></p>
						<p>누적금액: <input type="text" id="mcumulative_buy" name="mcumulative_buy" value= ${vo.mcumulative_buy } readonly="readonly" ></p>
						<p>가입일: <input type="text" id="mjoindate" name="mjoindate" value=${vo.mjoindate } readonly="readonly"></p>
						<input type="button" value="수정하기" onclick="location.href='memberModify.jsp';">
						<input type="button" value="취소" onclick="history.go(-1)">
					</div>
				</div>
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