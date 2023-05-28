/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class DetalleCombo {
    private int detcom;
    private int com;
    private int cantidad;

    public DetalleCombo() {
    }

    public DetalleCombo(int detcom, int com, int cantidad) {
        this.detcom = detcom;
        this.com = com;
        this.cantidad = cantidad;
    }

    
    
    /**
     * @return the detcom
     */
    public int getDetcom() {
        return detcom;
    }

    /**
     * @param detcom the detcom to set
     */
    public void setDetcom(int detcom) {
        this.detcom = detcom;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the com
     */
    public int getCom() {
        return com;
    }

    /**
     * @param com the com to set
     */
    public void setCom(int com) {
        this.com = com;
    }
}
