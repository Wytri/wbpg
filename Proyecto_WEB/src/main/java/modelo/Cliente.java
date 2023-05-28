
package modelo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Cliente {
    private int dni;
    private String nombre;
    private String apellido;
    private String birth;
    private String correo;
    private String tel;

    public Cliente() {
    }
    
    public Cliente(int dni) {
        this.dni = dni;
    }
    
    public Cliente(int dni, String nombre, String apellido, String birth, String correo, String tel) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellido = apellido;
        this.birth = birth;
        this.correo = correo;
        this.tel = tel;
    }

    public int edad() throws ParseException{
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            
        Calendar cal = null;
        Date date = (Date)formato.parse(birth); 
        cal=Calendar.getInstance();
        cal.setTime(date);
            
        return cal.get(Calendar.YEAR);
    }
    
    public String print(){
        String cad="\n Nombre: "+getNombre()+"\n DNI: "+getDni()+"\n Apellido: "+getApellido()+"\n Edad: "+getTel();
        return cad;
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
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the birth
     */
    public String getBirth() {
        return birth;
    }

    /**
     * @param birth the birth to set
     */
    public void setBirth(String birth) {
        this.birth = birth;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

}
