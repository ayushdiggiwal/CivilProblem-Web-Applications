<%-- 
    Document   : logout
    Created on : Mar 18, 2019, 9:21:26 PM
    Author     : win 8.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<%
    
    
    session.setAttribute("userStatus","0");
   
    session.removeAttribute("username");
   session.invalidate();
    response.sendRedirect("index.jsp");
 
%>
