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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" //DB 파일 이름과 대조할때 이름 동일하게 작성해야됨
			+ id + "' AND PWD = '" //id, pwd 모두 찾는 쿼리문
			+ pwd + "'";

	ResultSet rs = stmt.executeQuery(sql);//sql 쿼리문 execute
	//ResultSet으로 리턴값 받음

	if (rs.next()) {
		//5번 이상 로그인 실패했을때
		if (rs.getInt("CNT") >= 4) {
			out.println("비밀번호 5번 이상 실패 관리자에게 문의하세요");
		} else {
			session.setAttribute("userid", rs.getString("USERID"));
			session.setAttribute("username", rs.getString("USERNAME"));
			session.setAttribute("status", rs.getString("STATUS"));//session 정보에 담음
			
			if(rs.getString("STATUS").equals("A")){
				response.sendRedirect("user_list.jsp");//A라는 권한일땐 user_list로 이동하겠다
			}
			out.println("로그인 성공");
			sql = "UPDATE TBL_MEMBER SET "
				 	+ "CNT = 0"
					+"WHERE USERID = '"+ id + "'"; //쿼리문 작성	
		stmt.executeUpdate(sql);//쿼리문 아래 stmt 꼭 작성
	%>

	<form name="userInfo">
		<input name="id" value="<%=id%>" hidden>
		<!-- hidden 정보 가려줌  -->
		<input type="submit" value="게시판" formaction="board_list.jsp"> 
		<input type="button" value="회원 정보 수정" onclick="btn('u')"> 
		<input type="button" value="회원 정보 삭제" onclick="btn('d')">		
	</form>
	<!-- form 두개 작성 비추 -->

	<%
	}
	%>
	<%
	} else {
	String idsql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" + id + "'";
	ResultSet rsId = stmt.executeQuery(idsql);
	if (rsId.next()) {
		//아이디는 있는데 패스워드 다를경우
		int cnt = rsId.getInt("CNT");//CNT = DB CNT 컬럼에 있는 값
		if ((cnt + 1) >= 5) {//로그인 5번 이상 실패한 경우
			out.println("5번 이상 실패 관리자에게 문의하세요");
		} else {//5회 이하 실패시
			out.println((cnt + 1) + "번 이상 실패");
			stmt.executeUpdate("UPDATE TBL_MEMBER SET " 
				+ "CNT = CNT+1" 
				+ "WHERE USERID = '" + id + "'");
		}
	} else {
		//아이디 없는 경우
		out.println("아이디 확인해주세요");
	}
	%>
	<form action="3_user_login.jsp">
		<div>
			<input type="button" value="되돌아가기" onclick="history.back()">
		</div>
	</form>
	<%
	}
	%>

</body>
</html>
<script>
	function btn(txt) {
		var userInfo = document.userInfo;
		if (txt == "u") {
			userInfo.action = "5_user_update.jsp";
		} else {
			userInfo.action = "7_user_delete.jsp";
		}
		userInfo.submit();
	}
</script>