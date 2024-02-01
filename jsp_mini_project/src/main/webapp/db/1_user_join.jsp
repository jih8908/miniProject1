<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Single+Day&display=swap');

body {
    margin: 0;
    font-family: 'Single Day', sans-serif;
    font-size: 25px;
}

header {
    background-color: #333;
    color: white;
    text-align: center;
    background-size: cover;
    background-position: center;
    padding: 1em;
}
form input[type="text"],
form input[type="password"] {
    width: 200px; /* 원하는 너비로 조정 */
    padding: 5px;
}
</style>
</head>
<body>
    <form name="join" action="2_user_join_save.jsp">
        <div>
            <span>아이디 : </span> <input type="text" name="userid"> 
            <input
                type="button" onclick="idCheck()" value="중복확인">
        </div>
        <div>
            <span>패스워드 : </span> <input type="password" name="password">
        </div>
        <div>
            <span>이름 : </span> <input type="text" name="name">
        </div>
        <div>
			<span class="select_input">연락처 :</span> 
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> 
			- <input type="text" maxlength="4" size="4" name="phone2"> 
			- <input type="text" maxlength="4" size="4" name="phone3">
		</div>
        <div>
            <span>주소 : </span> <input type="text" name="address">
        </div>
        <div>
            <span>성별 : </span> <label><input type="radio" name="gender"
                value="M" checked>남자</label>
            <label><input type="radio" name="gender" value="F">여자</label>
        </div>
        
        <div>
            <input type="submit" value="회원 가입">
        </div>
    </form>

    <script>
        var join = document.join;
        function idCheck() {
            var id = join.userid.value;
            if (id == "" || id == undefined) {
                alert("아이디를 입력해주세요");
                return;
            }

            pop = window.open("user_idCheck.jsp?userid=" + id, "join",
                    "width=300, height=300");
        }

        // JavaScript를 사용하여 동적으로 이미지 설정
        document.body.style.backgroundImage = "url('../toy_image/image_16720.png')";
    </script>
</body>
</html>