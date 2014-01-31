/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bookmark;
import java.sql.*;
/**
 *
 * @author lenovo
 */
public class bookMarkData {
    Connection cn;
    Statement st;
    ResultSet rs;
    public bookMarkData()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection("jdbc:mysql://ec2-23-21-211-172.compute-1.amazonaws.com:3306/saurabhbhatiazx","saurabhbhatiazx","52260sau");
        st = cn.createStatement();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        }
    public void executeU(String s)throws Exception
    {
        st.executeUpdate(s);
    }
    public ResultSet executeQ(String s)throws Exception
    {
        rs = st.executeQuery(s);
        return rs;
    }

}

