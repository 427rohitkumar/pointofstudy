<%@page import="com.pointofstudy.dao.VideoDao" %>
<%@page import="java.util.*" %> 
<%@page import="com.pointofstudy.entities.AllClasses" %> 
<%@page import="com.pointofstudy.entities.AllSubjects" %> 
<%@page import="com.pointofstudy.helper.Myconnection" %> 






<div class="row mt-3">
<div class="card">
    <div class="card-title text-center">Video Post</div>
    <hr>
    <form id="VideoPost" action="VideoPostServlet" method="POST">
              
        
        <div class="form-group mt-2">
            <select name="classId" id="" class="form-control">
                
             <option value="9th" selected disabled>---Select Class--</option>
                     <% 
              VideoDao vd=new VideoDao(Myconnection.connect());
              ArrayList<AllClasses> cList=vd.getAllClasses();
              
               for(AllClasses c:cList)
               
               {
               
            %>
               
                <option value="<%=c.getClass_id()%>"><%=c.getClasses()%></option>
               

           
             <%
                }
                
             %>
              </select>
        </div>
        
        

        <div class="form-group mt-2">
            
             <select name="subjectId" id="" class="form-control">
                  
                <option value="0" selected disabled>---Select Subject--</option>
                
                <% 
              ArrayList<AllSubjects> sList=vd.getAllSubject();
              
               for(AllSubjects s:sList)
               
               {
               
            %>
                   <option value="<%=s.getSubject_id()%>"><%=s.getSubject()%></option>
            <%
                }
                
             %>
            </select>
        </div>
        <div class="form-group mt-2">
            <input name="video_title" type="text" placeholder="Enter Video Title" class="form-control">
        </div>

        <div class="form-group mt-2">
            <textarea name="video_description" type="text" placeholder="Enter Video description maximum 50 word" class="form-control" style="height: 200px;"></textarea>
        </div>

        <div class="form-group mt-2" style="border: 1px solid rgba(128, 128, 128, 0.262);border-radius: 5px;">
            <label name="thumbnail_img" for="image" class="m-1">Select thumbnail of video</label><br>
            <input type="file" class="m-1">
        </div>

        <div class="form-group mt-2" style="border: 1px solid rgba(128, 128, 128, 0.262);border-radius: 5px;">
            <label name="video" for="video" class="m-1">Select Your video content</label><br>
            <input type="file" class="m-1">
        </div>

        <div class="form-group mt-4" >
            <input type="submit" style="width: 200px; height: 40px;float: right;" >
        </div>


    </form>
    <hr>
</div>
</div>

