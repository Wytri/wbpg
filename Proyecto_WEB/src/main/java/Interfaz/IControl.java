
package Interfaz;

import java.util.List;
import modelo.*;


public interface IControl {
    List<Asiento> lisasi();   
    List<Boleto> lisbole();
    List<Cliente> liscli();
    List<Pelicula> lispe();
    List<Categoria> liscat();
    List<Sala> lisala();
    List<PeliCate> lispelicat();
    
    void addasi(Asiento a);
    void addbol(Boleto b);
    void addcli(Cliente c);
    void addpeli(Pelicula p);
    void addsala(Sala s);
    
    void modasi(Asiento a);
    void modbol(Boleto b);
    void modcli(Cliente c);
    void modpeli(Pelicula p);
    void modsala(Sala s);
    
    void delasi(String a);
    void delbol(String b);
    void delcli(String c);
    void delpeli(String p);
    void delsala(String s);
}

