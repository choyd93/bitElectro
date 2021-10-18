<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bc.model.vo.CartVO"%>
<%@page import="com.bc.model.vo.ProductVO"%>
<%@page import="com.bc.model.dao.CartDAO"%>
<%@page import="com.bc.model.dao.ProductDAO"%>
 
<%@page import="java.util.List"%>
<%@page import="com.bc.model.common.Paging"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

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
       
      });

      function getJSONPayment() {
        console.log(">> getJSONPayment() 실행~~~");

        $.ajax("ssss", {
          type: "get",
          dataType: "json", 
          success: function (data) {
        	  const list = data["list"];
              const plist = data["plist"];
              console.log(data); 
              console.log("list : " + list); 
              console.log(list); 
              console.log(plist); 
              const begin = plist[0].Begin;
              var cPage = plist[0].BeginPage;
              var cPagePrev = plist[0].BeginPage - 1;
              var cPageNext = plist[0].BeginPage + 1;
              console.log("begin : " + begin); 
              console.log("cPage : " + cPage); 
              console.log("cPagePrev : " + cPagePrev); 
              console.log("cPageNext : " + cPageNext); 
            
            // 데이터 넣기 전 공백으로 초기화 
            $("#noticeList").html("");
            
            var result = "";
            $.each(list, function(index, item){
		             result += "<tr>";
		             result += "<td>" + item.rnum + "</td>";
		           	 result += "<td>";
		           	 result += "<a href='"+"noticeOne.jsp?ccategory="+item.ccategory+"&page="+1+"&rnum="+item.rnum+"'>";
	             	 result += item.csubject + "</td>";
		             result += "<td>" + item.crdate + "</td>";
		             result += "</tr>";
         	});
            console.log("result : " + result);
            $("#noticeList").html(result);
            
          },
          error: function (request, status, error) {
            alert(
              "Ajax 처리 실패, " + "\n" +
                "code : " + request.status + "\n" +
                "message : " + request.responseText + "\n" +
                "error : " + error
            );
          },
        });
      }
      
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
          <h1>주문결제</h1>
          <hr />
        </div >
        
        <div id="bitContentArea">
          <div id="mainArea">
          <form id="">
            <div class="mainContent">
            	<div>
            		<h1>1. 배송정보</h1>
            		<div class="paymentBorder">
            			<input type="radio" id="defaultAddress" value="defaultAddress">
            			<label for="defaultAddress">기본배송지</label>
            			<input type="radio" id="defaultAddress" value="defaultAddress">
            		    <label for="defaultAddress">직접입력</label>
            		    <p>홍길동</p>
            		    <p>(01234) 서울특별히 마포구 비트로 9999</p>
            		    <p>010-1234-1234</p>
            		    <select>
            		        <option value="aa">배송시 요청사항 선택하기</option>  
            		    	<option value="aa">빠르게 보내주세요.</option>  
            		    	<option value="aa">퀵으로 보내주세요.</option>           		    	
            		    </select>
            		</div>
            	</div>
            	<div>
            		<h1>2. 주문상품</h1>
              <table class="tableContent marginTop">
                <thead>
                  <tr>
                    <th>상품명</th>
                    <th>수량<th>
                    <th>주문금액</th>
                    <th>배송정보</th>
                  </tr>
                </thead>
                <tbody id="noticeList">
                </tbody>
                <tfoot id="pageBlock">
                </tfoot>
              </table>
              </div>
              <div>
              <div class="paymentBottomArea">
              <ul class="paymentBottomMiddle">
              	  <li>
            		<h1 style="width:340px;">3. 할인/포인트</h1>
            		<div class="paymentBorderSmall">
            			<p>쿠폰 할인 0원</p>
            		<button type="button" class="submitButtonType">쿠폰변경</button>
            			<p>포인트 0원</p>
            		<input type="text" placeholder="0원">
            		<button type="button" class="submitButtonType">전액 사용</button>
            		</div>
            	  </li>
            	  <li>
            	  	<div>
            	  	<h1 style="width:340px;">4. 결제방법</h1>
            	 	 <div class="paymentBorderSmall">
	            		<input type="radio" id="accountTransfer" value="accountTransfer">
	            			<label for="accountTransfer">계좌이체</label>
	           			<input type="radio" id="depositWithout" value="depositWithout">
	           				<label for="depositWithout">무통장 입금</label>
	           			<input type="radio" id="creditCard" value="creditCard">
            				<label for="creditCard">신용카드</label>
       				</div>
       				</div>
            	  </li>
            	</ul>
            	</div>
            	<div class="paymentFinalArea">
            		<h1>5. 최종결제 금액 확인</h1>
            		<div class="paymentBorderSmall">
	            		<p>총 상품 금액  0원</p>
	            		<p>배송비  0원</p>
	            		<p>결제 방법</p>
	            		<p>최종결제 금액  0원</p>
            		</div>
            	</div>
            	</div>
              <div class="cartContentBtnArea">
              	<ul class="cartContentBnUl">
	              <li class="cartContentBtn">
	              <button type="button" class="pageBtn">취소하기</button>
	              </li>
	        	  <li class="cartContentBtn">
	              <button type="button" class="submitButtonType">결제하기</button>
	              </li>
	            </ul>
              </div>
          </div>
          </form>
          
        </div>
        <div class="rightArea"></div>
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
        