<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	
	
	// HttpSession객체를 무효화시킨다.
	session.invalidate();

	// index.jsp를 재요청하는 응답을 보낸다.
	response.sendRedirect("index.jsp");
	
%>
