<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="check">
		<%@ include file="dbconn.jsp"%>
		<%
		String userid = request.getParameter("userid");
		//out.println(userid);
		String sql = " SELECT * FROM YU_USER WHERE USERID = '" + userid + "'";
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()) {
			out.println("중복된 아이디 있음");
			out.println("<input name='userid'>");
			out.println("<input type='button' value='중복체크'" + "onclick='idcheck()'>");
		} else {
			out.println("사용가능한 아이디");
		}
		%>
		<input type="button" value="아이디 사용" onclick="popClose('<%=userid%>')">
	</form>
</body>
</html>
<script>
	function popClose(userid) {
		opener.document.join.userid.value = userid;
		window.close();
	}

	function idcheck() {
		location.href = "user_idCheck.jsp?userid="
				+ document.check.userid.value;//셀프호출
	}
</script>