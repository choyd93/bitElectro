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
    <title>장바구니 | bitElectro</title>
    <link rel="stylesheet" href="./styles.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        console.log("notice 실행");
        
        getJSONCart();
        
        $("#csCenterBtn").click(getJSONNotice);
        $("#cartBtn").click(getCart);
        
        $("#noticeBtn").click(getJSONNotice);
        $("#faqBtn").click(getJSONFaq);
        $("#inquireBtn").click(getJSONInquire);
        $("#goToShoppingBtn").click(getMainMenu);
        
        // 체크박스 전체 선택 
        $("#checkall").click(function(){
        	console.log("checkall 실행 ~~~~~~~~~");

            if($("#checkall").prop("checked")){
                $("input[name=cnto]").prop("checked",true);
            }else{
                $("input[name=cnto]").prop("checked",false);
            }
        })
        
        $("#selectDelete").click(function(){
        	console.log("selectDelete 실행 ~~~~~~~~~~");
        	
        	if(confirm("선택한 상품을 삭제 하시겠습니까?")){
        		$("#buttonSwitch").attr("value", "delete");

        		var str = $("#frm").serialize();
				console.log('str: '+ str);
        		
				$("#frm").submit();
			}else{
				return;
			}
        })
        
        $("#orderAllsubmitBtn").click(function(){
        	console.log("orderAllsubmitBtn 실행 ~~~~~~~~~~");
        	var cnto = $("#cntoId").val();
	    	console.log("cnto : " + cnto);

        	if(confirm("선택한 상품을 주문 하시겠습니까?")){
            	console.log("orderAllsubmitBtn 실행 ~~~~~~~~~~");

        		/* if(cnto == null){
    				console.log('cnto가 널');
        		} 
        		 */
        		$("#buttonSwitch").attr("value", "orderAll");
        		
        		var str = $("#frm").serialize();
				console.log('str: '+ str);

        		$("#frm").submit();
			}else{
				return;
			}		
        })
        
        
		$(document).on("click", "#pcntUpdate", function(){
			console.log("pcntUpdate 실행 ~~~~~~~~~~");
        	
        	if(confirm("상품 수량을 변경 하시겠습니까?")){
        		$("#buttonSwitch").attr("value", "orderNumUpdate");
        		
        		var str = $("#frm").serialize();
				console.log('str: '+ str);
				
				/* if(cnto == null) {
					console.log('cnto가 널');
					return;
				} */

        		$("#frm").submit();
			}else{
				return;
			}		
            });
       
      });
      
      function getJSONCart() {
        console.log(">> getJSONCart() 실행~~~");

        $.ajax("cartView", {
          type: "get",
          dataType: "json", 
          success: function (data) {
        	  const clist = data["CartVO"];
              const plist = data["ProductVO"];
              console.log(data); 
              console.log("2번 clist : " + clist); 
              console.log(clist); 
              console.log(clist[0]);
              console.log("5번 clist[1] : " + clist[0]);
			  console.log("6번 clist[1].cnto : " + clist[0].cnto);
			  console.log("7번 data['ProductVO'] : " + data["ProductVO"]);
   			  console.log("8번 data['ProductVO'][0] : " + data["ProductVO"][0]);
   			  console.log("9번 data['ProductVO'][0].pcode : " + data["ProductVO"][0].pcode);
   			  console.log("10번 data['CartVO'][0].cnto : " + data["CartVO"][0].cnto);
   			  
              console.log("plist : " + plist);
              console.log(plist); 
            
            // 데이터 넣기 전 공백으로 초기화 
            $("#noticeList").html("");
            
            // CartVO에서 원하는 값을 넣을 배열 선언
            var cntoList = [];
            var pcntList = [];
            
             $.each(clist, function(index, item){
                console.log("item :" + item);
            	console.log("item.cnto :" + item.cnto);
            	console.log("item.pcnt :" + item.pcnt);
            	
            	cntoList.push(item.cnto);
            	pcntList.push(item.pcnt);
            }) 
			console.log("장바구니 번호 cntoList : " + cntoList);
 			console.log("장바구니 갯수 pcntList : " + pcntList);
            
            var result = "";
            var num = 1;
            $.each(plist, function(index, item){
	             result += "<tr>";
	             result += "<td> <input type='checkbox' id='cntoId' name='cnto' value='"+cntoList[index]+"'/> </td>";
	           	 result += "<td> <p>"+item.pname+"</p> </td>";
	           	 result += "<input type='hidden' name='pname' value='"+item.pname+"'/>";
	           	 result += "<td> <p>"+item.pprice+"</p> </td>";
	           	 result += "<input type='hidden' name='pprice' value='"+item.pprice+"'/>";
           		 result += "<td> <input type='number' name='pcnt' min='1' max='10' value='"+pcntList[index]+"'/> <button type='button' class='pageBtn' id='pcntUpdate'>옵션변경</button> </td>";
	           	 result += "<td> <p>"+item.pdiscount+"</p> </td>";
	           	 result += "<input type='hidden' name='pdiscount' value='"+item.pdiscount+"'/>";
	           	 result += "<td> <p style='color:#e71c2b'>"+((item.pprice - item.pdiscount) * pcntList[index])+"</p> </td>";
	           	 result += "<input type='hidden' name='realPrice' value='"+((item.pprice - item.pdiscount) * pcntList[index])+"'/>";
           	 	 result += "<td> <button type='button' class='submitButtonType' value='"+(index+1)+"'>바로구매</input> </td>";
	           	 result += "<input type='hidden' name='orderBtn' value='"+(index+1)+"'/>";
	             result += "</tr>";
	             console.log("index :" + index);
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
      
      function pcntUpdate() {
          console.log(">> pcntUpdate() 실행~~~");

      }
     
      
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
      
      function getMainMenu() {
    	  console.log(">> getMainMenu() 실행~~~");
          location.href = "mainMenu.jsp"; 
      }
      
      function cartSubmit() {
    	  console.log(">> cartSubmit() 실행~~~");
		  
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
        <div class="locationArea">
          <h1>장바구니</h1>
          <hr />
        </div >
        <div class="cartMemberInfoArea">
	        <ul class="cartMemberinfo"> 
		        <li>홍길동님의 혜택정보</li>
		        <li>쿠폰 : 1장</li>
		        <li>포인트 : 1000p</li>
	        </ul>
        </div>
        <div id="bitContentArea">
          <div id="mainArea" style="margin-bottom:100px;">
            <div class="mainContent">
	            <form action="cartOrder" method="get" id="frm" onsubmit="cartSubmit">
	            	<input type="checkbox" id="checkall"> 전체 선택
	            	<button type="button" id="selectDelete" class="submitButtonType">선택 삭제</button>
	            	
              <table class="tableContent marginTop">
                <thead>
                  <tr>
                  	<th></th>
                    <th>상품명</th>
                    <th>판매가</th>
                    <th>수량</th>
                    <th>할인금액</th>
                    <th>합계</th>
                    <th>선택</th>
                  </tr>
                </thead>
                <tbody id="noticeList">
                </tbody>
                <tfoot id="pageBlock">
                </tfoot>
              </table>
              <div class="cartContentBtnArea">
              	<ul class="cartContentBnUl">
	              <li class="cartContentBtn">
	              <button type="button" class="pageBtn" id="goToShoppingBtn">계속 쇼핑하기</button>
	              </li>
	        	  <li class="cartContentBtn">
	              <button type="button" id="orderAllsubmitBtn" class="submitButtonType">주문하기</button>
	              </li>
	            </ul>
              </div>
              <input type="hidden" id="buttonSwitch" name="switchBtn"/>
              </form>  
            </div>
          </div>
          <hr style="margin-left:40px;"/>
          <div style="margin-left:100px">
          <h3>유의사항</h3>
			<p>한 번에 주문 가능한 최대 상품 종류는 10개입니다.</p>
			<p>담긴 상품 종류(옵션단위)는 10개까지만 보여집니다.</p>
			<p>담긴 상품 종류가 10개 초과되면 가장 예전에 담았던 상품 순서대로 비노출 됩니다.</p>
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
        