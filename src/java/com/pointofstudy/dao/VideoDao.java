
package com.pointofstudy.dao;
import com.pointofstudy.entities.AllClasses;
import com.pointofstudy.entities.AllSubjects;
import com.pointofstudy.entities.VideoPost;
import java.sql.*;
import java.util.ArrayList;

public class VideoDao {
    private Connection con;

    public VideoDao(Connection con) {
        this.con = con;
    }
    
    
    public ArrayList<AllSubjects> getAllSubject(){
        ArrayList<AllSubjects> subjectlist=new ArrayList<>();
        
        try{
            
            String Query="select *from allsubjects";
            Statement stmt=this.con.createStatement();
            ResultSet set=stmt.executeQuery(Query);
            
            while(set.next()){
                int subId=set.getInt("id");
                String subject=set.getString("subject");
                
                AllSubjects sub=new AllSubjects(subId,subject);
                subjectlist.add(sub);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return subjectlist;
    }
    
    
    
     public ArrayList<AllClasses> getAllClasses(){
        ArrayList<AllClasses> classlist=new ArrayList<>();
        
        try{
            
            String Query="select *from allclasses";
            Statement stmt=this.con.createStatement();
            ResultSet set=stmt.executeQuery(Query);
            
            while(set.next()){
                int classId=set.getInt("id");
                String classes=set.getString("class");
                
                AllClasses cl=new AllClasses(classId,classes);
                classlist.add(cl);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return classlist;
    }
     
     
     public boolean saveVideoPost(VideoPost video){
         boolean f=false;
         
         try{
             
             String Query="insert into video_post(vTitle,vDescription,vthumbnail,vVideo,classId,subjectId) values(?,?,?,?,?,?)";
             PreparedStatement stmt=this.con.prepareStatement(Query);
             stmt.setString(1, video.getvTitle());
             stmt.setString(2, video.getvDescription());
             stmt.setString(3, video.getVthumbnail());
             stmt.setString(4, video.getvVideo());
             stmt.setInt(5, video.getClassId());
             stmt.setInt(6, video.getClassId());
             
             stmt.executeUpdate();
             f=true;

             
         }
         catch(Exception e){
             e.printStackTrace();
         }
         return f;
     }
    
}
