/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Combo {
    private int comb;
    private String nom;
    private double precio;
    private String descr;

    public Combo() {
    }

    public Combo(String nom, double precio, String descr) {
        this.nom = nom;
        this.precio = precio;
        this.descr = descr;
    }
    
    

    public Combo(int comb, String nom, double precio, String descr) {
        this.comb = comb;
        this.nom = nom;
        this.precio = precio;
        this.descr = descr;
    }
    
    

    /**
     * @return the comb
     */
    public int getComb() {
        return comb;
    }

    /**
     * @param comb the comb to set
     */
    public void setComb(int comb) {
        this.comb = comb;
    }

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
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
