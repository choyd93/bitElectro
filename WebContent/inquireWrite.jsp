<%@page import="com.bc.model.vo.MemberVO"%>
<%@page import="com.bc.model.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    
<%
request.setCharacterEncoding("UTF-8");

/* String mid = request.getParameter("mid"); */
// 테스트용
String mid = "test1";
MemberVO mvo = MemberDAO.getMemberUserInfo(mid);

System.out.println("mvo : " + mvo);

pageContext.setAttribute("mvo", mvo);

%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>1대1 문의 | bitElectro</title>
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

           $("#confirm").click(function(){
        	   console.log("confirm 실행");
        	   
		      if($("#mjumun").val().trim() == ""){
		      	alert("주문번호가 공란입니다.");
		      	$("#mjumun").focus();
		      	return;
		      }
		
		      if($("#csubject").val().trim() == ""){
		      	alert("제목이 공란입니다.");
		      	$("#csubject").focus();
		      	return;
		      }
		
		      if($("#ccontent").val().trim() == ""){
		      	alert("내용이 공란입니다.");
		      	$("#ccontent").focus();
		      	return;
		      }
		
		      if(confirm("위 정보로 등록하시겠습니까?")){
		      	$("#frm1").submit();
		      }else{
		      	$("#frm1 input").val("");
		      	$("#mid").focus();
		      	return;
		      }
           });
          });
         function getJSONNotice() {
             console.log(">> getJSONNotice() 실행~~~");
             location.href = "notice.jsp";
         }

         function getJSONFaq() {
           	console.log(">> getJSONFaq() 실행~~~");
               location.href = "faq.jsp";
         }

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
        <div class="locationArea">
          <h1>1대1 문의하기</h1>
          <hr />
        </div>
        <div id="bitContentArea">
          <div class="leftArea">
            <div class="leftMenu">
              <ul class="leftMenuBar">
                <button class="leftMenuTitle">고객센터</button>
                <button class="leftMenuBtn" id="noticeBtn">
                  공지사항
                </button>
                <button class="leftMenuBtn" id="faqBtn">
                  자주 묻는 질문
                </button>
                <button
                  class="leftMenuBtn" id="inquireBtn">
                  나의 문의 내역
                </button>
              </ul>
            </div>
          </div>
          <div id="mainArea">
            <div class="mainContent">
              <form action="inquireResist" method="post" id="frm1">
                <table class="tableContentInquireWrite">
                  <tbody>
                    <tr>
                      <td>아이디</td>
                      <td>
                        <input
                          class="pageBtn"
                          type="text"
                          name="mid"
                          id="mid"
                          value=${mvo.mid }
                          readonly
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>주문번호</td>
                      <td>
                        <input
                          class="pageBtn"
                          type="text"
                          name="mjumun"
                          id="mjumun"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>제목</td>
                      <td>
                        <input
                          class="pageBtn"
                          type="text"
                          name="csubject"
                          id="csubject"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>문의 내용</td>
                      <td>
                        <textarea
                          class="pageBtn"
                          rows="5"
                          cols="45"
                          name="ccontent"
                          id="ccontent"
                        >
                        </textarea>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <div class="mainContentBottom">
                  <button
                    type="button"
                    class="pageBtn mainPageBtn"
                    id="confirm">
                    확인
                  </button>
                  <button
                 	type="button"
                    class="pageBtn mainPageBtn"
                    onclick="javascript:history.back()">
                    취소
                  </button>
                </div>
              </form>
            </div>
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
  </body>
</html>