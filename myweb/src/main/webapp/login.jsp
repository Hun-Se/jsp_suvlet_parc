<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 연동 -->
	today: <%= request.getAttribute("today") %>
	<form id="myform" action="loginaction.jsp" method="post">
		id: <input type="text" name="id"> <br/>
		pw: <input type="password" name="pw"> <br/>
		<input type="submit" value="Login">
	</form>
	<script>
		myform.onsubmit = function onSbumit() {
			alert('submit');
			e.preventDefault();
		}
	</script>
</body>
</html>