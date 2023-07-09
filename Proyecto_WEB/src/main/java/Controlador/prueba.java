/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Controlador;

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
        for (Detalle d: c.lisdeta(1000000)) {
            System.out.println(d.boleta);
        }
        
//        Detalle det = new Detalle(10000, 10, 400003);
//        
//        c.adddeta(det);
        
        for (Detalle pas : c.lisasifun(10001)) {
            System.out.println(pas.getFuncion()+" "+pas.getSala()+" "+pas.getAsi());
        }
//        
//        for (DetalleComida d: c.listadetalleorden(400000)) {
//            System.out.println(d.getCombo());
//        }
//        
//        
        Funciones fecha = c.Horario("10000");
        System.out.println(String.valueOf(fecha.getInicio()));
        
        
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
