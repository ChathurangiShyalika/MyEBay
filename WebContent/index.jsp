<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="com.im.myebay.db.DB"%>
<%@page import="com.im.myebay.model.Item"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Ebay</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
	<%@include file="WEB-INF/header.jsp" %>
	
	<h3>HOME PAGE</h3>
	
	<%
	List<Item> list=(List<Item>)DB.list("Item");
	for(Item item:list){
	%>	
	<div class="jumbotron">
	<img src="uploads/<%=item.getPhotoFileName() %>" />
	<h1><%=item.getTitle() %></h1>
	<p><%=item.getDescription() %></p>
	</div>
	
	<%
		}
	%>
	<%@include file="WEB-INF/footer.jsp" %>



</div>

</body>
</html>