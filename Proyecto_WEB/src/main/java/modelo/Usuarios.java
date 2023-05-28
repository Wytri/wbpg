
package modelo;


public class Usuarios {
    private String id;
    private String user;
    private String pssw;

    public Usuarios() {
    }

    public Usuarios(String id, String user, String pssw) {
        this.id = id;
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

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }
   
    
}
