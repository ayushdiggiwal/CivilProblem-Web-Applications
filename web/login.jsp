<%-- 
    Document   : login
    Created on : Mar 15, 2019, 9:05:38 PM
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
 
 <%
     String str="";
    str =  request.getParameter("value").toString();
   if(str.equals("1"))
   {
   %>
   <script>alert("Successfull Signup, Login Now");
   window.location.assign("login.jsp?value=0");
   </script>
   
   <%
       
   }
   else if(str.equals("0"))
   {
   
   }
   else if(str.equals("5"))
   {
   %>
   <script>alert("Login To Access All The Features");
   window.location.assign("login.jsp?value=0");
   </script>
   
   <%
   }  
   
   
    else if(str.equals("2"))
   {
   %>
   <script>alert("Invalid Credentials, Login Now");
   window.location.assign("login.jsp?value=0");
   </script>
   
   <%
   }   
  %>
            <div class="container" style = "margin-top : 50px">
			<form method='post' action="mycontroller.jsp">
                            <input type="hidden" name="page" value="login">
				
							<center><h1 style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Login Form</h1></center>
						<div class="form-group">
							<label>Aadhar ID</label>
					
            <input type="text"   class="form-control" placeholder="User Name" name="aadharid" id="aadharid" onblur="AadharValidate();">
					</div>	
						<div class="form-group">
							<label>Password</label>
						
           <input type="password" class="form-control" placeholder="Password" name="pwd">
		   </div>	
<div class="form-group form-check">						
<label class="form-check-label">
<input type="checkbox" class="form-check-input" name="rem"  value='yes'>Remember Me
</label>
</div>
							
							
							
							
							
					
<div class="form-group">
<input type="submit" class="btn btn-primary" name="login"  value="login" style = "width : 200px">
</div>



				
			</form>
		</div> 
        
        <script type="text/javascript">
    function AadharValidate() {
        var aadhar = document.getElementById("aadharid").value;
        var adharcardTwelveDigit = /^\d{12}$/;
        var adharSixteenDigit = /^\d{16}$/;
        if (aadhar != '') {
            if (aadhar.match(adharcardTwelveDigit)) {
                return true;
            }
            else if (aadhar.match(adharSixteenDigit)) {
                return true;
            }
            else {
                alert("Enter valid Aadhar Number");
                return false;
            }
        }
    }
</script>
        
    </body>
</html>
