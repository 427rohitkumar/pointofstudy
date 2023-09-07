
package com.pointofstudy.helper;
import java.sql.*;

public class Myconnection {
    private static Connection con;
    
    public static Connection connect(){
       String url="jdbc:mysql://localhost:3306/pointofstudytwo";
       String username="root";
       String password="admin";
       
       Connection con=null;
       
       try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           con=DriverManager.getConnection(url,username,password);
           
           if(con!=null){
               System.out.println("Connection Success");
           }else{
               System.out.println("Connection not Success");
           }
               
       }
       catch(Exception e){
           e.printStackTrace();
       }
       
                
        return con;
    }
    
}
