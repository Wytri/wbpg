
package modelo;

public class Sala {
    private String sala;
    private int capacidad;
    private String tipo;

    public Sala() {
    }

    public Sala(String sala, int capacidad, String tipo) {
        this.sala = sala;
        this.capacidad = capacidad;
        this.tipo = tipo;
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
     * @return the capacidad
     */
    public int getCapacidad() {
        return capacidad;
    }

    /**
     * @param capacidad the capacidad to set
     */
    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

   
}
