<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 정보 수정</title>
</head>
<body>
    <%@ include file="dbconn.jsp" %>
    <%
        String userid = request.getParameter("USERID");
        String sql = "SELECT * FROM YU_USER " + "WHERE USERID = '" + userid + "'";
        
        ResultSet rs = stmt.executeQuery(sql);
        
        if (rs.next()) {
    %>
            <h3>사용자 정보 수정</h3>
            <form action="6_user_update_result.jsp">
                <input name="id" value="<%= rs.getString("userid")%>" hidden>
                <div>
                    아이디 : <input type="text" value="<%= rs.getString("userid")%>" disabled>
                </div>
                <div>
                    패스워드 : <input type="password" name="pwd">
                </div>
                <div>
                    이름 : <input type="text" name="name" value="<%= rs.getString("Name")%>">
                </div>        
                <div>성 별 :
                    <% if (rs.getString("gender").equals("M")) { %>
                        <label><input type="radio" name="gender" value="남성" checked>남성</label>
                        <label><input type="radio" name="gender" value="여성">여성</label>
                    <% } else { %>
                        <label><input type="radio" name="gender" value="남성">남성</label>
                        <label><input type="radio" name="gender" value="여성" checked>여성</label>
                    <% } %>        
                </div>
                <div>
                    <input type="submit" value="수정하기">
                </div>
            </form>
    <%
        } else {
    %>
            <div>사용자 정보를 찾을 수 없습니다.</div>
    <%
        }
    %>
</body>
</html>