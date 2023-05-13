<%-- 
    Document   : mycontroller
    Created on : Mar 17, 2019, 8:21:34 PM
    Author     : win 8.1
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>

<%
if(request.getParameter("page").toString().equals("login")){
if(pDAO.loginValidate(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("username",pDAO.getUserName(request.getParameter("aadharid")));
    response.sendRedirect("userhome.jsp");

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("login.jsp?value=2");
}

}

else if(request.getParameter("page").toString().equals("register")){
        
        String aadharid =request.getParameter("aadharid");
        String username =request.getParameter("username");
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        String emailadd=request.getParameter("emailadd");
        String contactno =request.getParameter("contactno");
        String password =request.getParameter("password");
        String confirmpwd =request.getParameter("confirmpwd");
    
         
    pDAO.addNewUser(aadharid,username,city,address,emailadd,contactno,password);
    response.sendRedirect("login.jsp?value=1");
}


else if(request.getParameter("page").toString().equals("editprofile")){
        
    String aadharid =request.getParameter("aadharid");
        String username =request.getParameter("username");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
        String emailadd =request.getParameter("emailadd");
        String contactno =request.getParameter("contactno");
        String password =request.getParameter("password");
        pDAO.editProfile(aadharid,username,city,address,emailadd,contactno,password);
    
    response.sendRedirect("userhome.jsp");
}



else if(request.getParameter("page").toString().equals("vote")){
        
        String userid =request.getParameter("userid");
        String pid =request.getParameter("pid");
        
    
         
   pDAO.voteNow(userid,pid);
    response.sendRedirect("notstartedUser.jsp");
}





else if(request.getParameter("page").toString().equals("startwork")){
        
        String id =request.getParameter("pid");
        String estcompdate =request.getParameter("estcompdate");
        
          Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("dd-MM-yyyy");
       String date =  ft.format(dNow).toString();
    pDAO.startWork(id,estcompdate,date);
    response.sendRedirect("notstartedAdmin.jsp");
}






else if(request.getParameter("page").toString().equals("completework")){
        
        String id =request.getParameter("pid");
        String actcompdate =request.getParameter("actcompdate");
        
         
    pDAO.completeWork(id,actcompdate);
    response.sendRedirect("inprogressAdmin.jsp");
}






if(request.getParameter("page").toString().equals("adminlogin")){
if(pDAO.loginValidateAdmin(request.getParameter("adminname").toString(), request.getParameter("pwd").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("username",request.getParameter("adminname").toString());
    response.sendRedirect("adminhome.jsp");

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("admin.jsp");
}

}

if(request.getParameter("page").toString().equals("assignstatus")){
        
        String aadharid =request.getParameter("aadharid");
        String status =request.getParameter("status");
        
         
    pDAO.updatestatus(aadharid,status);
    response.sendRedirect("newuserrequest.jsp");
}


if(request.getParameter("page").toString().equals("addproblemuser")){
        
        String ptitle =request.getParameter("ptitle");
        String pdesc =request.getParameter("pdesc");
        
        String pplace=request.getParameter("pplace");
       String username= session.getAttribute("username").toString();
        
        Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("dd-MM-yyyy");
       String date =  ft.format(dNow).toString();
    String status = "Not Started";
         
    pDAO.addProblemUser(ptitle,pdesc,date,username,pplace,status);
    response.sendRedirect("notstartedUser.jsp");
}


if(request.getParameter("page").toString().equals("addfeedback")){
        
        String msg =request.getParameter("msg");
        
       String username= pDAO.getUserID(session.getAttribute("username").toString());
        
        Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("dd-MM-yyyy");
       String date =  ft.format(dNow).toString();
    
      String pid =request.getParameter("pid");   
    pDAO.addfeedback(msg,username,date,pid);
    response.sendRedirect("completedUser.jsp");
}


%>
