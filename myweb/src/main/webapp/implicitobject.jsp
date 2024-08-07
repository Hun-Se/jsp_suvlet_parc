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
	
	out.print("out. 내장객체 테스트"); // 클라이언트(웹 브라우저) 화면에 출력한다.
	//out = 내장 객체, type: jspWriter /print는 jspWriter안에 있다.
	System.out.println("내장객체 테스트"); //애플리케이션 실행한 콘솔창에 출력
	String id = request.getParameter("id"); 
	//request = 내장 객체, type: HttpServletRequest
			
	String clientIP = request.getRemoteAddr(); //getRemoteAddr() : 사용자들의 클라이언트 ip
	System.out.println("client IP:" + clientIP);
	
%>
</body>
</html>