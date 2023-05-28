/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 *
 * @author henry
 */
public class Trabajadores {
    private String id;
    private String nom; 
    private String ape;
    private String fh;

    public Trabajadores() {
    }

    public Trabajadores(String id, String nom, String ape, String fh) {
        this.id = id;
        this.nom = nom;
        this.ape = ape;
        this.fh = fh;
    }
    
    public Trabajadores(String nom, String ape, String fh) {
        this.nom = nom;
        this.ape = ape;
        this.fh = fh;
    }
    
    public int edad() throws ParseException{
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            
        Calendar cal = null;
        Date date = (Date)formato.parse(fh); 
        cal=Calendar.getInstance();
        cal.setTime(date);
            
        Calendar fecha = new GregorianCalendar(); 
        int annio = fecha. get(Calendar. YEAR);
        
        return annio - cal.get(Calendar.YEAR);
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
