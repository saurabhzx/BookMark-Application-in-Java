<%-- 
    Document   : update
    Created on : Jan 1, 2014, 12:34:18 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
     <jsp:useBean id="ob" class="bookmark.bookMarkData"/>
      <jsp:useBean id="obj" class="bookmark.tag"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
         <%
        String upd = (String)session.getAttribute("v");
        %>
        <h2>Update Tag:-  <%=upd%></h2>
        <form action="update.jsp" method="POST">
            <input type="text" name="search" id="search"/>
  <input type="submit" name="Add" id="Add" value="Update" />
</form><br />
<a href="edit.jsp">Back</a>
  
        <%
        if(request.getMethod().equalsIgnoreCase("POST"))
            {
        

            String ntemp = request.getParameter("search");
        obj.tagUpdate(ntemp,upd);
   
     session.removeAttribute("val");
       response.sendRedirect("update.jsp");
      
    
       }
      %>
      

        
    </body>
</html>
