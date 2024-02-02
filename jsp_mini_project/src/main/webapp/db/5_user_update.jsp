<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
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
	String sql = "SELECT * FROM YU_USER " + "WHERE USERID = '" + userid + "'";	
	ResultSet rs = stmt.executeQuery(sql);//리턴값 받을때 사용, SELECT 일때만 사용
	rs.next();//rs객체 가지고 있음	
	%>
	<h3>정보수정</h3>
	<form action="6_user_update_result.jsp">
	<input name="id" value="<%= rs.getString("USERID")%>" hidden>
		<div>
			아이디 : <input type="text" value="<%= rs.getString("userid")%>" disabled>
		</div>
		<div>
			패스워드 : <input type="password" name="password" value="<%= rs.getString("password")%>">
		</div>
		<div>
			이름 : <input type="text" name="name" value="<%= rs.getString("name")%>" disabled>
		</div>		
		<div>성 별 :
			<% if(rs.getString("gender").equals("M")){ %> 
				<label><input type="radio" name="gender" value="남성" checked>남성 </label>
				<label><input type="radio" name="gender" value="여성" >여성 </label>	
			<% } else { %>
				<label><input type="radio" name="gender" value="남성">남성 </label>
				<label><input type="radio" name="gender" value="여성" checked>여성 </label>
			<% } %>		
        </div>
        <div>
			폰번호 : <input type="text" name="phone" value="<%= rs.getString("phone")%>" >
		</div>		
		<div>
			주소 : <input type="text" name="address" value="<%= rs.getString("address")%>" >
		</div>		
		<div>
			<input type="submit" value="수정하기">
		</div>
	</form>
	
</body>
</html>

