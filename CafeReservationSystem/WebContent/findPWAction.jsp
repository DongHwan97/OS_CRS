<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.User"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userBirth" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다온 카페</title>
</head>
<body>
	<%
		

		UserDAO userDAO = new UserDAO();
		String result = userDAO.findPW(user.getUserName(),user.getUserID(),user.getUserBirth());
		
		if (result == "x") {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디가 존재하지 않거나 데이터베이스 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} 
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('당신의 PW는 " + result + " 입니다!!!')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}

	%>
</body>
</html>