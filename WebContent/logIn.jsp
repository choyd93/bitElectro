<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setContentType("text/html;charset=UTF-8");
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8"); // 한글처리 여기서 해줘야한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logIn : bitElectro</title>
    <link rel="stylesheet" href="./styles.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


</head>
<body style="position: relative; background: #f5f6f7;">
    <div id="loginHeader">
      <a href="mainMenu.jsp"><h1 style="font-size:40px; margin: 0px;">bitElectro</h1></a>
    </div>
    <form>
      <div id="loginContainer">
        <div id="loginContent">
          <div class="row_group">
            <div>
              <h3><label class="join" for="id">아이디</label></h3>
              <span class="ps_box">
                <input
                  class="logininput"
                  type="text"
                  id="id"
                  maxlength="20"
                  placeholder="아이디 입력" />
                  <span class="step_url">@###.com</span>
                  </span
              ><br />
              <span class="error"></span>
            </div>
            <div>
              <h3><label class="join" for="password">비밀번호</label></h3>

              <span class="ps_box">
                <input
                  class="logininput"
                  type="password"
                  id="password"
                  placeholder="비밀번호(5~20자리)"
              /></span>
              <span class="error"></span>
            </div>
            
          </div>          
            <div class="btn_area">
              <button type="button" id="btnJoin" class="btn_type btn_primary">
                <span>로그인</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </form>
    <div id="loginFooter">@ bitElectro Corp.</div>
    <script>
	const id = document.querySelector("#id");
	const password = document.querySelector("#password");
	const error = document.querySelectorAll(".error");
	
	// 이벤트 리스너
	id.addEventListener("input", checkId);
	password.addEventListener("input", checkPassword);
	
	
	// 함수 작성
	function checkId() {
	  const korPattern = /[a-zA-Z0-9_-]{5,20}/;
	  if (id.value === "") {
	    error[0].innerHTML = "아이디를 입력해주세요.";
	    error[0].style.color = "red";
	  } else if (!korPattern.test(id.value)) {
	    error[0].innerHTML =
	      "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
	    error[0].style.color = "red";
	  } else if (korPattern.test(id.value)) {
	    error[0].innerHTML = "";
	    error[0].style.color = "red";
	  }
	}
	
	function checkPassword() {
	  const pwPattern = /[a-zA-Z0-9\[\]\{\}\/\(\)\.\?\<\>!@#$%^&*]{8,16}/;
	  if (password.value === "") {
	    error[1].innerHTML = "비밀번호를 입력해주세요.";
	    error[1].style.color = "red";
	  } else if (pwPattern.test(password.value)) {
	    error[1].innerHTML = "";
	  } else if (!pwPattern.test(password.value)) {
	    error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
	    error[1].style.color = "red";
	  }
	}

	function logIn_btn() {
		var form = document.logInForm // 폼 변수에 액션태그 loginForm 연결 (name값에 연결)
		if (!form.mid.value){
			alert("아이디를 입력해주세요");
			return;
		}
		
		if (!form.mpw.value) {
			alert("비밀번호를 입력해주세요");
			return;
		}
		
		form.submit();
	}

</script>
</body>
</html>













<!-- <script>

	function logIn() {
		//alert = "이동합니다.";
		location.href = "logIn_ok.jsp";
		}
	
	function checkLogin() {
		var id = get.ElementById("loginid");
		var pw = get.ElementById("loginpw");
		
		if (id.value == "" || !(id.value.length >= 3 && id.value.length <12)) {
			alert = "아이디를 다시 입력해주세요";
			id.focus(); 
			return false; // 전송(submit)를 막는다.
		}
		
		if (pw.value ="") {
			alert = "비밀번호를 입력하세요";
			return false;
		} else {
			document.FormLogin.onsubmit(); // form 안에 데이터를 action 속성의 주소로 전송해준다.
		}
	}
	
</script> -->