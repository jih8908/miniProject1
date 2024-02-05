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
	height: 300px;
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

#toy-list {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
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

.toy_img {
	float: left;
	line-height: 200px;
	font-size: 20px;
}

header a {
	color: #000;
	text-decoration: none;
	margin: 0 30px;
}

header {
	color: #000;
}

header img {
	width: 200px;
	height: 100px;
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

.logOut {
	position: absolute;
	top: 10px;
	right: 80px;
}

.myPage {
	position: absolute;
	top: 10px;
	right: 160px;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles.css">
<title>메뉴 홈페이지</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String userid = request.getParameter("userid");
	String sql = "SELECT * FROM YU_USER " + "WHERE USERID = '" + userid + "'";	
	ResultSet rs = stmt.executeQuery(sql);//리턴값 받을때 사용, SELECT 일때만 사용
	rs.next();	
	%>
	
	<header>
		<div class = "logOut">
			<form name="logOut" action="main.jsp">
				<input type="submit" value="로그아웃">
			</form>
		</div>
		<div class = "myPage">
			<form name="myPage" action="3_user_login.jsp">
				<input type="submit" value="마이페이지">
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
					<a>이용 안내</a>
				</div>
			</div>
			|
			<div class="action">
				<a href="#my-page">소식안내</a>
				<div class="menu">
					<a>공지사항</a>
					<a>게시판</a>
				</div>
			</div>

		</h1>
	</header>

	<section id="introduction">
		<div class="rent_toy_list">
			<div class="toy_img">
			
					<a href="menu_infoYorisa.jsp">
    				<img src="../toy_image/돌리고올리고요리사.JPG" width="500px" height="300px" border="0">돌리고올리고요리사
					</a>
					
					<a href="menu_jong_car.jsp"><img src=../toy_image/릴라코중장비장난감미니자동차.JPG
					 width="400px" height="300px"
					border="0">릴라코중장비장난감자동차</a> 
					
					
					<a href="menu_cake.jsp"><img
					src="../toy_image/멜로드회전목마케이크.JPG" width="400px" height="300px"
					border="0">멜로디회전목마케이크</a> 
					
					
					<a href="menu_pororo_car.jsp"><img
					src="../toy_image/뽀로로빠방스쿨버스.JPG" width="400px" height="300px"
					border="0">뽀로로빠방스쿨버스</a> 
					
					
					<a href="menu_crong.jsp"><img
					src="../toy_image/크롱멜로디양치놀이.JPG" width="400px" height="300px"
					border="0">크롱멜로디양치놀이</a> 
					
					
					<a href="menu_koreanPad.jsp"><img
					src="../toy_image/뽀로로한글코딩패드.JPG" width="400px" height="300px"
					border="0">뽀로로한글코딩패드</a>
			</div>
		</div>
	</section>

	<footer>
		<p>&copy; 2024 Toy Rental Service</p>
	</footer>

	
	<script>
/*         document.addEventListener("DOMContentLoaded", function () {
            // 목차 클릭 시 해당 섹션으로 스크롤되는 동작 추가
            document.querySelectorAll('header a').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();

                    const targetSectionId = this.getAttribute('href').substring(1);
                    const targetSection = document.getElementById(targetSectionId);

                    window.scrollTo({
                        top: targetSection.offsetTop,
                        behavior: 'smooth'
                    });
                });
            });
        });*/
        
      /*   function submitForm() {
            // info.jsp 파일의 경로를 확인하고 필요에 따라 수정
            const infoPageURL = 'info.jsp';

            // 폼을 생성하고, 해당 폼을 서버로 전송
            const form = document.createElement('form');
            form.method = 'post';
            form.action = infoPageURL;

            // 폼을 현재 페이지에 추가하고, 폼을 제출
            document.body.appendChild(form);
            form.submit();
        } */
    </script>
</body>

</html>