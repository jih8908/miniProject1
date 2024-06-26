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
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>빌려간 제품명</th>
                <th>빌려간 횟수</th>
            </tr>
        </thead>
        <tbody>
            <%
                try {
                    String sql = "SELECT USERID, NAME, ITEM, COUNT(*) AS RENTAL_COUNT FROM YU_RENTAL_HISTORY GROUP BY USERID, NAME, ITEM";
                    ResultSet rs = stmt.executeQuery(sql);

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%=rs.getString("USERID")%></td>
                            <td><%=rs.getString("NAME")%></td>
                            <td><%=rs.getString("ITEM")%></td>
                            <td><%=rs.getInt("RENTAL_COUNT")%></td>
                        </tr>
            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    // 필요에 따라 자원을 해제하는 코드를 추가해주세요
                }
            %>
        </tbody>
    </table>
</body>
</html>