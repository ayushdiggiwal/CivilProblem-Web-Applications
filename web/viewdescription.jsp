<%-- 
    Document   : index
    Created on : Jan 20, 2019, 4:39:03 PM
    Author     : win 8.1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<!DOCTYPE html>
<html lang="en-US">
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
        <style>
            .mydiv{
            height:300px;
             overflow-y: scroll;
                    }
        </style>
    </head>
    <body style = "background-color: white">
        <!-- Start Nagigation -->
        <jsp:include page="top4.jsp" />  
  <!-- End Navigation -->
    
  
            <div class="container" style = "margin-top:50px">
                <h2 class ="text-center">View Problem Description</h2>
                <div class="row">
                    
                         <% 
    
    ResultSet rs = pDAO.viewprobdesc(request.getParameter("id"));
%>

<div class='table-responsive'>
<table class='table table-hover table-sm' style = 'overflow: scroll' id="example" class="display" style="width:100%">
<thead style = 'background-color : green ; color : white' >
<tr>


<th>Problem Title</th>
<th>Description</th>


</tr>
</thead>

 <tbody >
    <%
while(rs.next())
{
    %>
   
<tr class='table-warning'>
   
<td><%= rs.getString(2) %></td>


<td><%= rs.getString(3) %></td>


																					


																
												
</tr>

<%
}
%>
</tbody>
</table>








                    
                </div>
            </div>
  
    </body>
</html>
