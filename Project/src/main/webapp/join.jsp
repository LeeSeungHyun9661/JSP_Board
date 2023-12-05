<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--부트스트랩은 어떤device로 접속하더라도 해상도에 맞게 알아서 설정되는 탬플릿이다. -->
<meta name="viewport" content="width=device-width" , inital-scale="1">
<!--스타일시트를 참조, 주소는 css안에 부트스트랩.css-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<!-- 네비게이션 구현 네비게이션이라는 것은 하나의 웹사이트의 전반적인 구성을 보여주는 역할 -->
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
	            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
	            <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- 하나의 컨테이너처럼 감싸주는 역할 -->
	
	<div class="container">	
		<h2>회원가입 화면</h2>
		<form action="joinAction.jsp" method="post">
			<div class="mb-3">
				<label class="form-label" for="id">아이디</label> 
				<input class="form-control" type="text" name="id" id="id"  maxlength="20"/>
			</div>
			<div class="mb-3">
				<label class="form-label" for="pwd">비밀번호</label> 
				<input class="form-control" type="password" name="password" id="passwrod" maxlength="20"/>
			</div>
			<div class="mb-3">
				<label class="form-label" for="name">이름</label> 
				<input class="form-control" type="text" name="name" id="name" maxlength="20"/>
			</div>
			
			<div class="mb-3">
				<label class="form-label" for="name">이메일</label> 
				<input class="form-control" type="text" name="email" id="email" maxlength="50"/>
			</div>
			<div class="btn-group" data-toggle="buttons">
				<label class="btn btn-primary active">
					<input type="radio" name="gender" autocomplete="off" value="M" checked>남자 
				</label>
				<label class="btn btn-primary">
					<input type="radio" name="gender" autocomplete="off" value="F" checked>여자 
				</label>
			</div>
			
			<button class="btn btn-outline-primary btn-sm" type="submit">회원가입</button>
		</form>
	</div>
	<!-- 애니메이션을 담당하게 될 자바스크립트 참조 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!--js폴더 안에있는 bootstrap.js를 사용선언  -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>