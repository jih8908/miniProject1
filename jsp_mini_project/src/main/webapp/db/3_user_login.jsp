<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(request.isRequestedSessionIdValid()){
			out.println("세션있다");
			session.removeAttribute("userid");
			session.removeAttribute("username");
			session.removeAttribute("status");
			//세션 하나씩 지우기
			
			session.invalidate();
			//세션 한번에 지우기
			
		} else {
			out.println("세션없다");
		}
		//out.println로 session 있는지 확인
		
	%>
	<form action="4_user_login_view.jsp">
		<div>
			아이디 : <input type="text" name="id">
		</div>
		<div>
			패스워드 : <input type="password" name="pwd">
		</div>
		<div>
			<input type="submit" value="로그인">
		</div>
	</form>
</body>
</html>
<script>
</script>