<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/crs.css">
<title>다온 카페</title>
</head>
<link rel="shortcut icon" type="imgge.x-icon" href="images/favicon.png">
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="jumbotron"
			style="background-image: url('images/coffee.jpg'); background-size: cover; text-shadow: black 0.2em 0.2em 0.2em; color: white;">
			<h1 class="text-center">다온Cafe에 오신 걸 환영합니다</h1>
			<p class="text-center">이 사이트는 오픈소스프로젝트를 위해 만들어진 사이트입니다.</p>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.JPG">
				</div>
				<div class="item">
					<img src="images/2.JPG">
				</div>
				<div class="item">
					<img src="images/3.JPG">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>