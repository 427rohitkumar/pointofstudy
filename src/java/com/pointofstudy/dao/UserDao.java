
package com.pointofstudy.dao;
import com.pointofstudy.entities.User;
import java.sql.*;

public class UserDao {
    private Connection con;
    
    public UserDao(Connection con){
        this.con=con;
    }
    
    public boolean saveUser(User user){
        boolean f=false;
        
        try{
           String Query="insert into user(studName,studF_Name,studF_Contact,studContact,studEmail,studPassword,studGender,studAddress,studClass) values(?,?,?,?,?,?,?,?,?)";
           PreparedStatement pstmt=this.con.prepareStatement(Query);
           pstmt.setString(1,user.getStudName());
           pstmt.setString(2,user.getStudF_Name());
           pstmt.setString(3,user.getStudF_Contact());
           pstmt.setString(4,user.getStudContact());
           pstmt.setString(5,user.getStudEmail());
           pstmt.setString(6,user.getStudPassword());
           pstmt.setString(7,user.getStudGender());
           pstmt.setString(8,user.getStudAddress());
           pstmt.setString(9,user.getStudClass());
           
           pstmt.executeUpdate();
           
           f=true;
           
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
        // get user by useremail and userPassword......
    
      public User getUserEmailAndPassword(String email,String password){
        User user=null;
        
        
        try{
            String query="Select *from user where studEmail=? AND studPassword=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet set=pstmt.executeQuery();
            
            if(set.next()){
                
                user=new User();
                
                
//             retriving and storing data from db

               int user_id=set.getInt("id");
               String sname=set.getString("studName");
               String fname=set.getString("studF_Name");
               String fcontact=set.getString("studF_Contact");
               String scontact=set.getString("studContact");
               String semail=set.getString("studEmail");
               
               String sgender=set.getString("studGender");
               String saddress=set.getString("studAddress");
               String sclass=set.getString("studClass");
               Timestamp s_reg_date=set.getTimestamp("stud_Reg_Date");
               
               
               //               set to user object
               user.setId(user_id);
               user.setStudName(sname);
               user.setStudF_Name(fname);
               user.setStudF_Contact(fcontact);
               user.setStudContact(scontact);
               user.setStudEmail(semail);
               user.setStudGender(sgender);
               user.setStudAddress(saddress);

               user.setStudClass(sclass);
               user.setStud_Reg_Date(s_reg_date);
               

              
               
               
               

               

              

               
            }
            
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
        
        
        return user;
        
    }
    
  
}
