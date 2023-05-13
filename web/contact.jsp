<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #F7F7F7;
}
</style>
</head>
<body>

     
 <!-- Start Nagigation -->
 <jsp:include page="top1.jsp" />  
  <!-- End Navigation -->
    
    
    
    


<div class="container" style = "margin-top : 50px">
    <h3 class = text-center style = "font-family : Monotype Corsiva ; color : red">Contact Form</h3>
  <form action="contactcontroller.jsp">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lastname" name="lastname" placeholder="Your last name..">

    <label for="lname">Contact Number</label>
    <input type="text" id="contact" name="contact" placeholder="Contact Number">
    
    <label for="lname">Email ID</label>
    <input type="text" id="emailid" name="emailid" placeholder="Your Email ID..">
    

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
    <%
       
       
    String status = "";
      status =  request.getParameter("status");
       
      if("yes".equals(status))
      {
          out.print("<script>alert('Message Sent')</script>");
      }
       
    %>
</div>

</body>
</html>
