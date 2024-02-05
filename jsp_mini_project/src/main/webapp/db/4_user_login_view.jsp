<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap');
        body {
            margin: 0;
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
        String pwd = request.getParameter("pwd");

        String sql = "SELECT * FROM YU_USER WHERE USERID = '" + userid + "' AND PASSWORD = '" + pwd + "'";
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            // A 권한일 때 버튼을 추가하여 선택한 페이지로 이동
            if(rs.getString("STATUS").equals("A")) {
    %>
                <form name="selectPage" action="" method="post">
                    <input type="submit" name="selectedPage" value="가입자 목록" formaction="8_user_list.jsp">
                    <input type="submit" name="selectedPage" value="빌려간 목록" formaction="rental_userList.jsp">
                    <!-- 추가로 필요한 버튼을 여기에 추가하면 됩니다 -->
                </form>
    <%
            } else {
                // 다른 권한에 대한 처리
                out.println("로그인 성공");
                sql = "UPDATE YU_USER SET CNT = 0 WHERE USERID = '"+ userid + "'";
                stmt.executeUpdate(sql);
            }
        }
    %>

    <%
        // 사용자가 선택한 페이지로 이동
        if(request.getMethod().equalsIgnoreCase("POST")) {
            String selectedPage = request.getParameter("selectedPage");
            if(selectedPage != null && selectedPage.equals("가입자 목록")) {
                response.sendRedirect("8_user_list.jsp");
            } else if(selectedPage != null && selectedPage.equals("빌려간 목록")) {
                response.sendRedirect("rental_userList.jsp");
            }
            // 추가로 필요한 페이지에 대한 처리를 여기에 추가하면 됩니다
        }
    %>
</body>
</html>