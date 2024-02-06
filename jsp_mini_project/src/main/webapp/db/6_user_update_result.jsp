<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap')
	;

body {
	
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
	String pwd = request.getParameter("password");
	String name = request.getParameter("name"); 
	String gender = request.getParameter("gender"); //객체 가져옴
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	String pwdStr = ""; //객체 생성
	if(pwd != null && !pwd.equals("")){ //패스워드가 빈값이고 "" 내용이 아니면 
		pwdStr = "PASSWORD = '" + pwd + "',"; //
	}
	
	String sql = "UPDATE YU_USER SET " //T "=> 띄어쓰기 안하면 하나의 테이블로 인식
				+ pwdStr //pwd 빈값일때 수정 안하기 
			 // + "PWD = '" + pwd + "'," 
				+ "NAME = '" + name + "',"
				+ "GENDER = '" + gender + "',"
				+ "PHONE = '" + phone + "',"
				+ "ADDRESS = '" + address + "' "
				+ "WHERE USERID = '" + userid + "'";	
	
  	stmt.executeUpdate(sql);//db에 업데이트
	out.println("수정되었습니다"); 

	//out.println(sql);
	%>
		
</body>
</html>