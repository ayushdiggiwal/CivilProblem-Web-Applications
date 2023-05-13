
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String Aadharid = request.getParameter("id").toString();
pDAO.deleteUserAdmin(Aadharid);
 response.sendRedirect("viewUsersAdmin.jsp");
%>
