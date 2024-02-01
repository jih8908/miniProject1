<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>
body {
	
}

header {
    background-image: url('../toy_image/image_16720.png');
    width : 100%;
    height : 300px;
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

header{
	color : #000;
}
header img {
	width: 200px;
	height: 100px;
}

</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles.css">
<title>장난감 대여 홈페이지1</title>
</head>

<body>
	<header>
	<div><form name="login" action="3_user_login.jsp"><input type="submit" value="로그인"></form></div>
	<div><form name="join" action="1_user_join.jsp"><input type="submit" value="회원가입"></form></div>
		<h1>
			<img src="../toy_image/top_logo.png" alt="도담도담이미지"> 
			<a href="#introduction">소개</a> | <a href="#rental-items">대여용품</a> | <a href="#my-page">이용방법</a>| <a href="#my-page">마이페이지</a>
		</h1>
	</header>

	<section id="introduction">
		<div class="rent_toy_list">
			<div class="toy_img">
				<a href="#"><img src="../toy_image/돌리고올리고요리사.JPG" width="400px" height="300px" border="0">돌리고올리고요리사</a> 
				<a href="#"><img src="../toy_image/릴라코중장비장난감미니자동차.JPG" width="400px" height="300px" border="0">릴라코중장비장난감자동차</a> 
				<a href="#"><img
					src="../toy_image/멜로드회전목마케이크.JPG" width="400px" height="300px"
					border="0">멜로디회전목마케이크</a> 
				<a href="#"><img
					src="../toy_image/뽀로로빠방스쿨버스.JPG" width="400px" height="300px"
					border="0">뽀로로빠방스쿨버스</a> 
				<a href="#"><img
					src="../toy_image/크롱멜로디양치놀이.JPG" width="400px" height="300px"
					border="0">크롱멜로디양치놀이</a> 
				<a href="#"><img
					src="../toy_image/뽀로로한글코딩패드.JPG" width="400px" height="300px"
					border="0">뽀로로한글코딩패드</a>
			</div>
		</div>
	</section>

	<section id="my-page">
		<h2>마이페이지</h2>
		  <a href="#">Menu1</a>
	</section>

	<footer>
		<p>&copy; 2024 Toy Rental Service</p>
	</footer>

	<script src="script.js"></script>
	<script>
        document.addEventListener("DOMContentLoaded", function () {
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
        });
    </script>
</body>

</html>