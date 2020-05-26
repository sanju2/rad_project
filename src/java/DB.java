
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Niwanthi Dilupama
 */
public class DB {
     private static Connection con;
    
    public static Connection connect()throws Exception{
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String url ="jdbc:mysql://localhost:3306/zoom_cab_service";
        con = DriverManager.getConnection(url,"root","");
    
        return con;
    
    
}
}
