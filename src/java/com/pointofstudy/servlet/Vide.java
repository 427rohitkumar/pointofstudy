
package com.pointofstudy.servlet;

import com.pointofstudy.dao.VideoDao;
import com.pointofstudy.entities.VideoPost;
import com.pointofstudy.helper.Helper;
import com.pointofstudy.helper.Myconnection;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;

@MultipartConfig
public class Vide extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            int subjectId=Integer.parseInt(request.getParameter("subjectId"));
            int classId=Integer.parseInt(request.getParameter("classId"));
            String videoTitle=request.getParameter("video_title");
            String videoDescription=request.getParameter("video_description");

            Part thumbnailPart=request.getPart("thumbnail_img");
            String videoThumbnail=thumbnailPart.getSubmittedFileName();
            
            Part videoPart=request.getPart("video");
            String video=videoPart.getSubmittedFileName();

            
            VideoPost vdp=new VideoPost(videoTitle,videoDescription,videoThumbnail,video,classId,subjectId);
            
            VideoDao vd=new VideoDao(Myconnection.connect());
            
            if(vd.saveVideoPost(vdp)){
                String videoPath=getServletContext().getRealPath("VideoPost")+ File.separator + video;
                String VideoThumbnailPath=getServletContext().getRealPath("VideoThumbnail")+ File.separator + videoThumbnail;
                Helper.saveFile(videoPart.getInputStream(),videoPath);
                Helper.saveFile(thumbnailPart.getInputStream(),VideoThumbnailPath);
                out.println("done");
            }
                else{
                   out.println("error");
                        
                }

            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
