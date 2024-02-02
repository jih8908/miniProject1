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
	String userId = request.getParameter("USERID");
	String pwd = request.getParameter("PASSWORD");
	String name = request.getParameter("NAME"); 
	String gender = request.getParameter("GENDER"); //객체 가져옴
	String phone = request.getParameter("PHONE");
	String address = request.getParameter("ADDRESS");
	
	String pwdStr = ""; //객체 생성
	if(pwd != null && !pwd.equals("")){ //패스워드가 빈값이고 "" 내용이 아니면 
		pwdStr = "PWD = '" + pwd + "',"; //
	}
	
	String sql = "UPDATE YU_USER SET " //T "=> 띄어쓰기 안하면 하나의 테이블로 인식
				+ pwdStr //pwd 빈값일때 수정 안하기 
			 // + "PWD = '" + pwd + "'," 
				+ "NAME = '" + name + "',"
				+ "GENDER = '" + gender + "',"
				+ "PHONE = '" + phone + "',"
				+ "ADDRESS = '" + address + "' "
				+ "WHERE USERID = '" + userId + "'";	
				
	
  	stmt.executeUpdate(sql);//db에 업데이트
	out.println("수정되었습니다"); 

	// out.println(sql);
	%>
		
</body>
</html>