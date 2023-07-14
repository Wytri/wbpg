/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Controlador;

import java.util.*;
import modelo.*;

/**
 *
 * @author henry
 */
public class prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Control c = new Control();
        
        List<Funciones> lisfunCOD = c.lisfunCOD(10000);
        List<Pelicula> lispeUni = c.lispeUni("P0001");
        int fun=0;
        int DNI= 12345678;
        double cost=0;
        String sala = "JJS";
        
        List<Boleto> lisbol = c.NUMBOL(4);
        System.out.println("XD");
        String todo="";
        
        for(Boleto b:lisbol){
            System.out.println(b.getBoleta());
            todo = todo + b.getBoleta();
        }
        
        System.out.println(todo);
//        
//        for(Funciones f: lisfunCOD){
//            System.out.println(f.getFuncion()+"///"+f.getInicio()+"///"+f.getSala()+"///");
//            fun = f.getFuncion();
//            sala = f.getSala();
//        }
//        
//        for(Pelicula p: lispeUni){
//            System.out.println(p.getIdpeli()+"///"+p.getNom()+"///"+p.getCosto()+"///");
//            cost = p.getCosto();
//        }
//        
//        //c.addAsiDetBol(29, "VIP", sala, fun, 400001, DNI, cost);
//        
//        
//        int [] asibol = {1,2,3,4,5};
//        
//        for(int i=0;i<=asibol.length-1;i++){
//            System.out.println(asibol[i]+"--"+"VIP"+"--"+sala+"--"+fun+"--"+0+"--"+DNI+"--"+cost);
////            c.addAsiDetBol(asibol[i], "REG", sala, fun, 0, DNI, cost);
//        }
        
        
        
        
        //c.addAsiDetBol(18, "VIP", sala, 10000, 400004, 65747965, 32.00);
        
//        for (Detalle d: c.lisdeta(1000000)) {
//            System.out.println(d.boleta);
//        }
        
//        Detalle det = new Detalle(10000, 10, 400003);
//        
//        c.adddeta(det);
        
//        for (Detalle pas : c.lisasifun(10001)) {
//            System.out.println(pas.getFuncion()+" "+pas.getSala()+" "+pas.getAsi());
//        }
//        
//        for (DetalleComida d: c.listadetalleorden(400000)) {
//            System.out.println(d.getCombo());
//        }
//        
//        
//        Funciones fecha = c.Horario("10000");
//        System.out.println(String.valueOf(fecha.getInicio()));
        
        
        //c.addusuario(new Usuarios("T0012", "fer", "fer24"));
        //c.deluser("T0012");
        //c.deluser("T0005");
        //c.deltrab("T0005");
        
//        for (grafico x: c.graficopelicula()) {
//            System.out.println(x.getNombre()+x.getCantidad()+x.getTotal());
//        }

//        for (grafico x: c.graficomesa(2023)) {
//            System.out.println(x.getNombre()+x.getCantidad()+x.getTotal());
//        }
    }
    
}
