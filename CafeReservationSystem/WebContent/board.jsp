<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>다온 카페</title>
</head>
<link rel="shortcut icon" type="imgge.x-icon" href="images/favicon.png">
<body>
	<%
		int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #000000; color: #ffffff; text-align: center;">번호</th>
						<th style="background-color: #000000; color: #ffffff; text-align: center;">제목</th>
						<th style="background-color: #000000; color: #ffffff; text-align: center;">작성자</th>
						<th style="background-color: #000000; color: #ffffff; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BoardDAO boardDAO = new BoardDAO();
					ArrayList<Board> list = boardDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBoardID()%></td>
						<td><a href="view.jsp?boardID=<%=list.get(i).getBoardID()%>"><%=list.get(i).getBoardTitle()%></a></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBoardDate().substring(0, 11) + list.get(i).getBoardDate().substring(11, 13) + "시"+ list.get(i).getBoardDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if (pageNumber != 1) {
			%>
			<a href="board.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">Prev</a>
			<%
				}
			if (boardDAO.nextPage(pageNumber+1)) {
			%>
			<a href="board.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">Next</a>
			<%
				}
			%>
			<a href="write.jsp" class="btn btn-primary pull-right" style="background-color: #000000; color: #ffffff">글쓰기</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>