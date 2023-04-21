/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
import Controlador.Control;
import Interfaz.IControl;

/**
 *
 * @author jefri
 */
public class servlet_control extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        int op=Integer.parseInt(request.getParameter("opc"));
        
            if (op==1) login(request, response);
            
            //if (op==2) modcli(request, response);
    }
    
    Control obj = new Control();
    
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           
            
            String name = request.getParameter("nom");
            String pass = request.getParameter("pss");
            
            for (Usuarios u : obj.lisusu()) {
                if (name.equals(u.getUser())) {
                    if (pass.equals(u.getPssw())) {
                        request.setAttribute("dato1", "BIENVENIDO");
                        request.getRequestDispatcher("/tabla_cliente.jsp").forward(request, response);
                    }else{
                        request.setAttribute("dato1", "ERROR CONTRASEÑA");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);}
                    }else{
                            request.setAttribute("dato1", "ERROR USUARIO");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);
                            }
            }
    }
    
    /*protected void modcli(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String nom = request.getParameter("nom");
            String ape = request.getParameter("ape");
            int eda = Integer.parseInt(request.getParameter("eda"));
            int dni = Integer.parseInt(request.getParameter("dni"));
            
            
            
    }*/

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
