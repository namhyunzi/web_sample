<%@page import="hr.vo.Job"%>
<%@page import="java.util.List"%>
<%@page import="hr.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직종 목록</title>
</head>
<body>
	<h1>직종 목록</h1>
	
<%
	JobDao dao = new JobDao();
	List<Job> JobList = dao.getAllJobs();
%>
	<ul>
<%
	for (Job jb: JobList) {
%>
		<li><a href="detail.jsp?id=<%=jb.getId()%>"><%=jb.getTitle()  %></a></li>
<%
	}
%>

	</ul>

</body>
</html>