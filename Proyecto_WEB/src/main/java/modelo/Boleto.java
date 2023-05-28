
package modelo;

public class Boleto {
    public String boleta;
    public int detalle;
    public int dni;
    public double pago;

    public Boleto() {
    }

    public Boleto(String boleta, int detalle, int dni, double pago) {
        this.boleta = boleta;
        this.detalle = detalle;
        this.dni = dni;
        this.pago = pago;
    }
    
    public Boleto(String boleta, int detalle, double pago) {
        this.boleta = boleta;
        this.detalle = detalle;
        this.pago = pago;
    }

    /**
     * @return the boleta
     */
    public String getBoleta() {
        return boleta;
    }

    /**
     * @param boleta the boleta to set
     */
    public void setBoleta(String boleta) {
        this.boleta = boleta;
    }

    /**
     * @return the detalle
     */
    public int getDetalle() {
        return detalle;
    }

    /**
     * @param detalle the detalle to set
     */
    public void setDetalle(int detalle) {
        this.detalle = detalle;
    }

    /**
     * @return the dni
     */
    public int getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(int dni) {
        this.dni = dni;
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
