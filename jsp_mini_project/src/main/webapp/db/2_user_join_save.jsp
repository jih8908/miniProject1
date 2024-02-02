<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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

</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	String address = request.getParameter("address");
	String gender = request.getParameter("gender");

	String sql = "INSERT INTO YU_USER(USERID, PASSWORD, NAME, PHONE, ADDRESS, GENDER) "//=> 띄고 " 작성, input값을 DB에 저장할때 작성해야되는 쿼리문
			+ "VALUES('" + userid + "','" + password + "','" + name + "','" + phone + "','" + address + "','" + gender
			+ "')";
	stmt.executeUpdate(sql);//업데이트(정보추가) 해야되는 sql

	//String id = request.getParameter("id");
	//String sql = "SELECT * FROM" + " TBL_MEMBER WHERE USERID = '" + id + "'"; 아이디 찾을때
	%>
	<div>회원가입이 되었습니다</div>
	 <%
        // 3초 후에 다른 페이지로 이동
        response.setHeader("Refresh", "2;url=main.jsp");
    %>
</body>
</html>
<script>
	document.body.style.backgroundImage = "url('../toy_image/image_16720.png')";

	
</script>