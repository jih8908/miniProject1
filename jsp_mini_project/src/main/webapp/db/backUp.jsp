<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap')
	;

body {
	margin: 0;
	font-family: 'Single Day', sans-serif;
}

header {
	background-image: url('../toy_image/image_16720.png');
	width: 100%;
	height: 100vh;
	background-color: #333;
	color: white;
	text-align: center;
	background-size: cover;
	background-position: center;
	padding: 1em;
}

footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 1em;
}

.toy-card {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 1em;
	margin: 1em;
	width: 300px;
}

footer {
	position: fixed;
	bottom: 0;
	width: 100%;
}

header a {
	color: #000;
	text-decoration: none;
	margin: 0 30px;
}

header {
	color: #000;
	position: relative;
}

header img {
	width: 200px;
	height: 100px;
}

.login {
	position: absolute;
	top: 10px;
	right: 30px;
}

.join {
	position: absolute;
	top: 10px;
	right: 100px;
}

.menu {
	background-color: #f9f9f9;
	width: 350px;
	padding: 10px;
	box-shadow: 1px 3px 8px 3px #e6e5e5;
	cursor: pointer;
	display: none;
	position: absolute;
	top: 50px; /* 원하는 위치로 조정 */
	right: 0; /* 원하는 위치로 조정 */
	font-size: 30px;
}

.menu a:hover {
	background-color: #ccc;
}

.menu a {
	display: block;
	padding: 10px;
}

.action {
	display: inline-block;
	position: relative; /* 부모 요소에 대해 상대 위치 설정 */
	font-size: 50px;
}

.action:hover .menu {
	display: block;
}

</style>
</head>

<body>
	<header>
		<div class="login">
			<form name="login" action="3_user_login.jsp">
				<input type="submit" value="로그인">
			</form>
		</div>
		<div class="join">
			<form name="join" action="1_user_join.jsp">
				<input type="submit" value="회원 가입">
			</form>
		</div>
		<h1>
			<img src="../toy_image/top_logo.png" alt="도담도담이미지">
			<div class="action">
				<a href="#introduction">소개</a>
				<div class="menu">
					<a>장난감월드 연혁</a> <a>장난감 현황</a>
				</div>
			</div>
			|
			<div class="action">
				<a href="#rental-items">대여용품</a>
				<div class="menu">
					<a>12개월 이상</a><a>24개월 이상</a> <a>36개월 이상</a>
				</div>
			</div>
			|
			<div class="action">
				<a href="#my-page">이용방법</a>
				<div class="menu">
					<a>이용 안내</a><a>이용하는 방법</a>
				</div>
			</div>
			|
			<div class="action">
				<a href="#my-page">소식안내</a>
				<div class="menu">
					<a>공지사항</a><a>이달의 장난감</a>
				</div>
			</div>

		</h1>
	</header>

	<footer>
		<p>&copy; 2024 Toy Rental Service</p>
	</footer>

	<script src="script.js"></script>
</body>

</html>