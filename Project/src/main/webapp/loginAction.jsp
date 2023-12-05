<%@ page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" /> 
<jsp:setProperty name = "user" property = "id" />
<jsp:setProperty name = "user" property = "password" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Web Site</title>
</head>
<body>
	<%
		String id = null;
		if(session.getAttribute("id") != null){
			id = (String) session.getAttribute("id");
		}
		if (id != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
				
		//이제 넘어온 userID와 PW를 꺼내서 사용해보자. UserDAO인스턴스 생성
		UserDAO userDAO = new UserDAO();
		//UserDAO 에서 만들었던 public int login(userID,userPW)를 넣어주는 것을 변수 result에 담는다.
		int result = userDAO.login(user.getId(), user.getPassword());
		//login함수에서 return값이 1이라면
		if (result == 1){
			session.setAttribute("id", user.getId());
			//하나의 스크립트 문장을 넣어줄 수있도록 한다.
			PrintWriter script = response.getWriter();
			//println으로 접근해서 스크립트 문장을 유동적으로 실행 할 수 있게한다.
			script.println("<script>");
			//메인 페이지로 넘겨주는 선언을 해주고,
			script.println("location.href = 'main.jsp'");
			//스크립트 태그를 닫아준다.
			script.println("</script>");
		}
		//비밀번호가 틀릴때
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			//웹페이지에 팝업을 띄워준다.
			script.println("alert('비밀번호가 틀립니다.');");
			//이 전 페이지로 사용자를 다시 돌려보내는 함수이다.
			script.println("history.back()");
			script.println("</script>");
		}
		//아이디가 없을때
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.');");
			script.println("history.back()");
			script.println("</script>");
		}
		//db연결 ㅈ같이 됬을때
		else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.');");
			script.println("history.back()");
			script.println("</script>");
		}
		%>
</body>
</html>