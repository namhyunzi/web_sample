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
	// 요청 URL : http://localhost/sample/hr/job/list.jsp
	
	// JOBS 테이블에 대한 CRUD 기능이 구현된 JobDao 객체를 생성한다.
	JobDao jobDao = new JobDao();

	// 모든 직종정보를 반환하는 getAllJobs() 메소드를 실행한다.
	List<Job> Jobs = jobDao.getAllJobs();
%>
	<ul>
<%
	// 조회된 직종정보로 직종목록을 응답으로 보내기
	for (Job job: Jobs) {
%>
		<li><a href="detail.jsp?id=<%=job.getId()%>"><%=job.getTitle()  %></a></li>
<%
	}
%>

	</ul>
	
	<div>
		<a href="from.jsp">신규 직종 등록</a>
	</div>
</body>
</html>