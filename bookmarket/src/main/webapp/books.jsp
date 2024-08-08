<%@page import="java.util.ArrayList"%>
<%@page import="dto.Book"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container py-4">
	<%@include file="menu.jsp" %>
<%! 
	String greeting = "Welcome to Book Shopping Mall"; 
	String tagline = "Welcome to Web Market!";
%>
<%-- <H1><%= greeting %></H1>
<H3><%= tagline %></H3> --%>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%= greeting %></h1>
			<p class="col-md-8 fs-4">BookMarket</p>
		</div>
	</div>
	<%
	Date today = new Date();
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
	%>
	<%
		ArrayList<Book> booklist = bookDAO.getAllBooks();
	%>
	<div class="row align-items-md-stretch text-center">
	<%
		for (Book book : booklist) {
	%>
		<div class="col-md-4">
			<div class="h-100 p-2">
				<h5><b><%= book.getName() %></b></h5>
				<p><%= book.getAuthor() %></p>
				<br><%= book.getPublisher() %> | <%=book.getUnitPrice() %>원
				<p><%= book.getDescription().substring(0,60) %>...</p>
				<p><%= book.getUnitPrice() %></p>
			</div>
		</div>
	<% }%>
	</div>
	
	<div class="col-md-12 text-center py5">
		<div class="h-100 p-5">
			<h3>
				<%= tagline %>
			</h3>
			<p>현재 접속 시간: <%= dateFormat.format(today) %></p>
			<%
				out.print(dateFormat.format(today));
			%>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>
