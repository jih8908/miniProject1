<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	padding: 5px 10px;
	border-collapse: collapse;
	text-align: center;
}

input {
	background-color: white;
	color: black;
}
</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String sql = "SELECT * FROM YU_USER";
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += " WHERE NAME LIKE '%"+ keyword + "%' OR USERID LIKE '%" + keyword + "%'";   
	}
	
	ResultSet rs = stmt.executeQuery(sql);//몇개일지 모르므로 변수에 담아
	%>
	<form name="user_list">
		<div>
			검색어 : <input type="text" name="keyword"> 
					<input type="button" value="검색" onclick="search()">
		</div>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>핸드폰번호</th>
				<th>성별</th>
				<th>취미1</th>
				<th>취미2</th>
				<th>취미3</th>
				<th>수정</th>
				<th>삭제</th>
				<th>비밀번호<br>초기화</th>
			</tr>
			<%
			while (rs.next()) {
			%><tr>
				<td><%=rs.getString("USERID")%></td>
				<td><%=rs.getString("NAME")%></td>
				<td><%=rs.getString("PHONE")%></td>
				<td><%=rs.getString("GENDER")%></td>
				<td><%=rs.getString("ADDRESS")%></td>				
				<td><input type="button"
					onclick="userUpdate('<%=rs.getString("USERID")%>')" value="수정"></td>
				<td><input type="button"
					onclick="userDelete('<%=rs.getString("USERID")%>')" value="삭제"></td>
				<td>
					<%
					if (rs.getInt("CNT") >= 4) {
					%> <input type='button' value='초기화'
					onclick="pwdreset('<%=rs.getString("USERID")%>')"> <%
 }
 %>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>
<script>
	function userUpdate(userId) {
		location.href = "5_user_update.jsp?id=" + userId;
	}
	function userDelete(userId) {
		location.href = "7_user_delete.jsp?id=" + userId;
	}
	function pwdreset(userId) {
		location.href = "user_pwd_reset.jsp?id=" + userId;
	}
	
	var user = document.user_list;
	function search(){
		location.href="user_list.jsp?keyword=" + user.keyword.value;		           
	}
</script>