<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap')
	;

body {
	margin: 0;
	font-family: 'Single Day', sans-serif;
	font-size: 25px;
	background-image: url('../toy_image/image_16720.png');
}

form input[type="text"],
form input[type="password"] {
    width: 200px; /* 원하는 너비로 조정 */
    padding: 5px;
}
</style>
</head>
<body>
	<%
	if (request.isRequestedSessionIdValid()) {
		/* out.println("세션있다"); */
		session.removeAttribute("userid");
		session.removeAttribute("name");
		session.removeAttribute("status");
		//세션 하나씩 지우기

		session.invalidate();
		//세션 한번에 지우기

	} /* else {
		out.println("세션없다");
	} */
	//out.println로 session 있는지 확인
	%>
	<form action="4_user_login_view.jsp" method="post">
		<div>
			아이디 : <input type="text" name="userid">
		</div>
		<div>
			패스워드 : <input type="password" name="password">
		</div>
		<div>
			<input type="submit" value="로그인">
		</div>
	</form>
</body>
</html>
<script>
	document.body.style.backgroundImage = "url('../toy_image/image_16720.png')";
</script>