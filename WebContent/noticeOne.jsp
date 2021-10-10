<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <div id="header">
      <div class="headerWrap">
        <div class="utilArea">
          <ul class="utilMenu">
            <li>
              <button class="utilMenuOne">로그인</button>
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
          <h1>공지사항</h1>
          <hr />
        </div>
        <div id="bitContentArea">
          <div class="leftArea">
            <div class="leftMenu">
              <ul class="leftMenuBar">
                <button class="leftMenuTitle">고객센터</button>
                <hr />
                <button class="leftMenuBtn" onclick="noticeGo()">
                  공지사항
                </button>
                <button class="leftMenuBtn" onclick="faqGo()">
                  자주 묻는 질문
                </button>
                <button class="leftMenuBtn" onclick="inquireGo()">
                  나의 문의 내역
                </button>
              </ul>
            </div>
          </div>
          <div id="mainArea">
            <div id="mainAreaHeader">
              <div class="mainAreaHeaderTop">
                <button class="pageBtn btnOne">목록으로</button>
                <button class="mainAreaHeaderTopLeft pageBtn btnOne">
                  뒤로가기
                </button>
                <button class="mainAreaHeaderTopRight pageBtn btnOne">
                  수정하기
                </button>
              </div>
              <div class="mainAreaHeaderMiddle">
                <h2>콜센터 근무시간 안내</h2>
              </div>
              <div class="mainAreaHeaderMiddleLeft">
                <span>2021-10-10</span>
              </div>
            </div>
            <div class="mainContentWriteArea">
              고객센터(콜센터:1688-2470) 근무시간 안내 - 평일(월~금) 오전 09시
              부터 오후 18시 까지 * 점심시간: 12시 30분 부터 13시 30분
              까지(1시간) - 토요일, 일요일 및 공휴일 휴무(대체휴무 포함) *
              월요일 및 공휴일 이후는 통화량이 많아 상담원 연결이 어려울 수
              있습니다. 유선 상담이 아닌 게시판에 문의 주시면 신속히 확인 후
              답변 드리겠습니다. > 고객센터 문의 게시판 바로가기 (로그인이 필요
              합니다.) > 이메일 접수: cs@danawa.com - 기타 사내 행사 및 내부
              사정에 의해 근무시간은 조정될 수 있으며, 이 경우 별도 공지해
              드리겠습니다. 감사합니다.
            </div>
          </div>
          <div class="mainContentWriteAreaBottom">
            <button class="mainContentWriteBottomBtn">목록으로</button>
          </div>
        </div>

        <div class="rightArea"></div>
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
    <script>
      const noticeGo = () => {
        location.href = "controller?type=notice";
      };

      const inquireGo = () => {
        location.href = "controller?type=inquire";
      };

      const faqGo = () => {
        location.href = "controller?type=faq";
      };
    </script>
  </body>
</html>
    