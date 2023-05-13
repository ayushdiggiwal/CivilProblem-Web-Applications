<%-- 
    Document   : assignstatus
    Created on : Mar 19, 2019, 7:54:04 PM
    Author     : win 8.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        
        <jsp:include page="header.jsp" /> 
    </head>
    <body>
        <jsp:include page="top3.jsp" /> 
 
        
        <div class = "container" style = "margin-top : 100px">			
				<h1 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Assign Status</h1>
				
                                <form method="post" action="mycontroller.jsp">
                                     <input type="hidden" name="page" value="assignstatus">   
<% 
String aadharid = request.getParameter("id").toString();
%>
<div class="form-group">
<label>Aadhar ID</label>
<input type="text" name="aadharid" value = "<%= aadharid %>" class="form-control">

<label>Status</label>
<select name = status>
 <option value = "Accept">Accept</option>
 <option value = "Reject">Reject</option>
  </select>
<input type="submit" value="Submit" class = "btn btn-primary" class="form-control"/>
</div>
</form>
</div>
        
        
        
    </body>
</html>
