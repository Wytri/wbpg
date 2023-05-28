/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class DetalleComida {
    public int orden;
    public String combo;
    public int cantc;
    public String Prod;
    public int cantp;
    public double pago;

    public DetalleComida(int orden, String combo, int cantc, String Prod, int cantp, double pago) {
        this.orden = orden;
        this.combo = combo;
        this.cantc = cantc;
        this.Prod = Prod;
        this.cantp = cantp;
        this.pago = pago;
    }

    public DetalleComida() {
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
     * @return the combo
     */
    public String getCombo() {
        return combo;
    }

    /**
     * @param combo the combo to set
     */
    public void setCombo(String combo) {
        this.combo = combo;
    }

    /**
     * @return the cantc
     */
    public int getCantc() {
        return cantc;
    }

    /**
     * @param cantc the cantc to set
     */
    public void setCantc(int cantc) {
        this.cantc = cantc;
    }

    /**
     * @return the Prod
     */
    public String getProd() {
        return Prod;
    }

    /**
     * @param Prod the Prod to set
     */
    public void setProd(String Prod) {
        this.Prod = Prod;
    }

    /**
     * @return the cantp
     */
    public int getCantp() {
        return cantp;
    }

    /**
     * @param cantp the cantp to set
     */
    public void setCantp(int cantp) {
        this.cantp = cantp;
    }

    /**
     * @return the pago
     */
    public double getPago() {
        return pago;
    }

    /**
     * @param pago the pago to set
     */
    public void setPago(double pago) {
        this.pago = pago;
    }
}
