<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.bc.model.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.model.common.Paging"%>
<%@page import="com.bc.model.dao.NoticeDAO"%>
    
<%
request.setCharacterEncoding("UTF-8");

System.out.println("------ NoticeOne dao selectOne 처리 전 --------");

int ccategory = Integer.parseInt(request.getParameter("ccategory"));
int rnum = Integer.parseInt(request.getParameter("rnum"));
int pageNum = Integer.parseInt(request.getParameter("page"));

int begin = 0;
int end = 0;

if(pageNum == 1) {
	begin = 1;
	end = 5;
} else if(pageNum > 1){
	begin = 5 * (pageNum - 1) + 1;
	end = 5 * pageNum;
}

System.out.println("ccategory : " + ccategory);
System.out.println("rnum : " + rnum);
System.out.println("begin : " + begin);
System.out.println("end : " + end);

NoticeVO nvo = NoticeDAO.selectOne(ccategory, rnum, begin, end);

System.out.println("------ NoticeOne dao selectOne 처리 후 --------");

System.out.println("nvo : " + nvo);
System.out.println("nvo.getCcategory : " + nvo.getCcategory());
System.out.println("nvo.getRnum : " + nvo.getRnum());
System.out.println("pageNum : " + pageNum);

pageContext.setAttribute("nvo", nvo);
pageContext.setAttribute("pageNum", pageNum);

	%>
    <html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./styles.css" />
    <script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
      $(document).ready(function () {
        console.log("noticeOne 실행");
        
        $("#noticeBtn").click(getJSONNotice);
        $("#csCenterBtn").click(getJSONNotice);
        $("#faqBtn").click(getJSONFaq);
        $("#inquireBtn").click(getJSONInquire);
      })

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
      
      /* // 삭제하기 버튼 함수
      function deleteOne() {
    	  let answer = confirm("작성한 문의내역을 삭제하시겠습니까?");
    		if(answer){
          location.href='inquireDelete.jsp?ccategory=${nvo.ccategory }&page=${pageNum }&rnum=${nvo.rnum }'
   		  }
      }
      
      function modifyOne() {
    	  let answer = confirm("작성한 문의내역을 수정하시겠습니까?");
  		if(answer){
          location.href='inquireUpdate.jsp?ccategory=${nvo.ccategory }&page=${pageNum }&rnum=${nvo.rnum }'
  		}
    } */

    </script>
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
                <button class="pageBtn btnOne" onclick="javascript:history.back()">목록으로</button>
               
                <button type="button" class="mainAreaHeaderTopRight pageBtn btnOne" 
                onclick="javascript:location.href='inquireUpdate.jsp?ccategory=${nvo.ccategory }&page=${pageNum }&rnum=${nvo.rnum }'">
                  수정하기
                </button>
                <button type="button" class="mainAreaHeaderTopRight pageBtn btnOne" 
                onclick="javascript:location.href='inquireDelete.jsp?ccategory=${nvo.ccategory }&page=${pageNum }&rnum=${nvo.rnum }'">
                  삭제하기
                </button>
              </div>
              <div class="mainAreaHeaderMiddle">
                <h2>${nvo.csubject }</h2>
              </div>
              <div class="mainAreaHeaderMiddleLeft">
                <span>${nvo.crdate }</span>
              </div>
            </div>
            <div class="mainContentWriteArea">
            <p>${nvo.ccontent }</p>
            </div>
          </div>
          <div class="mainContentWriteAreaBottom">
            <button class="mainContentWriteBottomBtn" onclick="javascript:history.back()">목록으로</button>
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
    	  location.href = "notice.jsp";
      };

      const inquireGo = () => {
        location.href = "inquire.jsp";
      };

      const faqGo = () => {
        location.href = "faq.jsp";
      };
      
      /* const backFt = () => {
    	  history.back();
      } */
     
    </script>
  </body>
</html>