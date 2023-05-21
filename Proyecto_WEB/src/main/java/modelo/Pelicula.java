
package modelo;

public class Pelicula {
    public String idpeli;
    public String idcad;
    public String nom;
    public int annio;
    public double duracion;
    public double costo;
    public String clasificacio;
    public String sinop;

    public Pelicula() {
    }

    public Pelicula(String idpeli, String idcad, String nom, int annio, double duracion, double costo, String clasificacio, String sinop) {
        this.idpeli = idpeli;
        this.idcad = idcad;
        this.nom = nom;
        this.annio = annio;
        this.duracion = duracion;
        this.costo = costo;
        this.clasificacio = clasificacio;
        this.sinop = sinop;
    }

    

    public String print(){
        String cad="\nID: "+getIdpeli()+"\nID: "+getIdcad()+"\n Nombre: "+getNom()+"\n Duracion: "+getDuracion()+"\n Costo: "+getCosto();
        return cad;
    }

    /**
     * @return the idpeli
     */
    public String getIdpeli() {
        return idpeli;
    }

    /**
     * @param idpeli the idpeli to set
     */
    public void setIdpeli(String idpeli) {
        this.idpeli = idpeli;
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
     * @return the duracion
     */
    public double getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(double duracion) {
        this.duracion = duracion;
    }

    /**
     * @return the costo
     */
    public double getCosto() {
        return costo;
    }

    /**
     * @param costo the costo to set
     */
    public void setCosto(double costo) {
        this.costo = costo;
    }

    /**
     * @return the idcad
     */
    public String getIdcad() {
        return idcad;
    }

    /**
     * @param idcad the idcad to set
     */
    public void setIdcad(String idcad) {
        this.idcad = idcad;
    }

    /**
     * @return the annio
     */
    public int getAnnio() {
        return annio;
    }

    /**
     * @param annio the annio to set
     */
    public void setAnnio(int annio) {
        this.annio = annio;
    }

    /**
     * @return the sinop
     */
    public String getSinop() {
        return sinop;
    }

    /**
     * @param sinop the sinop to set
     */
    public void setSinop(String sinop) {
        this.sinop = sinop;
    }

    /**
     * @return the clasificacio
     */
    public String getClasificacio() {
        return clasificacio;
    }

    /**
     * @param clasificacio the clasificacio to set
     */
    public void setClasificacio(String clasificacio) {
        this.clasificacio = clasificacio;
    }
   
}
