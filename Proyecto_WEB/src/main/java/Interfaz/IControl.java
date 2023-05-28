
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
    List<Usuarios> lisusu();
    List<Trabajadores> listra();
    List<Combo> liscom();
    List<Productos> lisprod();
    List<DetalleCombo> lisdetcom(int cod);
    List<DetalleProducto> lisdetpre(int cod);
    List<Boleto> lisboleta(int cod);
    List<Detalle> lisdeta(int cod);
    List<Pelicula> listadetafun(int cod);
    List<DetalleComida> listadetalleorden(int cod);
    
    void addasi(Asiento a);
    void addbol(Boleto b);
    void addcli(Cliente c);
    void addpeli(Pelicula p);
    void addsala(Sala s);
    void addtrabajador(Trabajadores s);
    void addusuario(Usuarios s);
    
    void modasi(Asiento a);
    void modbol(Boleto b);
    void modcli(Cliente c);
    void modpeli(Pelicula p);
    void modsala(Sala s);
    void modtrabajadores(Trabajadores t);
    void modusuario(Usuarios u);
    
    void delasi(String a);
    void delbol(String b);
    void delcli(String c);
    void delpeli(String p);
    void delsala(String s);
    void deltrab(String t);
    void deluser(String u);
}

