<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	this is actionmain.jsp
	<%
		int random = (int)(Math.random()*100);
		System.out.println(random);
		out.print(random);
		Date today = new Date();
		request.setAttribute("today", today.toString()); // 내장객체
		if(random%2==0) {
	%>
	<jsp:forward page="login.jsp">
		<jsp:param name="date" value="<%= new Date().toString() %>"/>
	</jsp:forward>
	<%} %>
</body>
</html>