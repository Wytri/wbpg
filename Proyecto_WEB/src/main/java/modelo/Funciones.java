/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Funciones extends Detalle{
    private String inicio;
    private String peli;

    public Funciones() {
    }

    public Funciones(int funcion, String inicio, String peli, String sala) {
        this.funcion = funcion;
        this.inicio = inicio;
        this.peli = peli;
        this.sala = sala;
    }

    public Funciones(String inicio, String peli, int funcion, String sala, int asi, int orden, String boleta, int detalle, int dni, double pago) {
        super(funcion, sala, asi, orden, boleta, detalle, dni, pago);
        this.inicio = inicio;
        this.peli = peli;
    }
    
    public Funciones(String inicio, int funcion, String sala, int asiento, int orden) {
        super(funcion,sala,asiento,orden);
        this.inicio = inicio;
    }
    
    /**
     * @return the inicio
     */
    public String getInicio() {
        return inicio;
    }

    /**
     * @param inicio the inicio to set
     */
    public void setInicio(String inicio) {
        this.inicio = inicio;
    }

    /**
     * @return the peli
     */
    public String getPeli() {
        return peli;
    }

    /**
     * @param peli the peli to set
     */
    public void setPeli(String peli) {
        this.peli = peli;
    }
}
