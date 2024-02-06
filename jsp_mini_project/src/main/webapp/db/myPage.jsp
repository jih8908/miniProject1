<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
  
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}
 
h3 {
	text-align: center;
	margin-top: 20px;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	background-color: #fff;
}

th, td {
	padding: 10px 15px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f2f2f2;
}

.button-container {
	text-align: center;
	margin-top: 20px;
}

.button-container input[type="button"] {
	padding: 10px 20px;
	font-size: 16px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin: 0 10px;
}

.button-container input[type="button"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String userid = request.getParameter("userid");
	String sql = "SELECT * FROM YU_RENTAL_HISTORY WHERE USERID = '" + userid + "'";

	ResultSet rs = stmt.executeQuery(sql);

	if (rs.next()) {
	%>
	<h3>마이페이지</h3>
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>대여 날짜</th>
				<th>대여 아이템</th>
			</tr>
		</thead>
		<tbody>
			<%
			do {
			%>
			<tr>
				<td><%=rs.getString("USERID")%></td>
				<td><%=rs.getString("NAME")%></td>
				<td><%=rs.getDate("RENTAL_DATE")%></td>
				<td><%=rs.getString("ITEM")%></td>
			</tr>
			<%
			} while (rs.next());
			%>
		</tbody>
	</table>
	<div class="button-container">
		<input type="button" onclick="window.location.href='menu.jsp'"
			value="다른 아이템 둘러보기"> 
		<input type="button" value="대여 날짜 연장하기" onclick="rent()">
	</div>
	<%
	}
	%>
</body>
</html>
<script>
function rent() {
    // 현재 대여 날짜 가져오기
    var currentDate = new Date();
    
    // 대여 날짜에 7일 더하기
    currentDate.setDate(currentDate.getDate() + 7);
    
    // 연장된 날짜를 YYYY-MM-DD 형식으로 변환
    var year = currentDate.getFullYear();
    var month = currentDate.getMonth() + 1;
    var day = currentDate.getDate();
    var extendedDate = year + '-' + (month < 10 ? '0' : '') + month + '-' + (day < 10 ? '0' : '') + day;
    
    // 연장된 날짜를 알림창으로 표시
    alert("대여 날짜가 연장되었습니다. 새로운 대여 날짜: " + extendedDate);
    
    // Update.jsp로 연장된 날짜 정보를 전달하여 페이지 이동
    location.href = "Update.jsp?update=" + encodeURIComponent(extendedDate);
}

</script>