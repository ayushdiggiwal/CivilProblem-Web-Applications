

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<% if(session.getAttribute("username")==null)
{
    response.sendRedirect("admin.jsp");
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
        <jsp:include page="top3.jsp" /> 
 <span style = "color : red">Welcome </span>: <span style = "color : blue"><% out.print(session.getAttribute("username")); %></span>
    
 
 <div class = container style = "margin-top: 100px">
     <div class = row>
         <div class="col-sm-4 text-center" style="background-color : lightcyan ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <p style = "color : maroon">Total Problems Uploaded<p>
             <p style = "color : purple"> <%= pDAO.totalproblems() %><p>
         </div>
         <div class="col-sm-4 text-center" style="background-color : mistyrose ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <p style = "color : maroon">Problems In Progress<p>
             <p style = "color : purple"> <%= pDAO.totalproblemsInProgress() %><p>
         </div>
         <div class="col-sm-4 text-center" style="background-color : wheat ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <p style = "color : maroon">Problems Solved<p>
             <p style = "color : purple"> <%= pDAO.totalproblemsCompleted() %><p>
         </div>
     </div>  
 </div>
    </body>
   
</html>

