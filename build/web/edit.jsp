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
        <title>Edit Tags</title>
    </head>
    <body>
        <h1>Listing Tags</h1>
    <%
                            String ss1 = "select distinct tags from tagsName";
                            ResultSet rs = ob.executeQ(ss1);
                            while(rs.next())
                                {

%>
<%=rs.getString("tags")%><br /><a href="show.jsp?va=<%= rs.getString("tags") %>">Show</a>&nbsp&nbsp&nbsp<a href="delete.jsp?value=<%= rs.getString("tags") %>">Delete</a>&nbsp;&nbsp;&nbsp;<a href="updat.jsp?val=<%= rs.getString("tags") %>">Update</a><br /><br />
<%
                                }
%>
<a href="addTag.jsp"><font color="black" size="5"><b>New Tag</b></font></a><br />
<a href="book.jsp"><font color ="black" size="3"><b>Back to BookMark Page</b></font></a>

        
    </body>
</html>
