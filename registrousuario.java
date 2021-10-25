package Clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Clases.persistencia;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Usuario
 */
@WebServlet(urlPatterns = {"/registrousuario"})
public class registrousuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int maximo=0;
            persistencia base = new persistencia();
            
            ResultSet rs=base.consultaSQL("SELECT * FROM mushupetusuarios where id IN (SELECT MAX(id) FROM mushupetusuarios)");
            while(rs.next())
                        maximo=rs.getInt(1);
           maximo++; 
           //inserto el dato
            
           base.insertarSQL("INSERT INTO mushupetusuarios (id,nombre,apellido,dni,correo,contrase)VALUES("+maximo+",'"+request.getParameter("nombre")+"','"+request.getParameter("apellido")+"',"+request.getParameter("dni")+",'"+request.getParameter("correo")+"',"+request.getParameter("contrase")+")");
           response.sendRedirect("login.html"); 
           
       } 
        catch (Exception e)
        {
        System.err.println("Got an exception!");
        System.err.println(e.getMessage());
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
