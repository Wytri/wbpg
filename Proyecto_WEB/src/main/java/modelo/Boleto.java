
package modelo;

public class Boleto {
    public String cod;
    public int dni;
    public int idasiento;
    public String idsala;
    public String idpeli;
    public String fecha;
    public double pago;

    public Boleto() {
    }

    public Boleto(String cod) {
        this.cod = cod;
    }
    
    public Boleto(int dni, int idasiento, String idsala, String idpeli, String fecha, double pago) {
        this.dni = dni;
        this.idasiento = idasiento;
        this.idsala = idsala;
        this.idpeli = idpeli;
        this.fecha = fecha;
        this.pago = pago;
    }

    public Boleto(String cod, int dni, int idasiento, String idsala, String idpeli, String fecha, double pago) {
        this.cod = cod;
        this.dni = dni;
        this.idasiento = idasiento;
        this.idsala = idsala;
        this.idpeli = idpeli;
        this.fecha = fecha;
        this.pago = pago;
    }
    
    

    /**
     * @return the idasiento
     */
    public int getIdasiento() {
        return idasiento;
    }

    /**
     * @param idasiento the idasiento to set
     */
    public void setIdasiento(int idasiento) {
        this.idasiento = idasiento;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the cod
     */
    public String getCod() {
        return cod;
    }

    /**
     * @param cod the cod to set
     */
    public void setCod(String cod) {
        this.cod = cod;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(int dni) {
        this.dni = dni;
    }

    /**
     * @return the dni
     */
    public int getDni() {
        return dni;
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
     * @return the idsala
     */
    public String getIdsala() {
        return idsala;
    }

    /**
     * @param idsala the idsala to set
     */
    public void setIdsala(String idsala) {
        this.idsala = idsala;
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
