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
import modelo.Pelicula;
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
            if (op==3) adicionarBoleta(request, response);
            if (op==4) adicionarPeli(request, response);
            if (op==5) eliminarPeli(request, response);
            if (op==6) actualizarPeli(request, response);
            if (op==7) actualizacionPeli(request, response);
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

    void adicionarBoleta(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        Control obj=new Control();
        HttpSession ses=request.getSession();
        String nom=request.getParameter("txtnombres");
        String ape=request.getParameter("txtapellidos");
        int dni=Integer.parseInt(request.getParameter("txtdni"));
        int edad=Integer.parseInt(request.getParameter("txtedad"));
        int asiento=Integer.parseInt(request.getParameter("tasiento"));

        double pago=Integer.parseInt(request.getParameter("txtpago"));
        String idpeli=(String)ses.getAttribute("codPeli");
        String idsala=(String)ses.getAttribute("idsala");
        
        List<Boleto> a = obj.codsbole();
        String idBol= a.get(0).getBoleta();
        
        
        //String codm=(String)ses.getAttribute("codmed");
        
        /*Cliente cl = new Cliente(dni, nom, ape, edad);
        obj.addcli(cl);*/
        Asiento as = new Asiento(asiento, "EST", idsala);
        obj.addasi(as);
        
        Boleto b= new Boleto(idBol, 1, dni, pago);
        obj.addbbb(b);
        String pag="/pagRegistrar.jsp";
        request.getRequestDispatcher(pag).forward(request,
        response);
        }
    
    void adicionarPeli(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        Control obj=new Control();
        HttpSession ses=request.getSession();
        String codSala=(String)ses.getAttribute("codCate");
        String idCat=(String)ses.getAttribute("codCate");
        String nom=request.getParameter("txtnom");
        int anio=Integer.parseInt(request.getParameter("txtanio"));
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        double duracion=Double.parseDouble(request.getParameter("txtdura"));
        String clas=request.getParameter("listCla");
        String des=request.getParameter("txtsin");


        double pago=Double.parseDouble(request.getParameter("txtcosto"));

        Pelicula p=new Pelicula(idCat, nom, anio, duracion, costo, clas, des);
        
        obj.addpeli(p);
        String pag="serv_control?opc=2&cod="+codSala;
        request.getRequestDispatcher(pag).forward(request,
        response);
        }
    
    void eliminarPeli(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        Control obj=new Control();
        HttpSession ses=request.getSession();
        String codSala=(String)ses.getAttribute("codCate");
        String id=request.getParameter("id");
        String pag="serv_control?opc=2&cod="+codSala;
        obj.delpeli(id);
        request.getRequestDispatcher(pag).forward(request, response);
        }
    
    protected void actualizarPeli(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession ses=request.getSession();
        String codPeli=request.getParameter("cod"); 
        ses.setAttribute("codPeli", codPeli);
        request.setAttribute("codigo", codPeli);
        request.setAttribute("dato", obj.buspel(codPeli));
        String pag="/pagUpdatePeli.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    void actualizacionPeli(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        Control obj=new Control();
        HttpSession ses=request.getSession();
        String idPeli=(String)ses.getAttribute("idPelic");
        String idCat=(String)ses.getAttribute("codCate");
        String nom=request.getParameter("txtnom");
        int anio=Integer.parseInt(request.getParameter("txtanio"));
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        double duracion=Double.parseDouble(request.getParameter("txtdura"));
        String clas=request.getParameter("listCla");
        String des=request.getParameter("txtsin");
        Pelicula p=new Pelicula(idPeli, idCat, nom, anio, duracion, costo, clas, des);
        
        obj.modpeli(p);
        String pag="serv_control?opc=2&cod="+idCat;
        request.getRequestDispatcher(pag).forward(request, response);
        }
    
    
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
