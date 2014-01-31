<%-- 
    Document   : addTag
    Created on : Jan 1, 2014, 2:03:49 AM
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
        <title>Add Tag</title>
    </head>
    <body>
        <h1>Add a New Tag</h1>
        <form action="addTag.jsp" method="POST">
     <input type="text" name="search" id="search" />
  <input type="submit" name="Add" id="Add" value="Add" />
</form>
        <%
           if(request.getMethod().equalsIgnoreCase("POST"))
               {
                        String s = request.getParameter("search");
                        obj.addtag(s);
                        response.sendRedirect("book.jsp");
               }

        %>
    </body>
</html>
