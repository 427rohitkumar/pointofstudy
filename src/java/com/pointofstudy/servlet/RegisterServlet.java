
package com.pointofstudy.servlet;

import com.pointofstudy.dao.UserDao;
import com.pointofstudy.entities.User;
import com.pointofstudy.helper.Myconnection;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
public class RegisterServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
            
            String sname=request.getParameter("name");
            String fname=request.getParameter("fname");
            String fcontact=request.getParameter("fcontact");
            String scontact=request.getParameter("scontact");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String address=request.getParameter("address");
            String gender=request.getParameter("gender");
            String sclass=request.getParameter("class");
            
            User user=new User(sname,fname,fcontact,scontact,email,password,address,gender,sclass);
            
            
            UserDao dao=new UserDao(Myconnection.connect());
            
            if(dao.saveUser(user)){
                out.println("done");
            }else{
                out.println("fail");
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
