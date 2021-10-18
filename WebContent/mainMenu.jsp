<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.bc.model.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.model.common.Paging"%>
<%@page import="com.bc.model.dao.NoticeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
    <title>메인 메뉴 | bitElectro</title>
    <link rel="stylesheet" href="./styles.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        console.log("notice 실행");  
        
        $("#csCenterBtn").click(getJSONNotice);
        $("#cartBtn").click(getCart);
        
        $("#noticeBtn").click(getJSONNotice);
        $("#faqBtn").click(getJSONFaq);
        $("#inquireBtn").click(getJSONInquire);
       
      });

      function getJSONNotice() {
          console.log(">> getJSONNotice() 실행~~~");
          location.href = "notice.jsp";
      };
      
      function getJSONFaq() {
        	console.log(">> faqGo() 실행~~~");
            location.href = "faq.jsp";
        };
      
      function getJSONInquire() {
          console.log(">> getJSONInquire() 실행~~~");
          location.href = "inquire.jsp"; 
        }
      
      function getCart() {
    	  console.log(">> getCart() 실행~~~");
          location.href = "cart.jsp"; 
      }
      
    </script>
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
              <button class="utilMenuOne" id="cartBtn">장바구니</button>
            </li>
            <li>
              <button class="utilMenuOne" id="csCenterBtn">고객센터</button>
            </li>
          </ul>
        </div>

        <div class="headerTop">
          <h1><a href="mainMenu.jsp">bitElectro</a></h1>
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
        <div class="mainMenuBannerArea">
          <img src="https://cdn.011st.com/11dims/resize/1240x400/quality/99/11src/http://cdn.011st.com/ds/2021/10/15/1311/87c6631a26f7c875e4255609166d01ff.jpg" height="300px" width="1000px";>
        </div>
        <div id="bitContentArea">
          <div class="mainMenuTitleArea">
          <span>고객님 취향저격 추천 상품</span>
          <h2 class="mainMenuTitle1">베스트 상품</h2>
          </div>
          <hr/>
          <div class="mainProdArea">
          	<ul class="middleProdArea">
          		<li>
          <div class="proItem">
       	  <a href="/app/goods/goodsDetail?goodsNo=0011916654&amp;ws_mainPrd1=0011916654" target="_self" class="prdLink">
          <div class="">
          	<img class="imgMargin" src="http://static1.e-himart.co.kr/contents/goods/00/11/91/66/54/0011916654__NT350XCR-A58M__M_300_300.jpg" alt="북플러스 노트북 NT350XCR-A58M 인텔 10세대 i5 8GB 256GB 프리도스 (화이트)" width="300" height="300" >
          </div>
          <div class="prdInfo">
		  <p class="prdName prdInfo">
			삼성전자&nbsp;[노트북 판매1위]&nbsp;북플러스 노트북 (화이트)</p>
			<p>649,000원</p>
		  </div>
          </div>
          	</li>
          	<li>
          <div class="proItem">
       	  <a href="/app/goods/goodsDetail?goodsNo=0011916654&amp;ws_mainPrd1=0011916654" target="_self" class="prdLink">
          <div class="">
          	<img class="imgMargin" src="https://m.etlandmall.co.kr/nas/cdn/attach/product/2021/03/26/S2963327/S2963327_0_500.jpg" alt="비스포크 4도어 냉장고" width="300" height="300" >
          </div>
          <div class="prdInfo">
		  <p class="prdName prdInfo">
			삼성전자&nbsp;[냉장고 판매1위]&nbsp;비스포크 4도어 냉장고</p>
			<p>1,370,000원</p>
		  </div>
          </div>
          </li>
          <li>
          <div class="proItem">
       	  <a href="/app/goods/goodsDetail?goodsNo=0011916654&amp;ws_mainPrd1=0011916654" target="_self" class="prdLink">
          <div class="">
          	<img class="imgMargin" src="http://gdimg.gmarket.co.kr/1738168373/still/280?ver=1579672729" alt="독일 보쉬 프리미엄 세탁기" width="300" height="300" >
          </div>
          <div class="prdInfo">
		  <p class="prdName prdInfo">
			보쉬&nbsp;[세탁기 판매량 폭주]&nbsp;독일 보쉬 프리미엄 세탁기</p>
			<p>2,237,000원</p>
		  </div>
          </div>
          </li>
          </ul>
        </div>
        <div class="rightArea"></div>
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
        