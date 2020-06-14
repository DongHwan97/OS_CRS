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
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd;">
				<thead>
					<tr>
						<th
							style="background-color: #000000; color: #ffffff; text-align: center;">커피</th>
						<th
							style="background-color: #000000; color: #ffffff; text-align: center;">음료</th>
						<th
							style="background-color: #000000; color: #ffffff; text-align: center;">디저트</th>
					</tr>
				</thead>
				<tbody>
			</table>
		</div>
	</div>
	<table width="1250" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="250">
				<div align="center">
					<img src="images/americano.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/strawberry.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/cake.jpg" width="250" height="400">
				</div>
			</td>
		</tr>
		<tr>
			<td width="250">
				<div align="center"><h4>아메리카노</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>딸기에이드</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>케이크</h4></div>
			</td>
		</tr>
		<table width="1250" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="250">
				<div align="center">
					<img src="images/caramel.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/lemon.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/bread.jpg" width="250" height="400">
				</div>
			</td>
		</tr>
		<tr>
			<td width="250">
				<div align="center"><h4>카라멜마끼야또</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>레몬에이드</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>허니브레드</h4></div>
			</td>
		</tr><table width="1250" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="250">
				<div align="center">
					<img src="images/greentea.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/banana.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/sandwich.jpg" width="250" height="400">
				</div>
			</td>
		</tr>
		<tr>
			<td width="250">
				<div align="center"><h4>녹차라떼</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>바나나에이드</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>샌드위치</h4></div>
			</td>
		</tr><table width="1250" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="250">
				<div align="center">
					<img src="images/latte.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/icetea.jpg" width="250" height="400">
				</div>
			</td>
			<td width="250">
				<div align="center">
					<img src="images/cookie.jpeg" width="250" height="400">
				</div>
			</td>
		</tr>
		<tr>
			<td width="250">
				<div align="center"><h4>카페라떼</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>아이스티</h4></div>
			</td>
			<td width="250">
				<div align="center"><h4>초코쿠키</h4></div>
			</td>
		</tr>
		
	</table>
	<table width="1250" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="250">
				<div align="center"></div>
			</td>
		</tr>
	</table>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>