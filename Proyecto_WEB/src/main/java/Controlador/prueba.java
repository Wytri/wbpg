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
        
        for (DetalleComida d: c.listadetalleorden(400000)) {
            System.out.println(d.getCombo());
        }
    }
    
}