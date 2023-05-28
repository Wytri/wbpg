/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Ordenes {
    public int orden;
    public int detcom;
    public int detprod;
    public double total;

    public Ordenes() {
    }

    public Ordenes(int orden, int detcom, int detprod, double total) {
        this.orden = orden;
        this.detcom = detcom;
        this.detprod = detprod;
        this.total = total;
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
     * @return the detprod
     */
    public int getDetprod() {
        return detprod;
    }

    /**
     * @param detprod the detprod to set
     */
    public void setDetprod(int detprod) {
        this.detprod = detprod;
    }

    /**
     * @return the total
     */
    public double getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(double total) {
        this.total = total;
    }
}
