<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entites.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_bootstrap.jsp"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>

</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<center>
		<h2>Update Your Note</h2>
	</center>
	<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();
		Transaction t = s.beginTransaction();
		Note note = (Note) s.get(Note.class, noteId);
	%>

	<div class="container">
		<form action="Updatenotess" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden">

			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title"
					placeholder="Enter Your Title Here" aria-describedby="emailHelp"
					value="<%=note.getTitle()%>">
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content" id="content" class="form-control"
					style="height: 150px;"><%=note.getContent()%>
				</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success"
					style="background: #a5d6a7; border: none; color: white;">Update</button>
			</div>
		</form>
	</div>
</body>
</html>