
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
				<h1 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Assign Completion Date[If Completed]</h1>
				
                   <form method="post" action="mycontroller.jsp">
                                     <input type="hidden" name="page" value="completework">   
<% 
String id = request.getParameter("id").toString();
%>
<div class="form-group">
<label>Problem ID</label>
<input type="text" name="pid" value = "<%= id %>" class="form-control" readonly>

<div class="form-group">
<label>Actual Completion Date</label>
<input type="date" name="actcompdate" class="form-control">

<input type="submit" value="Submit" class = "btn btn-primary" class="form-control"/>
</div>
</div>
</form>

        
        </div>   
        
    </body>
</html>
       
    