

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.io.*"%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<%
    
   String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String contact = request.getParameter("contact");
    String emailid = request.getParameter("emailid");
    String subject = request.getParameter("subject");
    
    
     try
    {
        Connection con=null;
    Statement stmt=null;
    String sql="insert into contact(firstname,lastname,contactno,emailid,subject) values('"+firstname+"','"+lastname+"','"+contact+"','"+emailid+"','"+subject+"')";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/civilprob","root","");
   stmt= con.createStatement();
   int n = stmt.executeUpdate(sql);
   //out.print();
   String success = "yes";
   response.sendRedirect("contact.jsp?status="+success);
    }
    catch(Exception e)
    {
        
    }
            
    
    
    
    
    
   

%>