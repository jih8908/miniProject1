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
	String id = request.getParameter("userid");
	String sql 
		= "DELETE FROM YU_USER " 
		+ "WHERE USERID = '" + id + "'";  
	
	int cnt = stmt.executeUpdate(sql);
	//타입이 int인 이유 : 몇개의 레코드에 영향을 줬냐
	if(cnt > 0){
		out.println("삭제완료");
	} else {
		out.println("다시 시도해주세요");
	}
	%>
</body>
</html>