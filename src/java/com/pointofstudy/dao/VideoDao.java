
package com.pointofstudy.dao;
import com.pointofstudy.entities.AllClasses;
import com.pointofstudy.entities.AllSubjects;
import com.pointofstudy.entities.VideoPost;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
//                System.out.println(subId);
//                System.out.println(subject);
                
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
             stmt.setInt(6, video.getSubjectId());
             
             stmt.executeUpdate();
             f=true;

             
         }
         catch(Exception e){
             e.printStackTrace();
         }
         return f;
     }
     
     
      public  List<VideoPost> getVideoPostByClassId(int studClass){
        
        List<VideoPost> list=new ArrayList<>();
        
          try{
            PreparedStatement p=con.prepareStatement("select *from video_post where vId=?");
            p.setInt(1,studClass);
            ResultSet set=p.executeQuery();
            
            while(set.next()){
                int vid=set.getInt("vId");
                String vTitle=set.getString("vTitle");
                String vdescription=set.getString("vDescription");
                String vthumbnail=set.getString("vthumbnail");
                String vVideo=set.getString("vVideo");
                int classId=set.getInt("classId");
                int subjectId=set.getInt("subjectId");

                
                VideoPost vpost=new VideoPost(vid, vTitle, vdescription, vthumbnail, vVideo,classId,subjectId);
                list.add(vpost);
            }
        } 
        catch(Exception e){
            e.printStackTrace();
        }
      
        
        return list;
    }
   
    
}
