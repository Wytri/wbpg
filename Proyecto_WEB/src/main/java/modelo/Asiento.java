
package modelo;

public class Asiento {
    private int asiento;
    private String tipoa;
    private String sala;

    public Asiento() {
    }

    public Asiento(int asiento, String tipoa, String sala) {
        this.asiento = asiento;
        this.tipoa = tipoa;
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

    /**
     * @return the tipoa
     */
    public String getTipoa() {
        return tipoa;
    }

    /**
     * @param tipoa the tipoa to set
     */
    public void setTipoa(String tipoa) {
        this.tipoa = tipoa;
    }

    
    
}
