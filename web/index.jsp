

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
        <jsp:include page="top1.jsp" />  
  <!-- End Navigation -->
    <marquee behavior="alternate" bgcolor = ""><p><b>Login To Access All The Features</b></p></marquee>
  
            <div class="container" style = "margin-top:50px">
                <div class="row">
                    <div class="col-sm-6 mydiv">
                         <% ResultSet rs = pDAO.allProblemsAdmin();
%>

<div class='table-responsive'>
<table class='table table-hover table-sm' style = 'overflow: scroll' id="example" class="display" style="width:100%">
<thead style = 'background-color : green ; color : white' >
<tr>


<th>Problem Title</th>
<th>Description</th>
<th>PostDate</th>


<th>PostedBy</th>
<th>Location</th>
<th>Votes</th>
<th>Status</th>
<th>StartDate</th>
<th>EstimatedCompletionDate</th>
<th>ActualCompletionDate</th>

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
 <td><%= rs.getString(9) %></td> 
<td><%= rs.getString(10) %></td> 

																					


																
												
</tr>

<%
}
%>
</tbody>
</table>
</div>







                    </div>
                    <div class="col-sm-6">
                        <a href="login.jsp?value=5" class="btn btn-outline-primary btn-block">ADD PROBLEM</a>  
                        <br><br><a href="login.jsp?value=5" class="btn btn-outline-primary btn-block">PROBLEMS IN PROGRESS</a>  
                          <br><br><a href="login.jsp?value=5" class="btn btn-outline-primary btn-block">PROBLEMS COMPLETED</a> 
                         <br> <br><a href="login.jsp?value=5" class="btn btn-outline-primary btn-block">SEND FEEDBACK</a>  
                    </div>
                </div>
            </div>
  
    </body>
</html>
