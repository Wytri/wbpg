/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.Control;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Asiento;
import modelo.Boleto;
import modelo.*;
import modelo.Pelicula;
import modelo.Trabajadores;
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
            if (op==4) actualizarCombo(request, response);  
            if (op==5) lisBoleta(request, response);
            if (op==6) lisDetalle(request, response);
            if (op==7) lisOrden(request, response);
      
            if (op==8) adicionarBoleta(request, response);
            if (op==9) adicionarPeli(request, response);
            if (op==10) eliminarPeli(request, response);
            if (op==11) actualizarPeli(request, response);
            if (op==12) actualizacionPeli(request, response);
            
            if (op==13) cambiarCombo(request, response);
            if (op==14) adicionarCombo(request, response);
            
            if (op==15) modificarTrabajadores(request, response);   
            if (op==16) agregarTrabajadores(request, response);   
            if (op==17) eliminarTrabajadores(request, response);   
            
            if (op==18) añadirProducto(request, response);   
            if (op==19) actualizarPro(request, response);
            if (op==20) cambiarPro(request, response); 
            
            if (op==21) codpeliAfunc(request, response);
            if (op==22) codFunAseat(request, response);
            if (op==23) Asibol(request, response);
            if (op==24) metodoFinal(request, response);
            if (op==25) BOLlogin(request, response);
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

    void adicionarBoleta(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
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
    
    protected void modificarTrabajadores(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String cod=request.getParameter("codigo");  
        String nom=request.getParameter("nombre");
        String ape=request.getParameter("ape");
        String fe=request.getParameter("fe");
        
        String usuario=request.getParameter("user");
        String contra=request.getParameter("pss");
        
        Trabajadores t = new Trabajadores(cod, nom, ape, fe);
        Usuarios u = new Usuarios(cod, usuario, contra);
        
        obj.modtrabajadores(t);
        
        obj.modusuario(u);
        
        String pag="/tablasbbdd.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void agregarTrabajadores(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String cod=request.getParameter("codigo");  
        String nom=request.getParameter("nombre");
        String ape=request.getParameter("ape");
        String fe=request.getParameter("fe");
        
        String usuario=request.getParameter("user");
        String contra=request.getParameter("pss");
        
        Usuarios u = new Usuarios(cod, usuario, contra);
        Trabajadores t = new Trabajadores(nom, ape, fe);
        
        obj.addtrabajador(t);
        obj.addusuario(u);
        
        String pag="/tablasbbdd.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void eliminarTrabajadores(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String co=request.getParameter("cod");  
        
        obj.deluser(co);
        obj.deltrab(co);
        
        String pag="/tablasbbdd.jsp";
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
    
    void adicionarCombo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        

        String nom=request.getParameter("txtnom");
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        String des=request.getParameter("txtdes");

        Combo p=new Combo(nom, costo, des);
        
        obj.addCombo(p);
        String pag="pagComida.jsp";
        request.getRequestDispatcher(pag).forward(request,
        response);
        }
    
    protected void actualizarCombo(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession ses=request.getSession();
        int codCombos=Integer.parseInt(request.getParameter("cod")); 
        ses.setAttribute("codCombos", codCombos);
        request.setAttribute("codigo", codCombos);
        request.setAttribute("dato", obj.busCombos(codCombos));
        String pag="/pagUpdateCombos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    void cambiarCombo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        int idcombo=(int)ses.getAttribute("codCombos");
        
        String nom=request.getParameter("txtnom");
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        String des=request.getParameter("txtdes");
        Combo p=new Combo(idcombo, nom, costo, des);
        
        obj.modCombos(p);
        String pag="pagComida.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    void añadirProducto(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{

        String nom=request.getParameter("txtnom");
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        String des=request.getParameter("txtdes");

        Productos p=new Productos(nom, costo, des);
        
        obj.addProducto(p);
        String pag="pagComida.jsp";
        request.getRequestDispatcher(pag).forward(request,
        response);
    }
    
    protected void actualizarPro(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession ses=request.getSession();
        int codProductos=Integer.parseInt(request.getParameter("cod")); 
        ses.setAttribute("codPro", codProductos);
        request.setAttribute("codigo", codProductos);
        request.setAttribute("dato", obj.busProductos(codProductos));
        String pag="/pagUpdateProductos.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    void cambiarPro(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        int idpro=(int)ses.getAttribute("codPro");
        
        String nom=request.getParameter("txtnom");
        double costo=Double.parseDouble(request.getParameter("txtcosto"));
        String des=request.getParameter("txtdes");
        Productos p=new Productos(idpro, nom, costo, des);
        
        obj.modProductos(p);
        String pag="pagComida.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    void codpeliAfunc(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        String codP= request.getParameter("codP");
        ArrayList<Pelicula> listUnPe= (ArrayList<Pelicula>) obj.lispeUni(codP);
        
        //session para el registro de cliente
        ses.setAttribute("codigoPelicula", listUnPe.get(0).getIdpeli());
        ////////////////////////////////////////////////
        
        ses.setAttribute("ListUnaPeli", listUnPe);
        request.setAttribute("datoF", obj.lisSalaF(codP));
        
        String pag="pagFuncPeli.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    void codFunAseat(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        int codD = Integer.parseInt(request.getParameter("codF"));
        ArrayList<Funciones> lisfunpeli = (ArrayList)obj.lisfunCOD(codD);
        
        //session para registro de cliente
        ses.setAttribute("codigoFuncion", lisfunpeli.get(0).getFuncion());
        ses.setAttribute("codigoSala", lisfunpeli.get(0).getSala());
        ////////////////////////////////////////////////
        
        ses.setAttribute("lisfunpeli", lisfunpeli);
        request.setAttribute("listAsi", obj.lisasifun(codD));
        
        String pag="pagBOL_AddAsiento.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }

    
        void Asibol(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        
        HttpSession ses=request.getSession();
        String nombre = request.getParameter("nombre");
        String tipo = request.getParameter("tipoAsi");
        int[] Asi_bol=obj.Asientos_bol(nombre);
        
        ses.setAttribute("Asi_bol", Asi_bol);
        ses.setAttribute("tipoAsi", tipo);
        
        String pag="pagBOL_AddLogin.jsp";
        request.getRequestDispatcher(pag).forward(request, response);
    }
        
        void metodoFinal(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        String idAsiento= request.getParameter("tasiento");
        HttpSession ses=request.getSession();
        //session para registro de cliente
        ses.setAttribute("idAsiento", idAsiento);
        ////////////////////////////////////////////////
        
    }
        
    protected void BOLlogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String name = request.getParameter("correo");
            int pass = Integer.parseInt(request.getParameter("pss"));
            boolean CLI = false;
            
            for (Cliente c : obj.liscli()) {
//                System.out.println("DNI:"+c.dni+"--correo:"+c.correo+"--cumple:"+c.birth+"--nombre:"+c.nombre+"--telf:"+c.tel+"\n");
                if (name.equals(c.correo)) {
                    CLI = true;
                    System.out.println("go correo");
                    if (pass == c.dni) {
                        System.out.println("go dni");
                        HttpSession ses=request.getSession();
                        ses.setAttribute("DNI", pass);
                        request.setAttribute("dato1", "BIENVENIDO");
                        request.getRequestDispatcher("/pagTiendaVirtual.jsp").forward(request, response);
                    }else{
                        System.out.println("DNI no encontrado XD");
                        request.setAttribute("dato1", "ERROR CONTRASEÑA");
                        request.getRequestDispatcher("/pagBOL_AddLogin.jsp").forward(request, response);
                    }
//                    if(pass != c.dni){
//                        System.out.println("DNI no encontrado XD");
//                    }
                }else{
                    CLI = false;
//                    System.out.println("No encontrado");
                }
                

                
            }
            
            if(CLI == false){
                System.out.println("NOOOO USUARIO");
                request.setAttribute("dato1", "ERROR USUARIO");
                request.getRequestDispatcher("/pagBOL_AddLogin.jsp").forward(request, response);
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
