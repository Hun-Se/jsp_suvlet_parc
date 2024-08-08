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
	// 사용자가 전송한 id, pw를 추출하여 처리한다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>
id: <%= id %>, pw:<%= pw %>!
</body>
</html>