<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_bootstrap.jsp"%>

<style type="text/css">
nav {
	background: #ff8a65
}
.nav-link{
	text-decoration: none;
	color: white;
	padding: 10px,20px;
	font-size: 20px;
	position: relative;}
.nav-link:before{
	content:'';
	color: white;
	position: absolute;
	top: 0;
	left: 0;
	width: 0%;
	height: 100%;
	border-bottom: 2px solid white;
	transition:0.4s linear}
.nav-link:hover:before{
	width: 100%;
	color: white;
	}
</style>
</head>
<body>


	<nav
		class="navbar navbar-expand-lg navbar-light justify-content-center">
	<ul class="nav justify-content-center">
		<li class="nav-item"><a class="nav-link" href="index.jsp">Fikar Note</a></li>
		<li class="nav-item"><a class="nav-link" href="addnotes.jsp">Add Note</a></li>
		<li class="nav-item"><a class="nav-link" href="shownotes.jsp">Show Notes</a></li>
	</ul>
	</nav>


</body>
</html>