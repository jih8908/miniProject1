<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap');
        
        body {
            margin: 0;
            font-family: 'Single Day', sans-serif;
            font-size: 25px;
            background-image: url('../toy_image/image_16720.png');
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
        }

        input[type="button"] {
            margin-top: 10px;
            padding: 10px;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");

        String sql = "SELECT * FROM YU_USER WHERE USERID = '" + userid + "' AND PASSWORD = '" + password + "'";

        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            if (rs.getInt("CNT") >= 4) {
                out.println("<p>비밀번호 5번 이상 실패 관리자에게 문의하세요</p>");
            } else {
                session.setAttribute("userid", rs.getString("USERID"));
                session.setAttribute("name", rs.getString("NAME"));
                session.setAttribute("status", rs.getString("STATUS"));

                if (rs.getString("STATUS").equals("A")) {
    %>	
    	
                    <form name="rentalUserInfo">
                        <p>관리자로 로그인되었습니다.</p>
                        <input type="button" value="대여 유저 목록" onclick="goToRentalUserList()">
                        <input type="button" value="가입자 리스트" onclick="goToUserList()">
                        <input type="button" value="메뉴 페이지로 가기" onclick="goToMenuPage()">
                        <input type="button" value="정보 수정" onclick="goToEditProfile()">
	
                    </form>
                    <script>
                        function goToRentalUserList() {
                            location.href = "rental_userList.jsp";
                        }

                        function goToUserList() {
                            location.href = "8_user_list.jsp";
                        }

                        function goToMenuPage() {
                            location.href = "menu.jsp";
                        }

                        function goToEditProfile() {
                            var userid = '<%= session.getAttribute("userid") %>';
                            location.href = "5_user_update.jsp?userid=" + userid;
                        }
                    </script>
                <%
                } else {
                %>
                    <form name="userMenu">
                        <p>로그인 성공</p>
                        <input type="button" value="메뉴 페이지" onclick="goToMenuPage()">
                        <input type="button" value="마이 페이지" onclick="goToMyPage()">
                        <input type="button" value="정보 수정" onclick="goToEditProfile()">
                    </form>
                    <script>
                        function goToMenuPage() {
                            location.href = "menu.jsp";
                        }
                        
                        function goToMyPage() {
                            var userid = '<%= session.getAttribute("userid") %>';
                            location.href = "myPage.jsp?userid=" + userid;
                        }

                        function goToEditProfile() {
                            var userid = '<%= session.getAttribute("userid") %>';
                            location.href = "5_user_update.jsp?userid=" + userid;
                        }
                    </script>
                <%
                }

                sql = "UPDATE YU_USER SET CNT = 0 WHERE USERID = '" + userid + "'";
                stmt.executeUpdate(sql);
            }
        } else {
            String idsql = "SELECT * FROM YU_USER WHERE USERID = '" + userid + "'";
            ResultSet rsId = stmt.executeQuery(idsql);
            if (rsId.next()) {
                int cnt = rsId.getInt("CNT");
                if ((cnt + 1) >= 5) {
                    out.println("<p>5번 이상 실패 관리자에게 문의하세요</p>");
                } else {
                    out.println("<p>" + (cnt + 1) + "번 이상 실패</p>");
                    stmt.executeUpdate("UPDATE YU_USER SET CNT = CNT+1 WHERE USERID = '" + userid + "'");
                }
            } else {
                out.println("<p>아이디 확인해주세요</p>");
            }
        }
    %>
    <form action="3_user_login.jsp">
        <input type="button" value="되돌아가기" onclick="history.back()">
    </form>
</body>
</html>