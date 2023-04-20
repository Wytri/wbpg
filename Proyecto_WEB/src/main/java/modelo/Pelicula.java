
package modelo;

public class Pelicula {
    public String idpeli;
    public String idcad;
    public String nom;
    public double duracion;
    public double costo;

    public Pelicula() {
    }

    public Pelicula(String idcad, String nom, double duracion, double costo) {
        this.idcad = idcad;
        this.nom = nom;
        this.duracion = duracion;
        this.costo = costo;
    }

    public Pelicula(String idpeli, String idcad, String nom, double duracion, double costo) {
        this.idpeli = idpeli;
        this.idcad = idcad;
        this.nom = nom;
        this.duracion = duracion;
        this.costo = costo;
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
   
}
