<%-- 
    Document   : admin
    Created on : Mar 16, 2019, 3:18:33 PM
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
       <jsp:include page="top1.jsp" />         
            <div class="container" style = "margin-top : 50px">
			<form method='post' action="mycontroller.jsp">
                        <input type="hidden" name="page" value="adminlogin">    
                           
							<center><h1 style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Admin Login</h1></center>
						<div class="form-group">
							<label>UserName</label>
					
            <input type="text"   class="form-control" placeholder="User Name" name="adminname">
					</div>	
						<div class="form-group">
							<label>Password</label>
						
           <input type="password" class="form-control" placeholder="Password" name="pwd">
		   </div>	
<div class="form-group form-check">						
<label class="form-check-label">
<input type="checkbox" class="form-check-input" name="rem" value='yes'>Remember Me
</label>
</div>
							
											
<div class="form-group">
<input type="submit" class="btn btn-primary" name="login"  value="login" style = "width : 200px">
</div>



			
			</form>
		</div> 
        
    </body>
</html>
