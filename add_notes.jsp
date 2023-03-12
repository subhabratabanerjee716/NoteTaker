<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="All_js_css.jsp" %>
</head>
<body>
<div class="container">

	<%@ include file="navbar.jsp" %>
	<h3>Please Add All Fields:-</h3>
	<div class="container" ">
	
	<form action="SaveNoteServlet" method="get">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required="required" type="text" name="topic" class="form-control" id="title"  placeholder="Enter Title">
    <small id="title2" class="form-text text-muted">We'll never share your Topic with anyone else !</small>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name ="content" class="form-control" id="content" placeholder="Put the content here" class="form-control" required="required" style="height: 300px"></textarea>
  </div>
  <div class="container text-center" >
   <button type="submit" class="btn btn-primary">Add</button>
  </div>
 
</form>
	
	
	</div>
</div>

</body>
</html>