<%--
    Document   : show
    Created on : Jan 1, 2014, 11:03:15 AM
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
        <title>Url Listing</title>
    </head>
    <body>
        <label><b>Name:-&nbsp;&nbsp</b></label>&nbsp;&nbsp<%=request.getParameter("valueShow")%><br /><br />
        <%
        String temp = request.getParameter("valueShow");
        String s = "select * from tag_url where url='"+temp+"'";
        ResultSet rs = ob.executeQ(s);
        while(rs.next())
            {
            %>
            <%=rs.getString("tag")%><br />

            <%

            }
        %>
        <a href="updatUrl.jsp?valueUpdate=<%=temp%>">Update</a>&nbsp;&nbsp;&nbsp;<a href="editUrl.jsp">Back</a>

    </body>
</html>
