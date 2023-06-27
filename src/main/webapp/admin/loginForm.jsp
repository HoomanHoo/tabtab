<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="asetting.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>TabTab</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  <script src="${path}script_admin.js"></script>
  <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js" 
    integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
  <script src="/tabtab/misc/snsLogin.js" defer></script>
</head>
<body>
  <main>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
      <div class="container">
        <c:import url="/template/header.jsp"/>
      </div>
    </nav>
    <div class="row" style="margin-right:0; height:82vh">
      <div class="col"></div>
      <div class="col text-center">
        <c:if test="${sessionScope.mem_code eq null}">
          <!-- 세션이 없음>로그인X -->
          <form method="post" action="adminloginpro.net" name="mainform" onsubmit="return maincheck()" style="text-align:center">
            <div class="mx-auto" style="max-width: 400px;">
              <table class="table">
                <tr>
                  <th colspan="2"> ${msg_main}</th><!-- 안내메세지 -->
                </tr>
                <tr>
                  <th> ${str_email}</th><!-- 똑같이 입력할 수 없으니 방 하나에 써주고 나중에 그 방안만 고치면 다 고쳐지게 -->
                  <td> <input class="form-control" type="text" name="email" maxlength="30" autofocus> </td>
                </tr>
                <tr>
                  <th> ${str_passwd}</th>
                  <td> <input class="form-control" type="password" name="password" maxlength="30"></td>
                </tr>
                <tr>
                  <th colspan="2" style="text-align:center">
                    <input class="btn btn-outline-secondary" type="submit" value="${btn_login}">
                    <input class="btn btn-outline-secondary" type="button" value="${btn_input}"
                      onclick="location='admininputform.net'"><!-- 가입누르면 넘어가는데 -->
                  </th>
                </tr>
                <tr>
                  <td colspan=2 style="text-align:center">
                    <button id="kakaoLogin" type="button" style="border:none">
                       <img src="/tabtab/misc/kakao.png" alt="카카오 로그인" >
                    </button>
                  </td>
                </tr>
              </table>
            </div>
          </form>
        </c:if>
        <c:if test="${sessionScope.mem_code ne null}">
          <c:redirect url="orderrequest.net"/>
        </c:if>
      </div>
      <div class="col"></div>
    </div>
  </main>
</body>
</html>