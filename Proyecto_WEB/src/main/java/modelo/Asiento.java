
package modelo;

public class Asiento {
    public int asiento;
    public String sala;

    public Asiento() {
    }

    public Asiento(int asiento, String sala) {
        this.asiento = asiento;
        this.sala = sala;
    }

    /**
     * @return the asiento
     */
    public int getAsiento() {
        return asiento;
    }

    /**
     * @param asiento the asiento to set
     */
    public void setAsiento(int asiento) {
        this.asiento = asiento;
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
