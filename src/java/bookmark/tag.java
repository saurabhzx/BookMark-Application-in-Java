/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bookmark;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lenovo
 */
public class tag {
    bookMarkData obj = new bookMarkData();
    ResultSet rs;

    public void addBookmark(String s) throws Exception
    {
        String[] item = s.split(",");
         try
        {


         obj.executeU("insert into urlname value('"+item[0]+"')");
       
       
        for(int i = 1 ; i < item.length ; i++)
        {
            
                obj.executeU("insert into tag_url value('" + item[i] + "','" + item[0] + "')");
                obj.executeU("insert into tagsName value('"+item[i]+"')");

           

        }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }

    }


    

    public void addtag(String s) throws Exception
    {
        //rs = obj.executeQ("select * from tagsName where url='"+s+"'");
          //       if(!rs.next())
                obj.executeU("insert into tagsName value('"+s+"')");


    }
    public void addUrl(String s) throws Exception
    {
        //rs = obj.executeQ("select * from urlName where url='"+s+"'");
          //       if(!rs.next())
                obj.executeU("insert into urlname value('"+s+"')");
    }
    public void deleteTag(String s) throws Exception
    {
        obj.executeU("delete from tagsName where tags='"+s+"'" );
        obj.executeU("delete from tag_url where tag='"+s+"'" );
    }
    public void deleteUrl(String s) throws Exception
    {
        obj.executeU("delete from urlname where url='"+s+"'" );
        obj.executeU("delete from tag_url where url='"+s+"'" );
    }
    public void tagUpdate(String s1,String s2) throws Exception
    {
        obj.executeU("update tagsName set tags='"+s1+"' where tags='"+s2+"'");
        obj.executeU("update tag_url set tag='"+s1+"' where tag='"+s2+"'");
    }

    public void urlUpdate(String s1,String s2) throws Exception
    {
        obj.executeU("update urlname set url='"+s1+"' where url='"+s2+"'");
        obj.executeU("update tag_url set url='"+s1+"' where url='"+s2+"'");
    }

    




}
