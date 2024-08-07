<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="br" class="dao.BookRepository"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* BookRepository br = new BookRepository(); */
	ArrayList<Book> list = br.getAllBooks();
	for (Book book:list) {
%>
	book id: <%= book.getBookId() %> <br/>
	name: <%= book.getName() %><br/>
<% } %>
</body>
</html>