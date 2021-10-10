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
          <h1>나의 문의내역</h1>
          <hr>
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
            <div class="mainContent">
              <form class="mainContentTitleArea">
                <input type="radio" id="radioWeek">
                <label for="radioWeek">1주일</label>
                <input type="radio" id="radioMonth">
                <label for="radioMonth">1개월</label>
                <input type="radio" id="radioTreeMonth">
                <label for="radioTreeMonth">3개월</label>
                <select>
                  <option>전체 상태</option>
                  <option>처리중</option>
                  <option>처리 완료</option>
                </select>
                <button class="submitButtonType">조회</button>
              </form>
              <table class="tableContent">
                <thead>
                  <tr>
                    <th>문의 유형</th>
                    <th>제목</th>
                    <th>글 작성일</th>
                    <th>주문번호</th>
                    <th>처리 여부</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>반품</td>
                    <td>반품 문의</td>
                    <td>21/10/09</td>
                    <td>20211001</td>
                    <td>처리중</td>
                  </tr>
                  <tr>
                    <td>환불</td>
                    <td>환불 문의</td>
                    <td>21/09/11</td>
                    <td>20211001</td>
                    <td>처리완료</td>
                  </tr>
                  <tr>
                    <td>배송</td>
                    <td>배송 문의</td>
                    <td>21/08/23</td>
                   	<td>20211001</td>
                    <td>처리완료</td>
                  </tr>
                </tbody>
              </table>  

            </div>
        </div>
      </div>
      <div class="paging">
        <button class="pageBtn">1</button>
        <button class="pageBtn">2</button>
        <button class="pageBtn">3</button>
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
            <ul></ul>
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
              <li class="COPYRIGHT">
                COPYRIGHTⓒ bitElectro
              </li>
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