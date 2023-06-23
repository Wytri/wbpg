/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.Control;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.*;

/**
 *
 * @author jefri
 */
public class tienda extends HttpServlet {
    Control obj=new Control();
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
        int op=Integer.parseInt(request.getParameter("opc"));
        if(op==1)Detalle(request, response);
        if(op==2)Carrito(request, response);
        if(op==3)Borrar(request, response);
//        if(op==4)Login(request, response);
//        if(op==5)graba(request, response);
//        if(op==6)anula(request, response);
//        if(op==7)Registrar(request, response);
        if(op==8)DetalleCombo(request, response);
        if(op==9)CarritoCombo(request, response);
        if(op==10)BorrarCombo(request, response);
    }
    
    protected void Detalle(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("id"));
        System.out.println(cod);
        request.setAttribute("dato", obj.busProductos(cod).get(0));
        String pag="/pagDetalleTienda.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void Carrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("coda"));
        int cant=Integer.parseInt(request.getParameter("cantidad"));
        Productos a=obj.busProductos(cod).get(0);
        CompraProducto c=new CompraProducto();
        HttpSession ses=request.getSession();
        //pasar el articulo seleccionado a compra para luego añadirlo al carrito
        c.setNombre(a.getNombre());
        c.setDescr(a.getDescr());
        c.setProd(cod);
        c.setDescr(a.getDescr());
        c.setPrecio(a.getPrecio());
        c.setCantidad(cant);
        List<CompraProducto> lista;
        
        if(ses.getAttribute("canasta")==null) lista=new ArrayList();
        
        else
            lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta");
            
        lista.add(c);
        ses.setAttribute("canasta", lista);
        String pag="/pagCompraProductos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void Borrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("ind"));
        HttpSession ses=request.getSession();

        List<CompraProducto> lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta");
        lista.remove(id);
        ses.setAttribute("canasta", lista);
        String pag="/pagCompraProductos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void DetalleCombo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("id"));
        System.out.println(cod);
        request.setAttribute("dato", obj.busCombos(cod).get(0));
        String pag="/pagDetalleCombos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void CarritoCombo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("coda"));
        int cant=Integer.parseInt(request.getParameter("cantidad"));
        Productos a=obj.busProductos(cod).get(0);
        CompraProducto c=new CompraProducto();
        HttpSession ses=request.getSession();
        //pasar el articulo seleccionado a compra para luego añadirlo al carrito
        c.setNombre(a.getNombre());
        c.setDescr(a.getDescr());
        c.setProd(cod);
        c.setDescr(a.getDescr());
        c.setPrecio(a.getPrecio());
        c.setCantidad(cant);
        List<CompraProducto> lista;
        
        if(ses.getAttribute("canasta")==null) lista=new ArrayList();
        
        else
            lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta");
            
        lista.add(c);
        ses.setAttribute("canasta", lista);
        String pag="/pagCompraProductos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void BorrarCombo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("ind"));
        HttpSession ses=request.getSession();

        List<CompraProducto> lista=(ArrayList<CompraProducto>)ses.getAttribute("canasta");
        lista.remove(id);
        ses.setAttribute("canasta", lista);
        String pag="/pagCompraProductos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
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
