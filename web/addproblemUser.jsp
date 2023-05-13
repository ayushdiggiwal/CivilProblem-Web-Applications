
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
        
        <jsp:include page="top2.jsp" />   
       
    <div class = "container" style = "margin-top : 50px">			
				<h1 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #E6120E">ADD Problem</h1>
				
                                <form method="post" action="mycontroller.jsp">
<input type="hidden" name="page" value="addproblemuser"> 
<div class="form-group col-xs-4">
<label>Problem Title<span style = "color : red" >*</span></label>
<input type="text" name="ptitle" class="form-control" required">

<label>Description<span style = "color : red">*</span></label>
<textarea name="pdesc" class="form-control" required></textarea>


<label>Problem Location<span style = "color : red">*</span></label>
<input type = text name="pplace" class="form-control" required>



<input type="submit" name="save"  value="Submit" class = "btn btn-primary" class="form-control"/>
</div>
</form>
</div>    
        
        
        
        
   
        
        
    </body>
</html>

