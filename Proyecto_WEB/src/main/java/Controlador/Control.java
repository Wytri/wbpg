
package Controlador;
import Interfaz.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.*;
import SQL.*;
import java.sql.CallableStatement;

public class Control implements IControl{

    @Override
    public List<Asiento> lisasi() {
        List<Asiento> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Asiento";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Asiento a=new Asiento();
                a.setAsiento(rs.getInt(1));
                a.setTipoa(rs.getString(2));
                a.setSala(rs.getString(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    @Override
    public List<Asiento> lisasibus(String cod) {
        List<Asiento> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from Asiento where Sala_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Asiento a=new Asiento();
                a.setAsiento(rs.getInt(1));
                a.setTipoa(rs.getString(2));
                a.setSala(rs.getString(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }

    @Override
    public List<Boleto> lisbole() {
        List<Boleto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Boleta";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Boleto a=new Boleto();
                a.setBoleta(rs.getString(1));
                a.setDetalle(rs.getInt(2));
                a.setDni(rs.getInt(3));
                a.setPago(rs.getDouble(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;   
    }

    @Override
    public List<Cliente> liscli() {
        List<Cliente> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Cliente";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Cliente a=new Cliente();
                a.setDni(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setApellido(rs.getString(3));
                a.setBirth(rs.getString(4));
                a.setCorreo(rs.getString(5));
                a.setTel(rs.getString(6));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Pelicula> lispe() {
        List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setAnnio(rs.getInt(4));
                a.setDuracion(rs.getDouble(5));
                a.setCosto(rs.getDouble(6));
                a.setClasificacio(rs.getString(7));
                a.setSinop(rs.getString(8));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Sala> lisala() {
        List<Sala> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Sala";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Sala a=new Sala();
                a.setSala(rs.getString(1));
                a.setCapacidad(rs.getInt(2));
                a.setTipo(rs.getString(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public List<Categoria> liscat() {
        List<Categoria> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Categoria";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Categoria a=new Categoria();
                a.setId(rs.getString(1));
                a.setName(rs.getString(2));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    //buscar pelicula por categoria
    @Override
    public List<Pelicula> lispeli(String ID) {
       List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula where Categoria_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setAnnio(rs.getInt(4));
                a.setDuracion(rs.getDouble(5));
                a.setCosto(rs.getDouble(6));
                a.setClasificacio(rs.getString(7));
                a.setSinop(rs.getString(8));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    @Override
    public List<Funciones> lisSalaF(String ID) {
       List<Funciones> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Funciones f where f.IdPelicula=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Funciones a=new Funciones();
                a.setFuncion(rs.getInt(1));
                a.setInicio(rs.getString(2));
                a.setPeli(rs.getString(3));
                a.setSala(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    @Override
    public void crearDetalleCombo(int id, int cant){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into DetalleCombos (IdCombo, Cantidad) values (?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, id);
            st.setInt(2, cant);
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public DetalleCombo busDetCombo(){
        DetalleCombo a=null;
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select TOP 1 * from DetalleCombos ORDER BY IdDetalleCombo DESC";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                a=new DetalleCombo();
                a.setDetcom(rs.getInt(1));
                a.setCom(rs.getInt(2));
                a.setCantidad(rs.getInt(3));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return a;
    }
    
    @Override
    public void crearDetalleProducto(int id, int cant){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into DetalleProducto (IdProducto, Cantidad) values (?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, id);
            st.setInt(2, cant);
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public DetalleProducto busDetProdu(){
        DetalleProducto a=null;
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select TOP 1 * from DetalleProducto ORDER BY IdDetalleProducto DESC";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                a=new DetalleProducto();
                a.setDetprod(rs.getInt(1));
                a.setProd(rs.getInt(2));
                a.setCant(rs.getInt(3));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return a;
    }
    
    @Override
    public Ordenes busOrden(){
        Ordenes a=null;
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select TOP 1 IdOrden from Ordenes ORDER BY IdOrden DESC";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                a=new Ordenes();
                a.setOrden(rs.getInt(1));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return a;
    }
    
    @Override
    public void addOrden(Ordenes o){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Ordenes values (?,?,?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, o.getOrden());
            st.setInt(2, o.getDetcom());
            st.setInt(3, o.getDetprod());
            st.setDouble(4, o.getTotal());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public void addOrdenSinCom(Ordenes o){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Ordenes (IdOrden,IdDetalleProducto,total) values (?,?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, o.getOrden());
            st.setInt(2, o.getDetprod());
            st.setDouble(3, o.getTotal());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public void addOrdenSinPro(Ordenes o){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Ordenes (IdOrden,IdDetalleCombo,total) values (?,?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, o.getOrden());
            st.setInt(2, o.getDetcom());
            st.setDouble(3, o.getTotal());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public void addOrdenVacia(Ordenes o){
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Ordenes (IdOrden,total) values (?,?)";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, o.getOrden());
            st.setDouble(2, o.getTotal());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    /////////////////////////////HORARIOOOOOOOOOOOOOOOOOS//////////////////////////////////////////////
    public Funciones Horario(String ID) {
       Funciones a=null;
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select HoraInicio from Funciones where IdFuncion=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                a=new Funciones();
                a.setInicio(rs.getString(1));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return a;
    }
    ///////////////////////////////////////////////////////////////////////////
    
    //buscar especifico
    @Override
    public List<Pelicula> buspel(String ID) {
       List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula where Pelicula_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setAnnio(rs.getInt(4));
                a.setDuracion(rs.getDouble(5));
                a.setCosto(rs.getDouble(6));
                a.setClasificacio(rs.getString(7));
                a.setSinop(rs.getString(8));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    
    
    public ArrayList<Pelicula> buscarP(String cod) {
        ArrayList<Pelicula> com = new ArrayList();
            for(Pelicula x: lispe()){
                if(cod.equals(x.getIdpeli())){
                    System.out.println(""+x.getIdpeli()+x.getIdcad()+x.getNom()+x.getCosto()+x.getDuracion());
                    com.add(new Pelicula(x.getIdpeli(),x.getIdcad(),x.getNom(),x.getAnnio(),x.getDuracion(),x.getCosto(),x.getClasificacio(),x.getSinop()));
                break;
         }
             
    }return com;
    }
    
    public ArrayList<Categoria> buscarCat(String cod) {
        ArrayList<Categoria> com = new ArrayList();
             for(Categoria x: liscat()){
            if(cod.equals(x.getId())){
                 com.add(new Categoria(x.getId(),x.getName()));
                 break;
         }
             
    }return com;
    }
    
    public ArrayList<Cliente> buscarC(int cod) {
        ArrayList<Cliente> com = new ArrayList();
             for(Cliente x: liscli()){
            if(cod==x.getDni()){
                com.add(new Cliente(x.getDni(), x.getNombre(), x.getApellido(), x.getBirth(),x.getCorreo(),x.getTel()));
                 break;
         }
             
    }return com;
    }

    @Override
    public void addasi(Asiento a) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDAsiento(?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, a.getAsiento());
            st.setString(2, a.getTipoa());
            st.setString(3, a.getSala());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
     public List<Boleto> codsbole() {
        List<Boleto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Boleto a=new Boleto();
                a.setBoleta(rs.getString(1));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public void addbol(Boleto b) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDBoleta(?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, b.getDetalle());
            st.setInt(2, b.getDni());
            st.setDouble(3, b.getPago());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
    @Override
    public void adddeta(Detalle d) {
        Connection cn=SQLConexion.getConexion();
        try{
                String sql="{call addDetalle(?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, d.getFuncion());
            st.setInt(2, d.getAsi());
            st.setInt(3, d.getOrden());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
    @Override
    public void addbbb(Boleto p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Boleta values(?,?,?,?)";
            //CallableStatement st=cn.prepareCall(sql);
            PreparedStatement st=cn.prepareStatement(sql);
            //ResultSet rs=st.executeQuery();
            //while(rs.next()){
            st.setString(1, p.getBoleta());
            st.setInt(2, p.getDetalle());
            st.setInt(3, p.getDni());
            st.setDouble(4, p.getPago());
            st.executeUpdate();
               
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    

    @Override
    public void addcli(Cliente c) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call adddCliente(?,?,?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, c.getDni());
            st.setString(2, c.getNombre());
            st.setString(3, c.getApellido());
            st.setString(4, c.getBirth());
            st.setString(5, c.getCorreo());
            st.setString(6, c.getTel());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addpeli(Pelicula p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDPelicula(?,?,?,?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, p.getIdcad());
            st.setString(2, p.getNom());
            st.setInt(3, p.getAnnio());
            st.setDouble(4, p.getDuracion());
            st.setDouble(5, p.getCosto());
            st.setString(6, p.getClasificacio());
            st.setString(7, p.getSinop());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addsala(Sala s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modasi(Asiento a) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modbol(Boleto b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modcli(Cliente c) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="UPDATE Cliente SET Cliente_name=?,Cliente_lastname=?, Cliente_date=?, CorreoElectronico=?, Telefono=? WHERE Cliente_id=?";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, c.getNombre());
            st.setString(2, c.getApellido());
            st.setString(3, c.getBirth());
            st.setString(4, c.getCorreo());
            st.setString(5, c.getTel());
            st.setInt(6, c.getDni());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void modpeli(Pelicula p) {
        Connection cn=SQLConexion.getConexion();
        try {    
            String id=p.getIdpeli();
            String sql="UPDATE Pelicula SET Categoria_id=?, Pelicula_name=?, Pelicula_annio=?, Pelicula_duracion=?, Pelicula_costo=?, Clasificacion=?, Sinopsis=? WHERE Pelicula_id='"+id+"'";
            PreparedStatement ps=cn.prepareStatement(sql);
            
            ps.setString(1, p.getIdcad());
            ps.setString(2, p.getNom());
            ps.setInt(3, p.getAnnio());
            ps.setDouble(4, p.getDuracion());
            ps.setDouble(5, p.getCosto());
            ps.setString(6, p.getClasificacio());
            ps.setString(7, p.getSinop());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }

    @Override
    public void modsala(Sala s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delasi(String a) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delbol(String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delcli(String c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delpeli(String p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call DELPeli(?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1,p);
            st.executeUpdate();
            }
            catch(Exception ex){
            ex.printStackTrace();
            }
            finally{
            try {
            cn.close();}

            catch(Exception z){}
        }
    }

    @Override
    public void delsala(String s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<PeliCate> lispelicat() {
        List<PeliCate> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select c.Categoria_id, c.Categoria_name, p.Pelicula_id, p.Pelicula_name, p.Pelicula_duracion, p.Pelicula_costo from Pelicula p, Categoria c where p.Categoria_id=c.Categoria_id";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                PeliCate a=new PeliCate();
                a.setCodc(rs.getString(1));
                a.setNomec(rs.getString(2));
                a.setCodp(rs.getString(3));
                a.setNomp(rs.getString(4));
                a.setDur(rs.getDouble(5));
                a.setCost(rs.getDouble(6));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Usuarios> lisusu() {
        List<Usuarios> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from usuarios";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Usuarios a=new Usuarios();
                a.setId(rs.getString(1));
                a.setUser(rs.getString(2));
                a.setPssw(rs.getString(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    
    }
    
    ////////////////////////////////////////////////////////////Busca usuarios
    public Usuarios busUsuarios(String ID) {
        Usuarios a=null;
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Usuarios where usuarios_nombre=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                a=new Usuarios();
                a.setId(rs.getString(1));
                a.setUser(rs.getString(2));
                a.setPssw(rs.getString(3));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return a;    
    }
////////////////////////////////////////////////////////////Busca usuarios
    @Override
    public List<Trabajadores> listra() {
        List<Trabajadores> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Trabajadores";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Trabajadores a = new Trabajadores();
                a.setId(rs.getString(1));
                a.setNom(rs.getString(2));
                a.setApe(rs.getString(3));
                a.setFh(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Combo> liscom() {
        List<Combo> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Combos";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Combo a = new Combo();
                a.setComb(rs.getInt(1));
                a.setNom(rs.getString(2));
                a.setPrecio(rs.getDouble(3));
                a.setDescr(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public List<Combo> busCombos(int ID) {
       List<Combo> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Combos where IdCombo=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Combo a=new Combo();
                a.setComb(rs.getInt(1));
                a.setNom(rs.getString(2));
                a.setPrecio(rs.getDouble(3));
                a.setDescr(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    @Override
    public List<Productos> busProductos(int ID) {
       List<Productos> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Productos where IdProducto=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Productos a=new Productos();
                a.setProd(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setPrecio(rs.getDouble(3));
                a.setDescr(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    @Override
    public void addCombo(Combo p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="INSERT INTO Combos values (?,?,?)";
            CallableStatement st=cn.prepareCall(sql);
            
            st.setString(1, p.getNom());
            st.setDouble(2, p.getPrecio());
            st.setString(3, p.getDescr());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public void modCombos(Combo p) {
        Connection cn=SQLConexion.getConexion();
        try {    
            int id=p.getComb();
            String sql="UPDATE Combos SET NombreCombo=?, Precio=?, Descripcion=? WHERE IdCombo="+id;
            PreparedStatement ps=cn.prepareStatement(sql);
            
            ps.setString(1, p.getNom());
            ps.setDouble(2, p.getPrecio());
            ps.setString(3, p.getDescr());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    
    @Override
    public void modProductos(Productos p) {
        Connection cn=SQLConexion.getConexion();
        try {    
            int id=p.getProd();
            String sql="UPDATE Productos SET NombreProducto=?, Precio=?, Descripcion=? WHERE IdProducto="+id;
            PreparedStatement ps=cn.prepareStatement(sql);
            
            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setString(3, p.getDescr());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }

    @Override
    public List<Productos> lisprod() {
        List<Productos> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from Productos";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Productos a = new Productos();
                a.setProd(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setPrecio(rs.getDouble(3));
                a.setDescr(rs.getString(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public void addProducto(Productos p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="INSERT INTO Productos values (?,?,?)";
            CallableStatement st=cn.prepareCall(sql);
            
            st.setString(1, p.getNombre());
            st.setDouble(2, p.getPrecio());
            st.setString(3, p.getDescr());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
    }
    

    @Override
    public List<DetalleCombo> lisdetcom(int cod) {
        List<DetalleCombo> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from DetalleCombos where IdCombo=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                DetalleCombo a=new DetalleCombo();
                a.setDetcom(rs.getInt(1));
                a.setCom(rs.getInt(2));
                a.setCantidad(rs.getInt(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }

    @Override
    public List<DetalleProducto> lisdetpre(int cod) {
        List<DetalleProducto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from DetalleProducto where IdProducto=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                DetalleProducto a=new DetalleProducto();
                a.setDetprod(rs.getInt(1));
                a.setProd(rs.getInt(2));
                a.setCant(rs.getInt(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }

    @Override
    public List<Boleto> lisboleta(int cod) {
        List<Boleto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select Boleta_id,IdDetalle,Boleta_pago FROM Boleta where DNI=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Boleto a=new Boleto();
                a.setBoleta(rs.getString(1));
                a.setDetalle(rs.getInt(2));
                a.setPago(rs.getInt(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;   
    }

    @Override
    public List<Detalle> lisdeta(int i) {
        List<Detalle> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * FROM Detalle where IdDetalle=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, i);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Detalle a=new Detalle();
                a.setDetalle(rs.getInt(1));
                a.setFuncion(rs.getInt(2));
                a.setSala(rs.getString(3));
                a.setAsi(rs.getInt(4));
                a.setOrden(rs.getInt(5));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Pelicula> listadetafun(int i) {
        List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select f.IdFuncion,f.HoraInicio, f.IdSala,d.Asiento_id,p.Pelicula_name, d.IdOrden "
                    + "from Detalle d, Funciones f, Pelicula p "
                    + "where p.Pelicula_id=f.IdPelicula and d.IdFuncion=f.IdFuncion "
                    + "and d.IdDetalle=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, i);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setFuncion(rs.getInt(1));
                a.setInicio(rs.getString(2));
                a.setSala(rs.getString(3));
                a.setAsi(rs.getInt(4));
                a.setNom(rs.getString(5));
                a.setOrden(rs.getInt(6));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<DetalleComida> listadetalleorden(int i) {
        List<DetalleComida> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="SELECT o.IdOrden, c.NombreCombo,do.Cantidad, p.NombreProducto, dp.Cantidad, o.Total "
                    + "FROM Ordenes o "
                    + "LEFT JOIN DetalleProducto dp ON o.IdDetalleProducto = dp.IdDetalleProducto "
                    + "LEFT JOIN DetalleCombos do ON o.IdDetalleCombo = do.IdDetalleCombo "
                    + "LEFT JOIN Combos c ON do.IdCombo = c.IdCombo "
                    + "LEFT JOIN Productos p ON dp.IdProducto = p.IdProducto "
                    + "WHERE o.IdOrden =?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, i);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                DetalleComida a=new DetalleComida();
                a.setOrden(rs.getInt(1));
                a.setCombo(rs.getString(2));
                a.setCantc(rs.getInt(3));
                a.setProd(rs.getString(4));
                a.setCantp(rs.getInt(5));
                a.setPago(rs.getDouble(6));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public void modtrabajadores(Trabajadores t) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="update Trabajadores set Trabajadores_nombre=?, Trabajadores_apellido=?, Trabajadores_fecha_nacimiento=? where Trabajadores_id=?";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, t.getNom());
            st.setString(2, t.getApe());
            st.setString(3, t.getFh());
            st.setString(4, t.getId());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void modusuario(Usuarios u) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="update Usuarios set usuarios_nombre=?, usuarios_pssw=? where usuarios_id=?";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, u.getUser());
            st.setString(2, u.getPssw());
            st.setString(3, u.getId());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
    @Override
    public List<Usuarios> coduser() {
        List<Usuarios> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select 'T'+right('00000'+convert(varchar,isnull(Max(right(Trabajadores_id,4)),0)+1),4) from Trabajadores";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
               Usuarios a=new Usuarios();
                a.setId(rs.getString(1));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public void addtrabajador(Trabajadores p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDTrabajadores (?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, p.getNom());
            st.setString(2, p.getApe());
            st.setString(3, p.getFh());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addusuario(Usuarios usrs) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call ADDUser (?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, usrs.getId());
            st.setString(2, usrs.getUser());
            st.setString(3, usrs.getPssw());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void deltrab(String c) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="delete Trabajadores where Trabajadores_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, c);
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void deluser(String c) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="delete Usuarios where usuarios_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, c);
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public List<grafico> graficopelicula() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GPELI}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;    
    }

    @Override
    public List<grafico> graficocategoria() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GCATE}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficocombo() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GCOMBO}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficoproducto() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GPROD}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficosala() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GSALA}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficomes() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GMES}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficoannio() {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GANNIO}";
            CallableStatement st=cn.prepareCall(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }

    @Override
    public List<grafico> graficomesa(int i) {
        List<grafico> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call GMESA(?)}";
            CallableStatement st=cn.prepareCall(sql);            
            st.setInt(1,i);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                grafico a=new grafico();
                a.setNombre(rs.getString(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}
        }
        return lis;
    }
    
      //listado de todas las funciones
    @Override
    public List<Funciones> lisfun() {
        List<Funciones> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Funciones";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Funciones f=new Funciones();
                f.setFuncion(rs.getInt(1));
                f.setInicio(rs.getString(2));
                f.setPeli(rs.getString(3));
                f.setSala(rs.getString(4));
                lis.add(f);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    
    //busca el # asiento ocupados por función
    @Override
        public List<Detalle> lisasifun(int cod) {
        List<Detalle> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Detalle where IdFuncion=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Detalle a=new Detalle();
                a.setDetalle(rs.getInt(1));
                a.setFuncion(rs.getInt(2));
                a.setAsi(rs.getInt(3));
                a.setOrden(rs.getInt(3));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
        
    //buscar pelicula por ID
    @Override
    public List<Pelicula> lispeUni(String ID) {
       List<Pelicula> lis = new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula where Pelicula_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setAnnio(rs.getInt(4));
                a.setDuracion(rs.getDouble(5));
                a.setCosto(rs.getDouble(6));
                a.setClasificacio(rs.getString(7));
                a.setSinop(rs.getString(8));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
        //busca el # asiento ocupados por función
        @Override
        public List<Funciones> lisfunCOD(int cod) {
        List<Funciones> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Funciones where IdFuncion=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Funciones f=new Funciones();
                f.setFuncion(rs.getInt(1));
                f.setInicio(rs.getString(2));
                f.setPeli(rs.getString(3));
                f.setSala(rs.getString(4));
                lis.add(f);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
        
    @Override
    public int[] Asientos_bol(String nombre){
        String[] lista = nombre.split(",",-1);
        
          int[] selected = new int[lista.length]; 
          
          
          
          for (int i = 0; i < lista.length; i++) {
              
              if(lista.length==1){
                selected[i]=Integer.parseInt(lista[i].substring(1,lista[i].length()-1));
            }else{
                if(i==0){
                    selected[i]=Integer.parseInt(lista[i].substring(1,lista[i].length()));
                }else{
                    if(i==lista.length-1){
                        selected[i]=Integer.parseInt(lista[i].substring(0,lista[i].length()-1));
                    }else{
                        selected[i]=Integer.parseInt(lista[i]);
                    }
                }
            }
                  
          }
          
        return selected;
    }
    
    
    @Override
    public void addAsiDetBol(int idAsi, String tipoA, String sala, int IdFuncion, int Ord, int DNI, double pago) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call Completa_BOL(?,?,?,?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, idAsi);
            st.setString(2, tipoA);
            st.setString(3, sala);
            st.setInt(4, IdFuncion);
            st.setInt(5, Ord);
            st.setInt(6, DNI);
            st.setDouble(7, pago);
            st.executeUpdate();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
        
}
           
                
