package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class book_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html>\n");
      out.write("    ");
      bookmark.bookMarkData ob = null;
      synchronized (_jspx_page_context) {
        ob = (bookmark.bookMarkData) _jspx_page_context.getAttribute("ob", PageContext.PAGE_SCOPE);
        if (ob == null){
          ob = new bookmark.bookMarkData();
          _jspx_page_context.setAttribute("ob", ob, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");
      bookmark.tag obj = null;
      synchronized (_jspx_page_context) {
        obj = (bookmark.tag) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new bookmark.tag();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><!-- -->\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<script type=\"text/javascript\" language=\"JavaScript\">\n");
      out.write("\n");
      out.write("function submit_form() {\n");
      out.write("    var x=document.forms[\"form\"][\"search\"].value;\n");
      out.write("\t\tif (x==null || x==\"\"){\n");
      out.write("\t\t\talert(\"No URL was enterd.\");\n");
      out.write("\t\t\treturn false;}\n");
      out.write("                    else\n");
      out.write("                        return true;\n");
      out.write("                    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<p>\n");
      out.write("  <label for=\"search\"><br />\n");
      out.write("    BookMark Application<br />\n");
      out.write("    <br />\n");
      out.write("    <br />\n");
      out.write("  </label>\n");
      out.write(" \n");
      out.write("<form action=\"book.jsp\" method=\"POST\" name=\"form\" onsubmit=\"return submit_form();\">\n");
      out.write("     <input type=\"text\" name=\"search\" id=\"search\" />\n");
      out.write("  <input type=\"submit\" name=\"Add\" id=\"Add\" value=\"Add\" />\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<p><a href=\"http://mediajobnet.com/?id=36039\">Edit Tags</a>&nbsp;</p>\n");
      out.write("<p>\n");
      out.write("  <textarea name=\"tag\" id=\"tag\" cols=\"45\" rows=\"5\" readonly>\n");

                            String ss1 = "select distinct tags from tagsName";
                            ResultSet rs = ob.executeQ(ss1);
                            while(rs.next())
                                {


      out.print(rs.getString("tags"));
      out.write(' ');

                                }

      out.write("\n");
      out.write("  </textarea>\n");
      out.write("</p>\n");
      out.write("<p>Search Results&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"editUrl.jsp\">EditUrl</a></p>\n");
      out.write("<p>\n");
      out.write("  <label for=\"result\"></label>\n");
      out.write("  <textarea name=\"result\" id=\"result\" cols=\"60\" rows=\"10\" readonly>\n");
      out.write(" ");

                            String ss = "select distinct url from urlname";
                            ResultSet rs1 = ob.executeQ(ss);
                            while(rs1.next())
                                {


      out.write('\n');
      out.print(rs1.getString("url"));
      out.write('\n');
      out.write('\n');



                                }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </textarea>\n");
      out.write("</p>\n");
      out.write("\n");

if(request.getMethod().equalsIgnoreCase("POST"))
{
    String s = request.getParameter("search");
    obj.addBookmark(s);
     response.sendRedirect("search.jsp");
    
}
    
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
