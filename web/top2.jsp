<%-- 
    Document   : userheader
    Created on : Mar 18, 2019, 8:12:04 PM
    Author     : win 8.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
              
  <nav class="navbar navbar-expand-sm navbar-dark pl-5 fixed-top" style = "background-color : blueviolet ">
    <a href="index.jsp" class="navbar-brand">Civil Problems Resolution</a>
    <span class="navbar-text">Vote For Development</span>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="myMenu">
      <ul class="navbar-nav pl-5 custom-nav">
        <li class="nav-item"><a href="userhome.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="addproblemUser.jsp" class="nav-link">ADD Problem</a></li>
        
        
         <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        View Problems
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="notstartedUser.jsp">Problems NotStarted</a>
        <a class="dropdown-item" href="inprogressUser.jsp">Problems InProgress</a>
        <a class="dropdown-item" href="completedUser.jsp">Problems Solved</a>
        <a class="dropdown-item" href="viewAllProblemsUser.jsp">View All Problems</a>
      </div>
    </li>
        
        
   
         <li class="nav-item"><a href="logout.jsp" class="nav-link">Logout</a></li>
         
      </ul>
    </div>
  </nav> <!-- End Navigation -->
  <div class="container-fluid" style = "background-color : #F7F7F7">
  <div class = container style = "margin-top : 50px">
      <div class = row>
          <div class = col-sm-4>
              <img src ="images/logoCivilProb.jpg" style = "width : 200px ; height : 150px"> 
          </div> 
          <div class = "col-sm-8" style ="margin-top : 60px">
              <h1 style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Civil Problems Resolution </h1>
          </div> 
      </div>   
  </div>
  </div>
        
        
        
        
    </body>
</html>
