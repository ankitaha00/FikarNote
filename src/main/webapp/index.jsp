<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FikarNote</title>
    <%@include file="all_bootstrap.jsp" %>
    
    <style type="text/css">
* {
	padding: 0;
	margin: 0;
	box-sizing: 0;
	border-box: 0;
}
.text{
	max-width: 650px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%); 
	text-align: center;
	color: primary;}
.text span{
	letter-spacing: 8px}
.text h1{
	font-size: 3.5em}
.text a{
	text-decoration: none;
	background: #ff8a65;
	color: white;
	letter-spacing: 5px;
	transition:0.4s linear}
.text a:hover{
	text-decoration:none;
	color: black;
	background: transparent;
	border: 2px solid #ff8a65}	
.b{
	padding-top: 8px;
	padding-bottom: 8px;
	padding-left: 9px;
	padding-right: 8px;
	border-radius: 8px;}
</style>
  </head>
  
  <body>
  
  <div>
  <%@include file="navbar.jsp" %>
  </div>
    
    <section class="text">
	
	<h1>Welcome To FikarNote</h1>
	<span>"Every Note Becomes a Possibility"</span>
	<br><br>
	<a href="addnotes.jsp" class="b">Add Your Note</a>
	
	</section>

  </body>
</html>