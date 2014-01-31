<%-- 
    Document   : index
    Created on : Dec 31, 2013, 9:22:57 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <jsp:useBean id="ob" class="bookmark.bookMarkData"/>
    <jsp:useBean id="obj" class="bookmark.tag"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><!-- -->
<title>Untitled Document</title>
<script type="text/javascript" language="JavaScript">

function submit_form() {
    var x=document.forms["form"]["search"].value;
		if (x==null || x==""){
			alert("No URL was enterd.");
			return false;}
                    else
                        return true;
                    
}
</script>
</head>

<body>
<p>
  <label for="search"><br />
    BookMark Application<br />
    <br />
    <br />
  </label>
 
<form action="book.jsp" method="POST" name="form" onsubmit="return submit_form();">
     <input type="text" name="search" id="search" />
  <input type="submit" name="Add" id="Add" value="Add" />
</form>

<p><a href="edit.jsp">Edit Tags</a>&nbsp;</p>
<p>
  <textarea name="tag" id="tag" cols="45" rows="5" readonly>
<%
                            String ss1 = "select distinct tags from tagsName";
                            ResultSet rs = ob.executeQ(ss1);
                            while(rs.next())
                                {

%><%=rs.getString("tags")%> <%
                                }
%>
  </textarea>
</p>
<p>Search Results&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="editUrl.jsp">EditUrl</a></p>
<p>
  <label for="result"></label>
  <textarea name="result" id="result" cols="60" rows="10" readonly>
 <%
                            String ss = "select distinct url from urlname";
                            ResultSet rs1 = ob.executeQ(ss);
                            while(rs1.next())
                                {

%>
<%=rs1.getString("url")%>

<%


                                }
%>


  </textarea>
</p>

<%
if(request.getMethod().equalsIgnoreCase("POST"))
{
    String s = request.getParameter("search");
    obj.addBookmark(s);
     response.sendRedirect("search.jsp");
    
}
    %>
</body>
</html>

