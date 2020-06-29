<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다온 카페</title>
</head>
<body>
	<%session.invalidate();%>
	<script>alert('로그아웃되셨습니다.')</script>
	<script>location.href = "main.jsp";</script>
</body>
</html>