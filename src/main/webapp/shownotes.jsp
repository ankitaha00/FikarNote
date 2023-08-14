<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entites.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Notes</title>
<%@include file="all_bootstrap.jsp"%>

</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<center>
		<h2>View Your Notes Here</h2>
	</center>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note note : list) {
				%>

				<div class="card mt-3" style="">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<%=note.getContent()%>
						<br>
						<div class="container text-center">
							<a href="update.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary mt-2 mr-1"
								style="background: #a5d6a7; border: none; color: white;">Update</a>
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger mt-2 ml-1"
								style="background: #ff8a65; border: none; color: white;">Delete</a>
						</div>
					</div>
				</div>

				<%
					}
					s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>