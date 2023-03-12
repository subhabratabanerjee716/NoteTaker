<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvidor" %>
<%@ page import="com.entities.Note" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes:Note taker</title>
<%@include file="All_js_css.jsp" %>
</head>
<body>

<div class="container">
	
	<%@ include file="navbar.jsp" %>
	
	<br>
	
	<h1> This is All Note Page :-</h1>
	
	<div class="row" style="text-align: center;">
	
	<div class="col-12">
	
	<%
	
	Session s =FactoryProvidor.getFactory().openSession();
	//HQL
	 Query q=s.createQuery("from Note");
	
	List<Note> list = q.list();
	
	
	
	
	
	for(Note note:list){
		
		%>
			
			<div class="card mt-3" style="width: 18rem;text-align: center;">
			 <img class="card-img-center" style ="height:150px;padding: 10px;width: 150px; align-content: center;" src="img/notes.png" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title"><%= note.getTitle() %></h5>
			    <p class="card-text"><%= note.getContent() %> </p>
			    <div class="container" style="width: 18rem;text-align: center;">
			     <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
			    <a href="#" class="btn btn-primary">Update</a>
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