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
	String userid = request.getParameter("id");//입력 받은 id값 가져와서
	//out.print(userid);
	String sql = "UPDATE TBL_MEMBER SET "
			 	+ "CNT = 0"
				+"WHERE USERID = '"+ userid + "'"; //쿼리문 작성	
	stmt.executeUpdate(sql);//쿼리문 아래 stmt 꼭 작성
	%>

</body>
</html>
<script>
	alert("초기화 됨");
	location.href="user_list.jsp";//다시 리스트로 이동
</script>