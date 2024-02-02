<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	text-align: center;
}

a {
	color: black;
	font-weight: 500;
	text-decoration: none;
}

a:visited {
	color: black;
}

a:hover {
	color: blue;
}
</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<%
	//String sql = "SELECT BOARDNO, TITLE, B.USERID, USERNAME, HIT, TO_CHAR(CDATETIME, 'YY-MM-DD HH24:MI') AS CDATETIME,	TO_CHAR(UDATETIME, 'YY-MM-DD HH24:MI') AS UDATETIME	FROM TBL_BOARD B INNER JOIN TBL_MEMBER M ON B.USERID=M.USERID ";
	String sql = "SELECT B.BOARDNO, TITLE, B.USERID, USERNAME, HIT," 
			+ "TO_CHAR(B.CDATETIME, 'YY/MM/DD HH24:MI') AS CDATETIME, " 
			+ "TO_CHAR(B.UDATETIME, 'YY/MM/DD HH24:MI') AS UDATETIME, "
			+ "C.CNT "
			+ "FROM TBL_BOARD B "
			+ "INNER JOIN TBL_MEMBER M ON B.USERID = M.USERID "
			+ "LEFT JOIN ( "
			+ "SELECT B.BOARDNO, COUNT(*) AS CNT "
			+ "FROM TBL_BOARD B "
			+ "INNER JOIN TBL_COMMENT C ON B.BOARDNO = C.BOARDNO "
			+ "GROUP BY B.BOARDNO "
			+ ") C ON B.BOARDNO = C.BOARDNO "
		;
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += " WHERE TITLE LIKE '%" + keyword + "%'";
		}
	sql += " ORDER BY CDATETIME DESC" ;	
	ResultSet rs = stmt.executeQuery(sql);	
	
	%>
	<form name="board_list">
			<div>
				검색어 : <input type="text" name="keyword">				
						<input type="button" value="검색" onclick="search()">
			</div>
			
		<table border="1">
			<tr>
				<a>
					<th style="width: 10%;">게시글번호</th>
					<th style="width: 40%;">제목</th>
					<th style="width: 10%;">작성자</th>
					<th style="width: 10%;">조회수</th>
					<th style="width: 15%;">작성날짜</th>
					<th style="width: 15%;">수정날짜</th>
				</a>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("BOARDNO")%></td>
				<td><a href='board_view.jsp?boardno=<%=rs.getString("boardno")%>'><%=rs.getString("TITLE")%></a>
					<% if(rs.getString("CNT") != null){						
					} %>
					<a href='#' onclick='commpop(<%=rs.getString("boardno")%>)'><span style='color:orange;'>( <%=rs.getString("CNT")%> )</span></a>
					</td>
				<td><%=rs.getString("USERNAME")%></td>
				<td><%=rs.getString("HIT")%></td>
				<td><%=rs.getString("CDATETIME")%></td>
				<td><%=rs.getString("UDATETIME")%></td>
			</tr>
			<%
			}
			%>
		</table>
		<input type="submit" value="글쓰기" formaction="board_add.jsp">
	</form>
</body>
</html>
<script>
	var board = document.board_list;
	function search(){
		location.href="board_list.jsp?keyword=" + board.keyword.value; //보드의 키워드의 밸루값		           
	}
	
		//pop=window.open("user_idCheck.jsp?userid=" + id,"join","width=300, height=300"); join=pop이름
	function commpop(boardno){
		window.open("comment_list.jsp?boardno="+boardno, "comm", "width=400, height=400");		
	}
	
</script>