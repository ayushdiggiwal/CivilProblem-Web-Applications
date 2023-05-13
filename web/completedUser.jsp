
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
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
        
        <jsp:include page="header.jsp"/> 
        
        
        
<link rel=stylesheet type = text/css href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   



 <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
-->

 <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">       
  </script>
  <script>
  $(document).ready(function() {
    $("#example").dataTable();
  });
  </script>     
              
    </head>
    <body>
        <jsp:include page="top2.jsp" /> 
        
        <div class="container">
				    <div class=row>
				        <div class="col-sm-12">
  <h2 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Problems-Completed</h2>



</div>
    
</div>
</div>
  <% ResultSet rs = pDAO.completedAdmin();
%>


<div class = container>
 
<div class = row>
<div class = col-sm-12>
<div class='table-responsive'>
<table class='table table-hover table-sm' style = 'overflow: scroll' id="example" class="display" style="width:100%">
<thead style = 'background-color : green ; color : white' >
<tr>


<th>Problem Title</th>
<th>Description</th>
<th>Post Date</th>


<th>Posted By</th>
<th>Location</th>
<th>Votes</th>
<th>Status</th>
<th>Start Date</th>
<th>Completion Date</th>
<th>Feedback</th>
</tr>
</thead>

 <tbody >
    <%
while(rs.next())
{
    %>
   
<tr class='table-warning'>
   
<td><%= rs.getString(2) %></td>
<td><a style = "font-size : 10pt" href="viewdescription.jsp?id=<%= rs.getString(1) %>">View Description</a></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= pDAO.getVote(rs.getString(1))%></td>
 <td><%= rs.getString(8) %></td> 
 <td><%= rs.getString(11) %></td> 
<td><%= rs.getString(10) %></td> 

<%
String aadharid = pDAO.getUserID(session.getAttribute("username").toString());
if(pDAO.sendorview(aadharid,rs.getString(1))==1)
{
%>
<td><a style = "font-size : 10pt" href="viewmyfeedback.jsp?id=<%= rs.getString(1) %>">View Ur Feedback</a></td>
<%
}
else
{
%>
<td><a style = "font-size : 10pt" href="sendfeedback.jsp?id=<%= rs.getString(1) %>">Send Feedback</a></td>
<%
}																					
%>

																					


																
												
</tr>

<%
}
%>
</tbody>
</table>
</div>
</div>
</div>
</div>



    </body>
</html>
