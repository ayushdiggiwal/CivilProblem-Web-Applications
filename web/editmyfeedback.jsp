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
 
 
 
 
 
 <div class = container style = "margin-top:100px">
<h2 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Edit FeedBack</h2>
<% 
String aadharid = pDAO.getUserID(session.getAttribute("username").toString());
String pid=request.getParameter("pid");
   ResultSet rs = pDAO.myfeedback(aadharid,pid);
%>
<div class='table-responsive'>
    <form method = post action="mycontroller.jsp"> 
        <input type="hidden" name="page" value="editmyfeedback">
<table class='table table-hover table-borderless'>
    
<%
  
while(rs.next())
{  
  %>  

    
    <tr><th>Feedback Message</th> <td><input type = text name = 'msg' value = "<%=rs.getString(2) %>" readonly></td></tr>

<%
}
%>
</table>
<input type = submit value = "Submit" class="btn btn-primary" name="edit"></form>


</div>
 </div>
 
 
 
 
    </body>
</html>
