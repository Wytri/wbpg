/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Detalle extends Boleto{
    public int funcion;
    public String sala;
    public int asi;
    public int orden;

    public Detalle() {
    }

    public Detalle(int detalle, int funcion, String sala, int asi, int orden) {
        this.detalle = detalle;
        this.funcion = funcion;
        this.sala = sala;
        this.asi = asi;
        this.orden = orden;
    }

    public Detalle(int funcion, String sala, int asi, int orden, String boleta, int detalle, int dni, double pago) {
        super(boleta, detalle, dni, pago);
        this.funcion = funcion;
        this.sala = sala;
        this.asi = asi;
        this.orden = orden;
    }
    
    public Detalle(int funcion, String sala, int asi, int orden, String boleta, int detalle, double pago) {
        super(boleta, detalle, pago);
        this.funcion = funcion;
        this.sala = sala;
        this.asi = asi;
        this.orden = orden;
    }
    
    public Detalle(int funcion, String sala, int asi, int orden) {
        this.funcion = funcion;
        this.sala = sala;
        this.asi = asi;
        this.orden = orden;
    }

    /**
     * @return the funcion
     */
    public int getFuncion() {
        return funcion;
    }

    /**
     * @param funcion the funcion to set
     */
    public void setFuncion(int funcion) {
        this.funcion = funcion;
    }

    /**
     * @return the sala
     */
    public String getSala() {
        return sala;
    }

    /**
     * @param sala the sala to set
     */
    public void setSala(String sala) {
        this.sala = sala;
    }

    /**
     * @return the asi
     */
    public int getAsi() {
        return asi;
    }

    /**
     * @param asi the asi to set
     */
    public void setAsi(int asi) {
        this.asi = asi;
    }

    /**
     * @return the orden
     */
    public int getOrden() {
        return orden;
    }

    /**
     * @param orden the orden to set
     */
    public void setOrden(int orden) {
        this.orden = orden;
    }
}
