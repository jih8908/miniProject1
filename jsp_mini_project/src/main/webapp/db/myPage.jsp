<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rental User List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        Connection connection = null;
        try {
            // 전달받은 아이디
            String userid = (String)request.getAttribute("userid");

            // 해당 유저가 빌린 아이템 내역 조회
            String sql = "SELECT * FROM YU_RENTAL_HISTORY WHERE USERID = ?";
            
            connection = DriverManager.getConnection(db_url, db_id, db_pw);
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, userid);
            ResultSet rs = pstmt.executeQuery();
    %>

    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>빌려간 횟수</th>
                <th>빌려간 아이템</th>
            </tr>
        </thead>
        <tbody>
            <%
                while (rs.next()) {
            %>
                    <tr>
                        <td><%=rs.getString("USERID")%></td>
                        <td><%=rs.getString("NAME")%></td>
                        <td><%=rs.getInt("RENTAL_DATE")%></td>
                        <td><%=rs.getString("ITEM")%></td>
                    </tr>
            <%
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                // Connection 닫기
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
        </tbody>
    </table>
</body>
</html>