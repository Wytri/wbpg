/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class DetalleProducto {
    public int detprod;
    public int prod;
    public int cant;
    
    public String nombre;
    public double total;

    public DetalleProducto() {
    }

    public DetalleProducto(int detprod, int prod, int cant) {
        this.detprod = detprod;
        this.prod = prod;
        this.cant = cant;
    }

    public DetalleProducto(int cant, String nombre, double total) {
        this.cant = cant;
        this.nombre = nombre;
        this.total = total;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
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
     * @return the prod
     */
    public int getProd() {
        return prod;
    }

    /**
     * @param prod the prod to set
     */
    public void setProd(int prod) {
        this.prod = prod;
    }

    /**
     * @return the cant
     */
    public int getCant() {
        return cant;
    }

    /**
     * @param cant the cant to set
     */
    public void setCant(int cant) {
        this.cant = cant;
    }
    
    
}
