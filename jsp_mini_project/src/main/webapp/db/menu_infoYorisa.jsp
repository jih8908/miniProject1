<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>물건 대여 페이지</title>
</head>
<body>
    <%@ include file="dbconn.jsp" %>

    <%
        // 세션에서 사용자 아이디 가져오기
        String userid = (String)session.getAttribute("userid");

        // 세션이 없거나 사용자 정보가 없으면 로그인 페이지로 리다이렉트
        if (userid == null) {
    %>
    <script>
        alert("로그인이 필요합니다.");
        location.href = "로그인 페이지 URL"; // 로그인 페이지 URL로 변경해주세요.
    </script>
    <%
            return; // 로그인이 필요하므로 이후 코드 실행하지 않음
        }

        // 로그인한 사용자의 아이템 및 대여일 설정
        String itemToRent = "돌리고올리고요리사"; // 동적으로 받아오도록 수정

        // 사용자 정보 조회
        String userSql = "SELECT * FROM YU_USER WHERE USERID = '" + userid + "'";
        ResultSet userRs = stmt.executeQuery(userSql);

        if (userRs.next()) {
            // 사용자 정보가 있을 경우
            String userId = userRs.getString("USERID");
            String name = userRs.getString("NAME");

            // 대여한 날짜를 오늘로 설정
            java.util.Date today = new java.util.Date();
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
            String rentalDate = sdf.format(today);

            // 대여 내역을 YU_RENTAL_HISTORY 테이블에 기록하는 SQL 쿼리
            String rentalSql = "INSERT INTO YU_RENTAL_HISTORY (RENTALID, USERID, NAME, ITEM, RENTAL_DATE) VALUES (" +
                    "RENTAL_SEQ.NEXTVAL, '" + userid + "', '" + name + "', '" + itemToRent + "', TO_DATE('" + rentalDate + "', 'YYYY-MM-DD'))";

            stmt.executeUpdate(rentalSql); // 대여 내역 기록
    %>
    <script>
        alert("물건이 성공적으로 대여되었습니다.");
        history.back(); // 이전 페이지로 이동
    </script>
    <%
        } else {
            // 사용자 정보가 없을 경우
    %>
    <script>
        alert("해당하는 사용자 정보가 없습니다.");
        history.back(); // 이전 페이지로 이동
    </script>
    <%
        }
        userRs.close(); // ResultSet 닫기
    %>

    <!-- 이후에 HTML 및 JavaScript 코드 추가 -->
    <div>
        <input type="button" value="뒤로 가기" onclick="history.back()">
    </div>
</body>
</html>