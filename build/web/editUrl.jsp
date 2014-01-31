<%--
    Document   : edit
    Created on : Dec 31, 2013, 11:15:40 PM
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
        <title>Edit Url</title>
    </head>
    <body>
        <h1>Listing Url</h1>
    <%
                            String ss1 = "select distinct url from urlname";
                            ResultSet rs = ob.executeQ(ss1);
                            while(rs.next())
                                {

%>
<%= rs.getString("url") %><br/>
<a href="showUrl.jsp?valueShow=<%= rs.getString("url") %>">Show</a>&nbsp&nbsp&nbsp<a href="deleteUrl.jsp?valueDelete=<%= rs.getString("url") %>">Delete</a>&nbsp;&nbsp;&nbsp;<a href="updatUrl.jsp?valueUpdate=<%= rs.getString("url") %>">Update</a><br /><br />
<%
                                }
%>
<a href="book.jsp"><font color="black" size="5"><b>New Url</b></font></a><br />
<a href="search.jsp"><font color ="black" size="3"><b>Back to Search Page</b></font></a>


    </body>
</html>
