
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 

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
    </head>
    <body>
        
        <jsp:include page="top1.jsp" />   
       
    <div class = "container" style = "margin-top : 50px">			
				<h1 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">SignUp</h1>
				
                                <form method="post" action="mycontroller.jsp">
<input type="hidden" name="page" value="register"> 
<div class="form-group col-xs-4">
<label>Aadhar Number <span style = "color : red" >*</span></label>
<input type="text" name="aadharid" class="form-control" id="aadharid" onblur="AadharValidate(); required">

<label>UserName<span style = "color : red">*</span></label>
<input type="text" name="username" class="form-control" required>

<label>City <span style = "color : red">*</span></label>
<input type="text" name="city" class="form-control" required>


<label>Address <span style = "color : red">*</span></label>

<textarea name="address" class="form-control"></textarea>


<label>Email ID <span style = "color : red"></span></label>
<input type = email name="emailadd" class="form-control" required>

<label>Contact Number <span style = "color : red">*</span></label>
<input type="text" name="contactno" class="form-control" required>

<label>Password<span style = "color : red">*</span></label>
<input type="text" name="password" id="password" class="form-control" required>

<label>Confirm Password<span style = "color : red" >*</span></label>
<input type="text" name="confirmpwd" id="confirmpwd" onblur="passwordvalidate()" class="form-control" required>

<input type="submit" name="save"  value="Submit" class = "btn btn-primary" class="form-control"/>
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
    
    
    
   
    
    function passwordvalidate() {
        var password = document.getElementById("password").value;
        var confirmpwd = document.getElementById("confirmpwd").value;
        
        if (password==confirmpwd) {
                return true;
            }
            else
            {
               alert("Password and Confirm Password Not Match");
                return false; 
            }
        }
    
    
    
    
    
    
</script>  
        
        
        
    </body>
</html>
