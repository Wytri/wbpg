
package Interfaz;

import java.util.List;
import modelo.*;


public interface IControl {
    //---lis--- --aprox--
    List<Asiento> lisasi();//16
    List<Boleto> lisbole();//65
    List<Cliente> liscli();//90
    List<Pelicula> lispe();//115
    List<Categoria> liscat();//170
    List<Sala> lisala();//146    
    List<PeliCate> lispelicat();//755
    List<Usuarios> lisusu();//782
    List<Trabajadores> listra();//831
    List<Combo> liscom();//856
    List<Productos> lisprod();//991
    List<Funciones> lisfun();//1515
    DetalleCombo busDetCombo();//266
    DetalleProducto busDetProdu();//305
    Ordenes busOrden();//328
    List<Boleto> codsbole();//525
    List<Pelicula> lispeli(String ID);//194
    List<Asiento> lisasibus(String cod);//40
    List<Funciones> lisSalaF(String ID);//224
    List<Pelicula> buspel(String ID);//441
    List<Pelicula> lispeUni(String ID);//1569
    List<Usuarios> coduser();//1239
    List<Productos> busProductos(int ID);//907
    List<Combo> busCombos(int ID);//881
    List<DetalleCombo> lisdetcom(int cod);//1035
    List<DetalleProducto> lisdetpre(int cod);//1060
    List<Boleto> lisboleta(int cod);//1085
    List<Detalle> lisdeta(int cod);//1110
    List<Pelicula> listadetafun(int cod);//1137
    List<DetalleComida> listadetalleorden(int cod);//1168
    List<Funciones> lisfunCOD(int cod);//1600
    List<Detalle> lisasifun(int cod);//1542
    
    void addasi(Asiento a);//507
    void addbol(Boleto b);//547
    void addcli(Cliente c);//607
    void addpeli(Pelicula p);//628
    void addsala(Sala s);//650
    void adddeta(Detalle d);//565
    void addtrabajador(Trabajadores s);//1261
    void addusuario(Usuarios s);//1279
    void addOrden(Ordenes o);//349
    void addOrdenSinCom(Ordenes o);//367
    void addOrdenSinPro(Ordenes o);//384
    void addOrdenVacia(Ordenes o);//401
    void addbbb(Boleto p);//583
    void addCombo(Combo p);//933
    void addProducto(Productos p);//1016
    
    void modasi(Asiento a);//655
    void modbol(Boleto b);//660
    void modcli(Cliente c);//665
    void modpeli(Pelicula p);//686
    void modsala(Sala s);//710
    void modtrabajadores(Trabajadores t);//1202
    void modusuario(Usuarios u);//1221
    void modCombos(Combo p);//951
    void modProductos(Productos p);//971
    
    void delasi(String a);//715
    void delbol(String b);//720
    void delcli(String c);//725
    void delpeli(String p);//730
    void delsala(String s);//750
    void deltrab(String t);//1297
    void deluser(String u);//1313
    
    int[] Asientos_bol(String nombre);//1626
    void crearDetalleCombo(int id, int cant);//250
    void crearDetalleProducto(int id, int cant);//289
    void addAsiDetBol(int idAsi, String tipoA, String sala, int IdFuncion, int Ord, int DNI, double pago);//1656
    
    List<grafico> graficopelicula();//1329
    List<grafico> graficocategoria();//1352
    List<grafico> graficocombo();//1375
    List<grafico> graficoproducto();//1398
    List<grafico> graficosala();//1421
    List<grafico> graficomes();//1444
    List<grafico> graficoannio();//1467
    
    List<grafico> graficomesa(int an);//1490
}

