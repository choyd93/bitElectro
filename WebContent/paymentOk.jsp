<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bc.model.vo.CartVO"%>
<%@page import="com.bc.model.vo.ProductVO"%>
<%@page import="com.bc.model.dao.CartDAO"%>
<%@page import="com.bc.model.dao.ProductDAO"%>
<%@page import="com.bc.model.dao.MemberDAO"%>
<%@page import="com.bc.model.vo.MemberVO"%>
<%@page import="com.bc.model.vo.OrderProdVO"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.model.common.Paging"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<%  

//테스트 아이디값
String mid = "test1";
MemberVO mvo = MemberDAO.getMemberUserInfo(mid);

pageContext.setAttribute("mvo", mvo);

%> 

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
    <title>주문결제 | bitElectro</title>
    <link rel="stylesheet" href="./styles.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        console.log("notice 실행");
        
        getJSONPayment();
        
        $("#csCenterBtn").click(getJSONNotice);
        $("#cartBtn").click(getCart);
        
        $("#noticeBtn").click(getJSONNotice);
        $("#faqBtn").click(getJSONFaq);
        $("#inquireBtn").click(getJSONInquire);
        $("#goToShoppingBtn").click(getMainMenu);
      });

      
      function getJSONNotice() {
          console.log(">> getJSONNotice() 실행~~~");
          location.href = "notice.jsp";
      };
      
      function getJSONFaq() {
        	console.log(">> getJSONFaq() 실행~~~");
            location.href = "faq.jsp";
      };

      function getJSONInquire() {
            console.log(">> getJSONInquire() 실행~~~");
            location.href = "inquire.jsp"; 
      };
      
      function getCart() {
    	  console.log(">> getCart() 실행~~~");
          location.href = "cart.jsp"; 
      }
      
      function getMainMenu() {
    	  console.log(">> getMainMenu() 실행~~~");
          location.href = "mainMenu.jsp"; 
      }
      
    </script>
  </head>
  <body>
  	<div id="wrapBody">
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
        <div class="locationArea">
          <h1>주문완료</h1>
          <hr />
        </div >
        
        <div id="bitContentArea">
          <div id="mainArea">
            <div class="mainContent">
            	<div>
            		<div class="paymentBorder">
            			<h1 style="colrer:red">고객님의 주문이 완료되었습니다.<h1>
            		</div>
            	</div>
           	<div>
              <table class="tableContent marginTop">
                <thead>
                  <tr>
                    <th>결제수단</th>
                    <th>신용카드</th>
                  </tr>
                </thead>
                <tbody id="noticeList">
		           <tr>
			          	<td>최종결제금액</td>
				       	<td> 0원</td>
				   </tr>
				</tbody>
              </table>
              </div>
          </div>
          <div>
          </div>
        </div>
        <div class="rightArea"></div>
        <div class="cartContentBtnArea">
              	<ul class="cartContentBnUl">
	              <li class="cartContentBtn">
	              <button type="button" class="pageBtn" id="goToShoppingBtn">쇼핑계속하기</button>
	              </li>
	        	  <li class="cartContentBtn">
	              <button type="button" class="submitButtonType">주문확인하기</button>
	              </li>
	            </ul>
              </div>
      </div>
      <!-- <hr style="margin-left:40px;"/>
          <div style="margin-left:100px">
          <h3>유의사항</h3>
			<p>한 번에 주문 가능한 최대 상품 종류는 10개입니다.</p>
			<p>담긴 상품 종류(옵션단위)는 10개까지만 보여집니다.</p>
			<p>담긴 상품 종류가 10개 초과되면 가장 예전에 담았던 상품 순서대로 비노출 됩니다.</p>
          </div> -->
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
    </div>
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
        