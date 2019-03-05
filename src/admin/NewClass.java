/*Bhuvnesh Sain
  Btech
  RNB Global University
 */
package admin;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class NewClass {
    
    public static Connection getConnection() 
            throws ClassNotFoundException, SQLException
    {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/rgu";
            Connection con = DriverManager.getConnection(url,"root","");
            return con;
    }
    
}
