<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_bootstrap.jsp"%>

</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
	</div>
<br>	
<center><h2>Add Your Notes Here</h2></center>
<br>
	<div class="container">
		<form action="addnotes" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title" placeholder="Enter Your Title Here"
					aria-describedby="emailHelp">
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content" id="content" class="form-control"
					style="height: 150px;">
				</textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn" style="background: #ff8a65; border:none; color: white;">Add</button>
			</div>
		</form>
	</div>


</body>
</html>