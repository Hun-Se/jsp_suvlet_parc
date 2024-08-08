<%@page import="java.util.Date"%> <!-- 지시자 태그 -->
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
		int random = (int)(Math.random() * 100); // 오류 발생 => 형 변환
		//Math=클래스, random=함수, return= 0~10 사이의 랜덤한 double 값 
		out.print("랜덤한 숫자 : " + random);
	%>
	new 랜덤한 숫자 : <%= random %> 
	<%
		Date date; // Date 클래스
	%>
	
</body>
</html>