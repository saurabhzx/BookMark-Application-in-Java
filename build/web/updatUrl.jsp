<%--
    Document   : updat
    Created on : Jan 1, 2014, 1:37:26 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String s = request.getParameter("valueUpdate");
        session.setAttribute("value",s);
        response.sendRedirect("updateUrl.jsp");
          %>
        </body>
</html>
