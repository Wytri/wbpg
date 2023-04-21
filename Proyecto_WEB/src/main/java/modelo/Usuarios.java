
package modelo;


public class Usuarios {
    private String user;
    private String pssw;

    public Usuarios() {
    }

    public Usuarios(String user, String pssw) {
        this.user = user;
        this.pssw = pssw;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the pssw
     */
    public String getPssw() {
        return pssw;
    }

    /**
     * @param pssw the pssw to set
     */
    public void setPssw(String pssw) {
        this.pssw = pssw;
    }
   
    
}
