/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Trabajadores {
    public String id;
    public String nom; 
    public String ape;
    public String fh;

    public Trabajadores() {
    }

    public Trabajadores(String id, String nom, String ape, String fh) {
        this.id = id;
        this.nom = nom;
        this.ape = ape;
        this.fh = fh;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
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
     * @return the ape
     */
    public String getApe() {
        return ape;
    }

    /**
     * @param ape the ape to set
     */
    public void setApe(String ape) {
        this.ape = ape;
    }

    /**
     * @return the fh
     */
    public String getFh() {
        return fh;
    }

    /**
     * @param fh the fh to set
     */
    public void setFh(String fh) {
        this.fh = fh;
    }
    
    
}
