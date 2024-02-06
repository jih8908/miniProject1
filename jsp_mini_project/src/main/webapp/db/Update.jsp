<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String day = request.getParameter("update");
	String id = (String)session.getAttribute("userid");
	
	//String sql = "UPDATE YU_RENTAL_HISTORY SET " //+ "'RENTAL_DATE' + "
	%>

</body>
</html>