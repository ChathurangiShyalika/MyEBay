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
	
	<h3>SELL SOMETHING</h3>
	<hr />
	<form action="item_action" method="post" enctype="multipart/form-data">
		<label>Title</label>
		<input type="text" name="item.title" class="form-control">	

		<label>Description</label>
		<input type="text" name="item.description" class="form-control">	
		
		<label>Price</label>
		<input type="text" name="item.price" class="form-control">	

		<label>Photo</label>
		<input type="file" name="item.photo" class="form-control">
		
		<input type="submit" value="PUBLISH" class="btn btn-success">	
		
			
	</form>
	
	<%@include file="WEB-INF/footer.jsp" %>



</div>

</body>
</html>