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
    <title>Document</title>
    <link rel="stylesheet" href="./styles.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        console.log("notice 실행");
        
        var link = document.location.href;
        console.log("link : " + link );
        
        getJSONNotice();
        
        $("#noticeBtn").click(getJSONNotice);
        $("#csCenterBtn").click(getJSONNotice);
        $("#faqBtn").click(getJSONFaq);
        $("#inquireBtn").click(getJSONInquire);
       
      });

      function getJSONNotice() {
        console.log(">> getJSONNotice() 실행~~~");

        $.ajax("csController?category=notice", {
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
            
            var page = "";
            page += "<tr>"
            page += "<td colspan='3'>"
            
            // 이전으로에 대한 사용여부 처리
            if(plist[0].Begin == 1){
         	  page += "<button type='button' class='pageBtn paging' disabled>이전으로</button>"
            }else {
        	  page += "<button type='button' class='pageBtn paging' onclick=javascript:location.href=inquire.jsp?cPage="+(cPagePrev)+">이전으로</button>"
            }
            
            // 블록내에 표시할 페이지 태그 작성(시작페이지~끝페이지)
            for(var i = plist[0].BeginPage; i <= plist[0].EndPage; i++){
          	  if(i == plist[0].NowPage){
      	  			page += "<button type='button' class='pageBtn pageNow paging'>"+i+"</button>"
          	  }else {
          		  	page += "<button type='button' class='pageBtn paging' onclick=javascript:location.href=inquire.jsp?cPage="+i+">"+i+"</button>"
          	  }
            }
            // [다음으로]에 대한 사용여부 처리
            if(plist[0].EndPage <= plist[0].TotalPage){
          	  page += "<button type='button' class='pageBtn paging' onclick=javascript:location.href=notice.jsp?cPage="+(cPageNext)+">다음으로</button>"
            }else if(plist[0].EndPage >= plist[0].TotalPage){
          	  page += "<button type='button' class='pageBtn paging' disabled>다음으로</button>"
            }
            page +="</ol>"
            page +="</td>"
            page +="</tr>"
            
            console.log("page : " + page);
            $("#pageBlock").html(page);
            
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
              <button class="utilMenuOne">장바구니</button>
            </li>
            <li>
              <button class="utilMenuOne" id="csCenterBtn">고객센터</button>
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
                <button class="leftMenuBtn" id="noticeBtn">
                  공지사항
                </button>
                <button class="leftMenuBtn" id="faqBtn">
                  자주 묻는 질문
                </button>
                <button
                  class="leftMenuBtn"
                  id="inquireBtn">
                  나의 문의 내역
                </button>
              </ul>
            </div>
          </div>
          <div id="mainArea">
            <div class="mainContent">
              <table class="tableContent">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                  </tr>
                </thead>
                <tbody id="noticeList">
                </tbody>
                <tfoot id="pageBlock">
                </tfoot>
              </table>
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
        