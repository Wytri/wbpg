/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author henry
 */
public class Funciones {
    public int funcion;
    public String inicio;
    public String peli;
    public String sala;

    public Funciones() {
    }

    public Funciones(int funcion, String inicio, String peli, String sala) {
        this.funcion = funcion;
        this.inicio = inicio;
        this.peli = peli;
        this.sala = sala;
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
}
