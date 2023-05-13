<%-- 
    Document   : userhome
    Created on : Mar 17, 2019, 10:22:57 PM
    Author     : win 8.1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<% if(session.getAttribute("username")==null)
{
    response.sendRedirect("login.jsp?value=0");
}    
%>
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
        <jsp:include page="top2.jsp" /> 
 <span style = "color : red">Welcome </span>: <span style = "color : blue"><% out.print(session.getAttribute("username")); %></span>
 
 
 
 
 <div class = container>
     
<% 
   ResultSet rs = pDAO.userProfile(session.getAttribute("username").toString());
%>

<div class='table-responsive'>
<table class='table table-hover table-borderless'>
    <%
   String Aadharid = null;
while(rs.next())
{  Aadharid = rs.getString(1);
  %>  
  <tr><th>AadharID</th> <td><%=rs.getString(1) %></td></tr>
<tr><th>UserName</th> <td><%=rs.getString(2) %></td></tr>
<tr><th>City</th> <td><%=rs.getString(3) %></td></tr>
<tr><th>Address</th> <td><%=rs.getString(4) %></td></tr>
<tr><th>Email ID</th> <td><%=rs.getString(5) %></td></tr>
<tr><th>Contact Number</th> <td><%=rs.getString(6) %></td></tr>
<%
}
%>
</table>

    <a href="editprofile.jsp?uid = <%=Aadharid %>" class="btn btn-primary">Edit Profile</a>



</div>
 
 
 
 
 
 
    </body>
</html>
