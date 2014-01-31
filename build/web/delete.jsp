<%-- 
    Document   : delete
    Created on : Dec 31, 2013, 11:51:52 PM
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
        <title>Delete Tags</title>
    </head>
    <body>
        <%
       String temp =request.getParameter("value");

       obj.deleteTag(temp);
       response.sendRedirect("edit.jsp");

        %>
    </body>
</html>
