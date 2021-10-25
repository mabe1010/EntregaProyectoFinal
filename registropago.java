/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

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
@WebServlet(name = "registropago", urlPatterns = {"/registropago"})
public class registropago extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
         int maximo=0;
            persistencia base = new persistencia();
            
            ResultSet rs=base.consultaSQL("SELECT * FROM registropagomushupet where id IN (SELECT MAX(id) FROM registropagomushupet)");
            while(rs.next())
                        maximo=rs.getInt(1);
           maximo++; 
           //inserto el dato
            
           base.insertarSQL("INSERT INTO registropagomushupet (id,producto,cantidad,total,nombrecliente,apellidocliente,correo,telefono,direccion,barrio,codpostal,tarjeta,titular,dni)VALUES("+maximo+",'"+request.getParameter("nomproducto")+"','"+request.getParameter("cantproducto")+"','"+request.getParameter("totalpago")+"','"+request.getParameter("nombrecliente")+"','"+request.getParameter("apellidocliente")+"','"+request.getParameter("correo")+"','"+request.getParameter("telefono")+"','"+request.getParameter("direccion")+"','"+request.getParameter("barrio")+"',"+request.getParameter("codigopostal")+","+request.getParameter("tarjetapago")+",'"+request.getParameter("titular")+"',"+request.getParameter("dni")+")");
           response.sendRedirect("compraefectuada.html"); 
           
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
