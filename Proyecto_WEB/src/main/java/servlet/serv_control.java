/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.Control;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Asiento;
import modelo.Boleto;
import modelo.Cliente;
import modelo.Usuarios;

/**
 *
 * @author henry
 */
public class serv_control extends HttpServlet {
    static SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int op=Integer.parseInt(request.getParameter("opc"));
        
            if (op==1) login(request, response);
            if (op==2) lisPeli(request, response);
            if (op==3) lisComida(request, response);
            
            if (op==5) lisBoleta(request, response);
            if (op==6) lisDetalle(request, response);
            if (op==7) lisOrden(request, response);
//            if (op==3) mod(request, response);
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
                        request.getRequestDispatcher("/crud.jsp").forward(request, response);
                    }else{
                        request.setAttribute("dato1", "ERROR CONTRASEÑA");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);}
                    }else{
                            request.setAttribute("dato1", "ERROR USUARIO");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);
                            }
            }
    }
    
    protected void lisPeli(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String cod=request.getParameter("cod");           
        //almacenar temporalmente la lista y llamar a la pagagina Factura
        request.setAttribute("codigo", cod);
        request.setAttribute("dato", obj.lispeli(cod));
        String pag="/pagPeliculas.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void lisComida(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("cod"));           
        String opcion=request.getParameter("o");      
        if (opcion.equals("1")) {
            request.setAttribute("dato", obj.lisdetcom(cod));
        }else if(opcion.equals("2")) {
            request.setAttribute("dato", obj.lisdetpre(cod));
        }
        //almacenar temporalmente la lista y llamar a la pagagina Factura
        request.setAttribute("codigo", cod);
        request.setAttribute("o", opcion);
        String pag="/pagDetalleComida.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    
    protected void lisBoleta(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("cod"));           
        request.setAttribute("dato", obj.lisboleta(cod));
        //almacenar temporalmente la lista y llamar a la pagagina Factura
        request.setAttribute("codigo", cod);
        String pag="/pagBoleta.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void lisDetalle(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("cod"));    
        int dni=Integer.parseInt(request.getParameter("dni"));  
        request.setAttribute("dato", obj.listadetafun(cod));
        //almacenar temporalmente la lista y llamar a la pagagina Factura
        request.setAttribute("codigo", cod);
        request.setAttribute("dni", dni);
        String pag="/pagDetalle.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void lisOrden(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        int cod=Integer.parseInt(request.getParameter("cod"));    
        int dni=Integer.parseInt(request.getParameter("dni"));  
        int deta=Integer.parseInt(request.getParameter("detalle"));  
        request.setAttribute("dato", obj.listadetalleorden(cod));
        //almacenar temporalmente la lista y llamar a la pagagina Factura
        request.setAttribute("codigo", cod);
        request.setAttribute("dni", dni);
        request.setAttribute("detalle", deta);
        String pag="/pagOrden.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
//    
//    protected void modcli(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
//            String Nom = request.getParameter("nom");
//            String Ape = request.getParameter("ape");
//            int Eda = Integer.parseInt(request.getParameter("eda"));
//            int Dni = Integer.parseInt(request.getParameter("dni"));
//            //obj.modcli(new Cliente(Dni, Nom, Ape));/////////ya no hay edad asi que no puedo agregar
//            request.setAttribute("dato1", "ERROR");
//            request.getRequestDispatcher("/modificar.jsp").forward(request, response);
//    }
//    
//    void adicionarBoleta(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
//        Control obj=new Control();
//        //HttpSession ses=request.getSession();
//        String nom=request.getParameter("txtnombres");
//        String ape=request.getParameter("txtapellidos");
//        int dni=Integer.parseInt(request.getParameter("txtdni"));
//        int edad=Integer.parseInt(request.getParameter("txtedad"));
//        //int asiento=Integer.parseInt(request.getParameter("tasiento"));
//        int asiento=9;
//        double pago=Integer.parseInt(request.getParameter("txtpago"));
//        String idpeli=request.getParameter("lstpelicula");
//        String idsala="S0001";
//        
//        List<Boleto> a = obj.codsbole();
//        String idBol= a.get(0).getBoleta();
//        
//        
//        //String codm=(String)ses.getAttribute("codmed");
//        
//        //Cliente cl = new Cliente(dni, nom, ape);
//        //obj.addcli(cl);
//        //Asiento as = new Asiento(asiento, idsala);
//        //obj.addasi(as);
//        
//        //Boleto b= new Boleto(idBol, dni, asiento, idsala, idpeli, sd.format(new Date()), pago);
//        //obj.addbbb(b);
//        String pag="/registro.jsp";
//        request.getRequestDispatcher(pag).forward(request,
//        response);
//        }
//    
//    
////    protected void mod(HttpServletRequest request, HttpServletResponse response)
////        throws ServletException, IOException {
////        int d=(int)request.getAttribute("data");
////        int d=Integer.parseInt(request.getParameter("dni"));
////        String nom="";
////        String ape="";
////        int eda=0;
//            
////            
////        Cliente c;
////        c=new Cliente(11111111, "XSSSSS", "WDWD", 12);
////        obj.modcli(c);
////        request.setAttribute("dato1", "xxxxxxx");
////        request.getRequestDispatcher("/modificar.jsp").forward(request, response);
////    } 

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
