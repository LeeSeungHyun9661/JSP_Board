<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--Script문장을 실행 할 수 있도록 PrintWriter 라이브러리를 불러온다. -->
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 반응형 웹에 사용하는 메타태그 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	//로그인이 된 사람들은 로그인정보를 담을 수 있도록한다.
	String id = null;
	//만약에 현재 세션이 존재한다면
	if (session.getAttribute("id") != null) {
		//그 아이디값을 받아서 userID인스턴스로 관리할 수 있도록 한다.
		id = (String) session.getAttribute("id");
	}
	%>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="main.jsp">메인</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="bbs.jsp">게시판</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            접속하기
	          </a>
	          <ul class="dropdown-menu">
	          	<%
				if (id == null) {
				%>
	            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
	            <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
	            <%
				// 로그인이 되어있는 사람만 볼수 있는 화면
				} else {
				%>
				<li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
				<%
				}
				%>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>