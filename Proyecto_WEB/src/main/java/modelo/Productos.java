/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Productos {
    public int prod;
    public String nombre;
    public double precio;
    public String descr;

    public Productos() {
    }

    public Productos(String nombre, double precio, String descr) {
        this.nombre = nombre;
        this.precio = precio;
        this.descr = descr;
    }
    
    

    public Productos(int prod, String nombre, double precio, String descr) {
        this.prod = prod;
        this.nombre = nombre;
        this.precio = precio;
        this.descr = descr;
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
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the precio
     */
    public double getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(double precio) {
        this.precio = precio;
    }

    /**
     * @return the descr
     */
    public String getDescr() {
        return descr;
    }

    /**
     * @param descr the descr to set
     */
    public void setDescr(String descr) {
        this.descr = descr;
    }
}
