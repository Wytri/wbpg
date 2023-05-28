
package modelo;

public class PeliCate {
    private String codc;
    private String nomec;
    private String codp;
    private String nomp;
    private double dur;
    private double cost;

    public PeliCate() {
    }

    public PeliCate(String codc, String nomec, String codp, String nomp, double dur, double cost) {
        this.codc = codc;
        this.nomec = nomec;
        this.codp = codp;
        this.nomp = nomp;
        this.dur = dur;
        this.cost = cost;
    }

    /**
     * @return the codc
     */
    public String getCodc() {
        return codc;
    }

    /**
     * @param codc the codc to set
     */
    public void setCodc(String codc) {
        this.codc = codc;
    }

    /**
     * @return the nomec
     */
    public String getNomec() {
        return nomec;
    }

    /**
     * @param nomec the nomec to set
     */
    public void setNomec(String nomec) {
        this.nomec = nomec;
    }

    /**
     * @return the codp
     */
    public String getCodp() {
        return codp;
    }

    /**
     * @param codp the codp to set
     */
    public void setCodp(String codp) {
        this.codp = codp;
    }

    /**
     * @return the nomp
     */
    public String getNomp() {
        return nomp;
    }

    /**
     * @param nomp the nomp to set
     */
    public void setNomp(String nomp) {
        this.nomp = nomp;
    }

    /**
     * @return the dur
     */
    public double getDur() {
        return dur;
    }

    /**
     * @param dur the dur to set
     */
    public void setDur(double dur) {
        this.dur = dur;
    }

    /**
     * @return the cost
     */
    public double getCost() {
        return cost;
    }

    /**
     * @param cost the cost to set
     */
    public void setCost(double cost) {
        this.cost = cost;
    }
    
    
    
}
