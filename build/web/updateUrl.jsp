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
        <script type="text/javascript">
 function checkBoxValidation()
{
for(var i=0; i < document.form1.Field.length; i++)
{
if(!document.form1.Field[i].checked)
{
alert("Click OK to Update");
return false;
}
else
{
alert("Click OK to Update");
return true;
}
}
}
            </script>
    </head>
    <body>
         <%
        String upd = (String)session.getAttribute("value");
        %>
        <h2>Update Url:-  <%=upd%></h2>
        
<form  action ="updateUrl.jsp" method="post">
<%
        String s = "select * from tagsName";
        ResultSet rs = ob.executeQ(s);
        while(rs.next())
            {
            
           %>
                      
          <input  name="Field" type="checkbox" value="<%=rs.getString("tags")%>" />&nbsp;&nbsp;<%=rs.getString("tags")%><br />
           <%
                      
            }
%>


  <input type="submit" name="b1"  value="Update" />&nbsp;&nbsp;<input type="submit" name="b1"  value="Back" /></a>
 
</form><br />

 
  <%
  if(request.getMethod().equalsIgnoreCase("POST"))
            {
      String ss = request.getParameter("b1");
      if(ss.equals("Back"))
          {
          response.sendRedirect("editUrl.jsp");
          }
      else if(ss.equals("Update"))
          {
  String Field124[]= request.getParameterValues("Field");
    if(Field124 != null)
        {
        String t = "delete from tag_url where url='"+upd+"'";
                                        ob.executeU(t);
                        for(int i = 0 ; i < Field124.length ; i++)
                                {

                           String chk = "insert into tag_url value('"+Field124[i]+"','"+upd+"')";
                                         ob.executeU(chk);

                                 }
                                        response.sendRedirect("updateUrl.jsp");
        }
    }
  }
    %>
        


    </body>
</html>
