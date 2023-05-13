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
 
 
 
 
 
 <div class = container>
<h2 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Edit Profile</h2>
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
<form method = post action="mycontroller.jsp">
    <input type="hidden" name="page" value="editprofile">
    <tr><th>Aadhar ID</th> <td><input type = text name = 'aadharid' value = "<%=rs.getString(1) %>" readonly></td></tr>
<tr><th>UserName</th> <td><input type = text name = 'username' value = "<%=rs.getString(2) %>"></td></tr>
<tr><th>City</th> <td><input type = text name = 'city' value = "<%=rs.getString(3) %>"></td></tr>
<tr><th>Address</th> <td><input type = text name = 'address' value = "<%=rs.getString(4) %>"></td></tr>
<tr><th>Email ID</th> <td><input type = email name = 'emailadd' value = "<%=rs.getString(5) %>"></td></tr>
<tr><th>Contact Number</th> <td><input type = text name = 'contactno' value = "<%=rs.getString(6) %>"></td></tr>
<tr><th>Password</th> <td><input type = password name = 'password' value = "<%=rs.getString(7) %>"></td></tr>
<%
}
%>
</table>
<input type = submit value = "Submit" class="btn btn-primary" name="edit"></form>


</div>
 </div>
 
 
 
 
    </body>
</html>
